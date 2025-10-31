#include <iostream>
#include <vector>
#include <numeric>

#include "iree/runtime/api.h"
#include "tinympc/tiny_api.hpp"

#define NSTATES 4
#define NINPUTS 1
#define NHORIZON 10

// Helper to create a buffer view from host data
iree_status_t create_buffer_view(
    iree_hal_allocator_t* allocator, void* data,
    const iree_hal_dim_t* shape, iree_host_size_t shape_rank,
    iree_hal_element_type_t element_type,
    iree_hal_buffer_view_t** out_buffer_view) {
  iree_hal_buffer_params_t buffer_params = {0};
  buffer_params.type = IREE_HAL_BUFFER_TYPE_DEVICE_LOCAL | IREE_HAL_BUFFER_TYPE_HOST_VISIBLE;
  buffer_params.usage = IREE_HAL_BUFFER_USAGE_DEFAULT;
  iree_host_size_t data_size = 0;
  iree_hal_buffer_view_compute_size(shape, shape_rank, element_type, &data_size);
  return iree_hal_buffer_view_allocate_buffer_copy(
      allocator, shape, shape_rank, element_type,
      IREE_HAL_ENCODING_TYPE_DENSE_ROW_MAJOR, buffer_params,
      iree_make_const_byte_span(data, data_size), out_buffer_view);
}

// Helper to print an output buffer view
iree_status_t print_buffer_view(iree_hal_buffer_view_t* view) {
    iree_host_size_t rank = iree_hal_buffer_view_shape_rank(view);
    const iree_hal_dim_t* shape = iree_hal_buffer_view_shape_dims(view);
    std::vector<iree_hal_dim_t> indices(rank, 0);
    iree_hal_element_type_t element_type = iree_hal_buffer_view_element_type(view);
    iree_host_size_t element_size = iree_hal_element_byte_count(element_type);

    std::vector<float> data(iree_hal_buffer_view_element_count(view));
    IREE_RETURN_IF_ERROR(iree_hal_buffer_read_data(iree_hal_buffer_view_buffer(view), 0, data.data(), data.size() * element_size));

    std::cout << "Shape: [";
    for(size_t i=0; i<rank; ++i) std::cout << shape[i] << (i == rank-1 ? "" : ", ");
    std::cout << "]" << std::endl;

    // Print data in a matrix-like format
    if (rank == 2) {
        for (int i = 0; i < shape[0]; ++i) {
            for (int j = 0; j < shape[1]; ++j) {
                std::cout << data[i * shape[1] + j] << "\t";
            }
            std::cout << std::endl;
        }
    } else {
        for(size_t i=0; i<data.size(); ++i) {
            std::cout << data[i] << " ";
        }
        std::cout << std::endl;
    }
    return iree_ok_status();
}


