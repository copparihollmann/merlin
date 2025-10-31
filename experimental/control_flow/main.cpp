#include <iostream>
#include <vector>

#include "iree/runtime/api.h"
#include "iree/modules/hal/types.h"
#include "orchestrator_module.h"

// Helper to create a buffer view from a C++ vector.
iree_status_t create_buffer_view(iree_runtime_session_t* session,
                                  const std::vector<float>& data,
                                  const std::vector<iree_hal_dim_t>& shape,
                                  iree_hal_buffer_view_t** out_view) {
  return iree_hal_buffer_view_allocate_buffer_copy(
      iree_runtime_session_device(session),
      iree_runtime_session_device_allocator(session), shape.size(), shape.data(),
      IREE_HAL_ELEMENT_TYPE_FLOAT_32, IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR,
      (iree_hal_buffer_params_t){
          .type = IREE_HAL_MEMORY_TYPE_DEVICE_LOCAL,
          .usage = IREE_HAL_BUFFER_USAGE_DEFAULT,
      },
      iree_make_const_byte_span(data.data(), data.size() * sizeof(float)),
      out_view);
}

int main(int argc, char** argv) {
  // --- 1. IREE Setup (Instance, Device, Session) ---
  iree_allocator_t host_allocator = iree_allocator_system();
  iree_runtime_instance_options_t instance_options;
  iree_runtime_instance_options_initialize(&instance_options);
  iree_runtime_instance_options_use_all_available_drivers(&instance_options);
  iree_runtime_instance_t* instance = NULL;
  IREE_CHECK_OK(iree_runtime_instance_create(&instance_options, host_allocator,
                                             &instance));

  iree_hal_device_t* device = NULL;
  IREE_CHECK_OK(iree_runtime_instance_try_create_default_device(
      instance, iree_make_cstring_view("local-sync"), &device));

  iree_runtime_session_options_t session_options;
  iree_runtime_session_options_initialize(&session_options);
  iree_runtime_session_t* session = NULL;
  IREE_CHECK_OK(iree_runtime_session_create_with_device(
      instance, &session_options, device,
      iree_runtime_instance_host_allocator(instance), &session));

  // --- 2. Load ALL modules into the session ---
  // First, load our custom C++ orchestrator module.
  iree_vm_module_t* orchestrator_module = NULL;
  IREE_CHECK_OK(create_orchestrator_module(
      iree_runtime_instance_vm_instance(instance), session, host_allocator,
      &orchestrator_module));
  IREE_CHECK_OK(
      iree_runtime_session_append_module(session, orchestrator_module));
  iree_vm_module_release(orchestrator_module);

  // Next, load all the pre-compiled operator modules.
  const char* module_paths[] = {"vmfb/op_a.vmfb",      "vmfb/op_b_step.vmfb",
                              "vmfb/op_c.vmfb",      "vmfb/op_d.vmfb",
                              "vmfb/op_e.vmfb"};
  for (const char* path : module_paths) {
    IREE_CHECK_OK(
        iree_runtime_session_append_bytecode_module_from_file(session, path));
  }
  std::cout << "Successfully loaded all modules." << std::endl;

  // --- 3. Prepare Inputs ---
  iree_vm_list_t* inputs = NULL;
  IREE_CHECK_OK(iree_vm_list_create(iree_vm_make_undefined_type_def(), 4,
                                    host_allocator, &inputs));

  // a. sensor_input: tensor<1x3x64x64xf32>
  std::vector<float> sensor_data(1 * 3 * 64 * 64, 0.1f);
  iree_hal_buffer_view_t* sensor_input_view = NULL;
  IREE_CHECK_OK(create_buffer_view(session, sensor_data, {1, 3, 64, 64},
                                  &sensor_input_view));
  iree_vm_ref_t sensor_input_ref =
      iree_hal_buffer_view_move_ref(sensor_input_view);
  IREE_CHECK_OK(iree_vm_list_push_ref_move(inputs, &sensor_input_ref));

  // b. initial_pose: tensor<3xf32>
  std::vector<float> pose_data = {0.5f, 0.5f, 3.14159f / 4.0f};
  iree_hal_buffer_view_t* pose_view = NULL;
  IREE_CHECK_OK(create_buffer_view(session, pose_data, {3}, &pose_view));
  iree_vm_ref_t pose_ref = iree_hal_buffer_view_move_ref(pose_view);
  IREE_CHECK_OK(iree_vm_list_push_ref_move(inputs, &pose_ref));

  // c. initial_angles: tensor<2xf32>
  std::vector<float> angles_data = {3.14159f / 2.0f, -3.14159f / 4.0f};
  iree_hal_buffer_view_t* angles_view = NULL;
  IREE_CHECK_OK(create_buffer_view(session, angles_data, {2}, &angles_view));
  iree_vm_ref_t angles_ref = iree_hal_buffer_view_move_ref(angles_view);
  IREE_CHECK_OK(iree_vm_list_push_ref_move(inputs, &angles_ref));

  // d. wheel_ticks: tensor<2xf32>
  std::vector<float> ticks_data = {15.0f, 17.0f};
  iree_hal_buffer_view_t* ticks_view = NULL;
  IREE_CHECK_OK(create_buffer_view(session, ticks_data, {2}, &ticks_view));
  iree_vm_ref_t ticks_ref = iree_hal_buffer_view_move_ref(ticks_view);
  IREE_CHECK_OK(iree_vm_list_push_ref_move(inputs, &ticks_ref));

  // --- 4. Call the Orchestrator Function ---
  iree_vm_list_t* outputs = NULL;
  IREE_CHECK_OK(iree_vm_list_create(iree_vm_make_undefined_type_def(), 2,
                                    host_allocator, &outputs));

  std::cout << "Calling orchestrator.run_application..." << std::endl;
  IREE_CHECK_OK(iree_runtime_session_call_by_name(
      session, iree_make_cstring_view("orchestrator.run_application"), inputs,
      outputs));
  std::cout << "Call complete." << std::endl;

  // --- 5. Process Outputs ---
  iree_hal_buffer_view_t* trajectory_view =
      (iree_hal_buffer_view_t*)iree_vm_list_get_ref_assign(outputs, 0);
  iree_hal_buffer_view_t* new_pose_view =
      (iree_hal_buffer_view_t*)iree_vm_list_get_ref_assign(outputs, 1);

  std::cout << "Successfully executed dynamic graph in C++!" << std::endl;
  std::cout << "Trajectory output shape: "
            << iree_hal_buffer_view_shape_rank(trajectory_view) << "D"
            << std::endl;
  std::cout << "New pose output shape: "
            << iree_hal_buffer_view_shape_rank(new_pose_view) << "D"
            << std::endl;

  // --- 6. Cleanup ---
  iree_vm_list_release(inputs);
  iree_vm_list_release(outputs);
  iree_runtime_session_release(session);
  iree_hal_device_release(device);
  iree_runtime_instance_release(instance);
  return 0;
}