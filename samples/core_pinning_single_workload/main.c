    // Copyright 2022 The IREE Authors
    //
    // Licensed under the Apache License v2.0 with LLVM Exceptions.
    // See https://llvm.org/LICENSE.txt for license information.
    // SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

    #include <stdio.h>

    // IREE APIs:
    #include "iree/modules/hal/types.h"
    #include "iree/runtime/api.h"

    // [NEW] Headers for manual topology creation
    #include "iree/hal/drivers/local_task/driver.h"
    #include "iree/task/api.h"

    // Custom native module used in the sample.
    #include "module.h"

    // [NEW] Helper to create a device pinned to a specific Core ID
    iree_status_t create_device_on_core(iree_allocator_t host_allocator,
                                        int core_id,
                                        iree_hal_device_t** out_device) {
    // 1. Create a topology mask. 1 << N enables only Core N.
    iree_task_topology_t topology;
    iree_task_topology_initialize(&topology);
    iree_task_topology_initialize_from_mask(&topology, 1ull << core_id);

    iree_hal_task_device_params_t params = iree_hal_task_device_params_default();
    
    // 2. Create the executor (thread pool) pinned to this topology
    iree_task_executor_t* executor = NULL;
    iree_task_executor_options_t options = iree_task_executor_options_default();
    IREE_RETURN_IF_ERROR(iree_task_executor_create(options, &topology, 
                                                    host_allocator, &executor));

    // 3. Create the device using the pinned executor
    return iree_hal_task_device_create(iree_make_cstring_view("custom-pinned-cpu"),
                                        &params, executor, 1, NULL,
                                        host_allocator, out_device);
    }

    int main(int argc, char** argv) {
    // [MODIFIED] Usage check to reflect new behavior
    /*
    if (argc < 2) {
        fprintf(stderr, "Usage: custom-module-async-run <dispatch_0.vmfb> [dispatch_1.vmfb] ...\n");
        return -1;
    }
    */

    iree_allocator_t host_allocator = iree_allocator_system();

    iree_runtime_instance_options_t instance_options;
    iree_runtime_instance_options_initialize(&instance_options);
    iree_runtime_instance_options_use_all_available_drivers(&instance_options);
    iree_runtime_instance_t* instance = NULL;
    IREE_CHECK_OK(iree_runtime_instance_create(&instance_options, host_allocator,
                                                &instance));

    // [NEW] Step 1: PHYSICAL ISOLATION
    // Instead of default device, we force creation on Core 4.
    iree_hal_device_t* device = NULL;
    fprintf(stdout, "Creating device pinned to Core 4...\n");
    IREE_CHECK_OK(create_device_on_core(host_allocator, 4, &device));

    // [REMOVED] The original session creation is moved inside the loop below
    // because we load different VMFBs sequentially.

    // [NEW] Step 2: DATA SETUP (The Baton)
    // We create the initial input buffer here. 
    const int32_t input_data[5] = {1, 2, 3, 4, 5};
    // Note: Adjust shape/type to match your Dispatch 0 input requirements
    // For this example, we keep the original int32 logic, but your Dispatches likely use f32.
    const iree_hal_dim_t shape[1] = {IREE_ARRAYSIZE(input_data)};
    
    iree_hal_buffer_view_t* carrier_buffer = NULL; // This is the "Baton"
    
    IREE_CHECK_OK(iree_hal_buffer_view_allocate_buffer_copy(
        device, // Allocation happens on the pinned device!
        iree_hal_device_allocator(device), IREE_ARRAYSIZE(shape),
        shape, IREE_HAL_ELEMENT_TYPE_INT_32,
        IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,
        (iree_hal_buffer_params_t){
            .type = IREE_HAL_MEMORY_TYPE_DEVICE_LOCAL,
            .access = IREE_HAL_MEMORY_ACCESS_ALL,
            .usage = IREE_HAL_BUFFER_USAGE_DEFAULT,
        },
        iree_make_const_byte_span(input_data, sizeof(input_data)), &carrier_buffer));

    // [NEW] Step 3: THE STATIC SCHEDULE LOOP
    // We iterate over arguments 1..N assuming they are vmfb paths
    // Or simpler: hardcode the sequence here for the test.
    const char* dispatch_files[] = {
        // "dispatch_0.vmfb", // Assuming these exist in your folder
        // "dispatch_1.vmfb", 
        argv[1] // For now, just use the command line arg as the "Loop"
    };
    int num_dispatches = 1; // In reality, 14.

    for (int i = 0; i < num_dispatches; ++i) {
        const char* module_path = dispatch_files[i];
        fprintf(stdout, "--- Executing Dispatch %d: %s ---\n", i, module_path);

        // A. Create Session for this specific Dispatch VMFB
        iree_runtime_session_options_t session_options;
        iree_runtime_session_options_initialize(&session_options);
        iree_runtime_session_t* session = NULL;
        IREE_CHECK_OK(iree_runtime_session_create_with_device(
            instance, &session_options, device,
            iree_runtime_instance_host_allocator(instance), &session));

        // B. Load the Custom Module (Optional, but kept for compatibility)
        iree_vm_module_t* custom_module = NULL;
        IREE_CHECK_OK(iree_custom_module_async_create(
            iree_runtime_instance_vm_instance(instance), device, host_allocator,
            &custom_module));
        IREE_CHECK_OK(iree_runtime_session_append_module(session, custom_module));
        iree_vm_module_release(custom_module);

        // C. Load the Dispatch VMFB
        IREE_CHECK_OK(iree_runtime_session_append_bytecode_module_from_file(
                session, module_path));

        // D. Prepare Call Inputs
        iree_vm_list_t* inputs = NULL;
        IREE_CHECK_OK(iree_vm_list_create(iree_vm_make_undefined_type_def(), 1,
                                            host_allocator, &inputs));
        
        // Pass the baton (Carrier Buffer)
        iree_vm_ref_t buffer_ref = iree_hal_buffer_view_retain_ref(carrier_buffer);
        IREE_CHECK_OK(iree_vm_list_push_ref_move(inputs, &buffer_ref));

        // [NOTE] If your dispatches use the "coarse-fences" ABI, you must create
        // and pass fences here. Assuming "Synchronous" via implicit fences for simplicity 
        // or standard ABI. If Async ABI is enforced, uncomment below:
        /*
        iree_hal_fence_t* fence_null = NULL; // Wait on nothing
        iree_hal_fence_t* fence_signal = NULL;
        // ... create fence_signal ...
        // list_push(inputs, fence_null);
        // list_push(inputs, fence_signal);
        */

        // E. Prepare Outputs
        iree_vm_list_t* outputs = NULL;
        IREE_CHECK_OK(iree_vm_list_create(iree_vm_make_undefined_type_def(), 1,
                                            host_allocator, &outputs));

        // F. Invoke (Synchronous Blocking on Core 4)
        // We use "run" or "main" as the standard entry point name
        fprintf(stdout, "Invoking...\n");
        IREE_CHECK_OK(iree_runtime_session_call_by_name(
            session, iree_make_cstring_view("module.run"), inputs, outputs));

        // G. Catch the Baton (Get Output for next loop)
        iree_hal_buffer_view_release(carrier_buffer); // Release old input
        carrier_buffer = iree_vm_list_get_buffer_view_assign(outputs, 0);
        iree_hal_buffer_view_retain(carrier_buffer); // Retain for next iteration

        // Cleanup Loop State
        iree_vm_list_release(inputs);
        iree_vm_list_release(outputs);
        iree_runtime_session_release(session);
    }

    // [NEW] Final Result Handling
    fprintf(stdout, "Sequence Finished.\n");
    
    // (Optional) Read back result to verify
    int32_t result_data[5] = {0};
    IREE_CHECK_OK(iree_hal_buffer_map_read(
        iree_hal_buffer_view_buffer(carrier_buffer), 0,
        result_data, sizeof(result_data)));
    fprintf(stdout, "Final Result[0]: %d\n", result_data[0]);

    // Final Cleanup
    iree_hal_buffer_view_release(carrier_buffer);
    
    // [MODIFIED] Cleanup original objects
    // iree_hal_fence_release(fence_t1); // Removed as we handle fences inside loop if needed
    // iree_hal_fence_release(fence_t2);
    iree_hal_device_release(device);
    iree_runtime_instance_release(instance);
    return 0;
    }