int main(int argc, char** argv) {
    // ========================================================================
    // 1. Set up IREE runtime
    // ========================================================================
    iree_runtime_instance_t* instance = NULL;
    iree_runtime_instance_options_t instance_options;
    iree_runtime_instance_options_initialize(&instance_options);
    iree_runtime_instance_create(&instance_options, iree_allocator_system(), &instance);

    iree_hal_device_t* device = NULL;
    iree_runtime_session_t* session = NULL;
    iree_runtime_session_options_t session_options;
    iree_runtime_session_options_initialize(&session_options);

    iree_runtime_instance_try_create_default_device(instance, iree_make_cstring_view("local-task"), &device);
    iree_runtime_session_create_with_device(instance, &session_options, device,
                                           iree_runtime_instance_host_allocator(instance), &session);

    // ========================================================================
    // 2. Load the compiled module
    // ========================================================================
    const char* module_path = "tinympc_module.vmfb";
    iree_vm_module_t* main_module = NULL;
    iree_runtime_session_append_bytecode_module_from_file(session, module_path, &main_module);

    // ========================================================================
    // 3. Prepare TinyMPC problem data (from codegen_cartpole.cpp)
    // ========================================================================
    TinySolver* solver = NULL;
    tinytype rho_value = 1.0;
    tinytype Adyn_data[NSTATES * NSTATES] = {1.0, 0.01, 0.0, 0.0, 0.0, 1.0, 0.039, 0.0, 0.0, 0.0, 1.002, 0.01, 0.0, 0.0, 0.458, 1.002};
    tinytype Bdyn_data[NSTATES * NINPUTS] = {0.0, 0.02, 0.0, 0.067};
    tinytype Q_data[NSTATES] = {10.0, 1.0, 10.0, 1.0};
    tinytype R_data[NINPUTS] = {1.0};

    Eigen::Map<Matrix<tinytype, NSTATES, NSTATES, Eigen::RowMajor>> Adyn(Adyn_data);
    Eigen::Map<Matrix<tinytype, NSTATES, NINPUTS>> Bdyn(Bdyn_data);
    Eigen::Map<Vector<tinytype, NSTATES>> Q(Q_data);
    Eigen::Map<Vector<tinytype, NINPUTS>> R(R_data);
    Vector<tinytype, NSTATES> fdyn = Vector<tinytype, NSTATES>::Zero();

    int verbose = 0; // Set to 1 for more verbose output
    tiny_setup(&solver, Adyn, Bdyn, fdyn, Q.asDiagonal(), R.asDiagonal(), rho_value, NSTATES, NINPUTS, NHORIZON, verbose);

    Matrix<tinytype, NSTATES, 1> x0;
    x0 << 0, 1, 0, 0; // Initial state
    Matrix<tinytype, NSTATES, 1> xg;
    xg << 0, 0, 0, 0; // Goal state

    solver->work->Xref = xg.replicate<1, NHORIZON>();
    solver->work->Uref.setZero();
    solver->work->x_min.setConstant(-10);
    solver->work->x_max.setConstant(10);
    solver->work->u_min.setConstant(-2);
    solver->work->u_max.setConstant(2);

    // ========================================================================
    // 4. Create IREE buffer views for inputs
    // ========================================================================
    iree_vm_list_t* inputs = NULL;
    iree_vm_list_create(iree_vm_make_undefined_type_def(), 18, iree_allocator_system(), &inputs);

    iree_hal_buffer_view_t* x0_bv, *Adyn_bv, *Bdyn_bv, *fdyn_bv, *Q_bv, *R_bv, *rho_bv;
    iree_hal_buffer_view_t* Xref_bv, *Uref_bv, *x_min_bv, *x_max_bv, *u_min_bv, *u_max_bv;
    iree_hal_buffer_view_t* Quu_inv_bv, *AmBKt_bv, *Kinf_bv, *Pinf_bv, *APf_bv, *BPf_bv;

    iree_hal_dim_t x0_shape[] = {NSTATES};
    create_buffer_view(iree_runtime_session_device_allocator(session), x0.data(), x0_shape, 1, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &x0_bv);
    iree_hal_dim_t Adyn_shape[] = {NSTATES, NSTATES};
    create_buffer_view(iree_runtime_session_device_allocator(session), Adyn.data(), Adyn_shape, 2, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &Adyn_bv);
    iree_hal_dim_t Bdyn_shape[] = {NSTATES, NINPUTS};
    create_buffer_view(iree_runtime_session_device_allocator(session), Bdyn.data(), Bdyn_shape, 2, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &Bdyn_bv);
    iree_hal_dim_t fdyn_shape[] = {NSTATES, 1};
    create_buffer_view(iree_runtime_session_device_allocator(session), fdyn.data(), fdyn_shape, 2, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &fdyn_bv);
    iree_hal_dim_t Q_shape[] = {NSTATES};
    create_buffer_view(iree_runtime_session_device_allocator(session), Q.data(), Q_shape, 1, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &Q_bv);
    iree_hal_dim_t R_shape[] = {NINPUTS};
    create_buffer_view(iree_runtime_session_device_allocator(session), R.data(), R_shape, 1, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &R_bv);
    iree_hal_dim_t scalar_shape[] = {};
    create_buffer_view(iree_runtime_session_device_allocator(session), &rho_value, scalar_shape, 0, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &rho_bv);
    iree_hal_dim_t Xref_shape[] = {NSTATES, NHORIZON};
    create_buffer_view(iree_runtime_session_device_allocator(session), solver->work->Xref.data(), Xref_shape, 2, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &Xref_bv);
    iree_hal_dim_t Uref_shape[] = {NINPUTS, NHORIZON - 1};
    create_buffer_view(iree_runtime_session_device_allocator(session), solver->work->Uref.data(), Uref_shape, 2, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &Uref_bv);
    iree_hal_dim_t x_bounds_shape[] = {NSTATES, NHORIZON};
    create_buffer_view(iree_runtime_session_device_allocator(session), solver->work->x_min.data(), x_bounds_shape, 2, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &x_min_bv);
    create_buffer_view(iree_runtime_session_device_allocator(session), solver->work->x_max.data(), x_bounds_shape, 2, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &x_max_bv);
    iree_hal_dim_t u_bounds_shape[] = {NINPUTS, NHORIZON - 1};
    create_buffer_view(iree_runtime_session_device_allocator(session), solver->work->u_min.data(), u_bounds_shape, 2, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &u_min_bv);
    create_buffer_view(iree_runtime_session_device_allocator(session), solver->work->u_max.data(), u_bounds_shape, 2, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &u_max_bv);
    iree_hal_dim_t Quu_inv_shape[] = {NINPUTS, NINPUTS};
    create_buffer_view(iree_runtime_session_device_allocator(session), solver->cache->Quu_inv.data(), Quu_inv_shape, 2, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &Quu_inv_bv);
    iree_hal_dim_t AmBKt_shape[] = {NSTATES, NSTATES};
    create_buffer_view(iree_runtime_session_device_allocator(session), solver->cache->AmBKt.data(), AmBKt_shape, 2, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &AmBKt_bv);
    iree_hal_dim_t Kinf_shape[] = {NINPUTS, NSTATES};
    create_buffer_view(iree_runtime_session_device_allocator(session), solver->cache->Kinf.data(), Kinf_shape, 2, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &Kinf_bv);
    iree_hal_dim_t Pinf_shape[] = {NSTATES, NSTATES};
    create_buffer_view(iree_runtime_session_device_allocator(session), solver->cache->Pinf.data(), Pinf_shape, 2, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &Pinf_bv);
    iree_hal_dim_t APf_shape[] = {NSTATES, 1};
    create_buffer_view(iree_runtime_session_device_allocator(session), solver->cache->APf.data(), APf_shape, 2, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &APf_bv);
    iree_hal_dim_t BPf_shape[] = {NINPUTS, 1};
    create_buffer_view(iree_runtime_session_device_allocator(session), solver->cache->BPf.data(), BPf_shape, 2, IREE_HAL_ELEMENT_TYPE_FLOAT_32, &BPf_bv);

    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(x0_bv));
    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(Adyn_bv));
    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(Bdyn_bv));
    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(fdyn_bv));
    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(Q_bv));
    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(R_bv));
    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(rho_bv));
    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(Xref_bv));
    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(Uref_bv));
    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(x_min_bv));
    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(x_max_bv));
    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(u_min_bv));
    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(u_max_bv));
    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(Quu_inv_bv));
    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(AmBKt_bv));
    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(Kinf_bv));
    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(Pinf_bv));
    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(APf_bv));
    iree_vm_list_push_ref_retain(inputs, iree_hal_buffer_view_move_ref(BPf_bv));

    // ========================================================================
    // 5. Call the MLIR function
    // ========================================================================
    iree_vm_list_t* outputs = NULL;
    iree_vm_list_create(iree_vm_make_undefined_type_def(), 2, iree_allocator_system(), &outputs);
    iree_vm_function_t main_function;
    iree_vm_module_lookup_function_by_name(main_module, IREE_VM_FUNCTION_LINKAGE_EXPORT,
                                           iree_make_cstring_view("tinympc_solve"), &main_function);

    std::cout << "Invoking tinympc_solve from MLIR module..." << std::endl;
    iree_vm_invoke(iree_runtime_session_vm_context(session), main_function,
                   IREE_VM_INVOCATION_FLAG_NONE, /*policy=*/NULL, inputs, outputs,
                   iree_allocator_system());
    std::cout << "Invocation complete." << std::endl;

    // ========================================================================
    // 6. Get and print results
    // ========================================================================
    iree_hal_buffer_view_t* output_x_bv = (iree_hal_buffer_view_t*)iree_vm_list_get_ref_deref(outputs, 0, iree_hal_buffer_view_get_descriptor());
    iree_hal_buffer_view_t* output_u_bv = (iree_hal_buffer_view_t*)iree_vm_list_get_ref_deref(outputs, 1, iree_hal_buffer_view_get_descriptor());

    std::cout << "\n--- Output Trajectory (x) ---" << std::endl;
    print_buffer_view(output_x_bv);
    std::cout << "\n--- Output Controls (u) ---" << std::endl;
    print_buffer_view(output_u_bv);

    // ========================================================================
    // 7. Cleanup
    // ========================================================================
    iree_vm_list_release(inputs);
    iree_vm_list_release(outputs);
    iree_runtime_session_destroy(session);
    iree_runtime_instance_release(instance);
    tiny_free(solver);

    return 0;
}
