#include "orchestrator_module.h"

#include <cmath> // Required for std::pow
#include <cstdio>
#include <iostream>
#include <tuple> // Required for std::tuple and std::make_tuple
#include <vector>

#include "iree/vm/native_module_cc.h"
#include "iree/modules/hal/types.h"

// Helper function to synchronously read a float from a buffer view.
// NOTE: performance bottleneck only for demonstration purposes
static iree_status_t ReadF32FromBufferView(iree_hal_buffer_view_t* view,
                                           iree_host_size_t index,
                                           float* out_value) {
  iree_hal_buffer_mapping_t mapped_memory;
  IREE_RETURN_IF_ERROR(iree_hal_buffer_map_range(
      iree_hal_buffer_view_buffer(view), IREE_HAL_MAPPING_MODE_SCOPED,
      IREE_HAL_MEMORY_ACCESS_READ, 0, IREE_HAL_WHOLE_BUFFER, &mapped_memory));
  *out_value = ((float*)mapped_memory.contents.data)[index];
  iree_hal_buffer_unmap_range(&mapped_memory);
  return iree_ok_status();
}

namespace {

using namespace iree;

// Per-context state for the orchestrator module.
class OrchestratorModuleState final {
 public:
  OrchestratorModuleState(iree_runtime_session_t* session,
                          iree_allocator_t host_allocator)
      : session_(session), host_allocator_(host_allocator) {
    iree_runtime_session_retain(session_);
  }

  ~OrchestratorModuleState() { iree_runtime_session_release(session_); }

  // Looks up and caches all required functions from the loaded modules.
  Status ResolveRequiredFunctions() {
    IREE_RETURN_IF_ERROR(LookupFunction("module.op_a_kernel", &op_a_fn_));
    IREE_RETURN_IF_ERROR(LookupFunction("module.op_b_kernel", &op_b_fn_));
    IREE_RETURN_IF_ERROR(LookupFunction("module.op_c_kernel", &op_c_fn_));
    IREE_RETURN_IF_ERROR(LookupFunction("module.op_d_kernel", &op_d_fn_));
    IREE_RETURN_IF_ERROR(LookupFunction("module.op_e_kernel", &op_e_fn_));
    return OkStatus();
  }

  // The main exported function that implements the dynamic control flow.
  StatusOr<std::tuple<vm::ref<iree_hal_buffer_view_t>,
                     vm::ref<iree_hal_buffer_view_t>>>
  run_application(
      vm::ref<iree_hal_buffer_view_t> sensor_input,
      vm::ref<iree_hal_buffer_view_t> initial_pose,
      vm::ref<iree_hal_buffer_view_t> initial_angles,
      vm::ref<iree_hal_buffer_view_t> wheel_ticks) {
    // --- Kernel E (Odometry) ---
    vm::ref<iree_vm_list_t> e_inputs;
    IREE_RETURN_IF_ERROR(
        iree_vm_list_create(iree_vm_make_undefined_type_def(), 2,
                            host_allocator_, e_inputs.put()));
    IREE_RETURN_IF_ERROR(
        iree_vm_list_push_ref_retain(e_inputs.get(), initial_pose.get()));
    IREE_RETURN_IF_ERROR(
        iree_vm_list_push_ref_retain(e_inputs.get(), wheel_ticks.get()));
    vm::ref<iree_vm_list_t> e_outputs;
    IREE_RETURN_IF_ERROR(iree_vm_list_create(
        iree_vm_make_undefined_type_def(), 1, host_allocator_, e_outputs.put()));
    IREE_RETURN_IF_ERROR(iree_runtime_session_call_by_function(
        session_, op_e_fn_, e_inputs.get(), e_outputs.get()));
    auto new_pose = vm::retain_ref(
        (iree_hal_buffer_view_t*)iree_vm_list_get_ref_assign(e_outputs.get(),
                                                            0));

    // --- Kernel A (Perception) ---
    vm::ref<iree_vm_list_t> a_inputs;
    IREE_RETURN_IF_ERROR(
        iree_vm_list_create(iree_vm_make_undefined_type_def(), 1,
                            host_allocator_, a_inputs.put()));
    IREE_RETURN_IF_ERROR(
        iree_vm_list_push_ref_retain(a_inputs.get(), sensor_input.get()));
    vm::ref<iree_vm_list_t> a_outputs;
    IREE_RETURN_IF_ERROR(iree_vm_list_create(
        iree_vm_make_undefined_type_def(), 1, host_allocator_, a_outputs.put()));
    IREE_RETURN_IF_ERROR(iree_runtime_session_call_by_function(
        session_, op_a_fn_, a_inputs.get(), a_outputs.get()));
    auto target_pos = vm::retain_ref(
        (iree_hal_buffer_view_t*)iree_vm_list_get_ref_assign(a_outputs.get(),
                                                            0));

    // --- Kernel B (IK Solver `while` loop) ---
    vm::ref<iree_hal_buffer_view_t> current_angles =
        vm::retain_ref(initial_angles);
    const int MAX_ITERATIONS = 100;
    const float TOLERANCE_SQ = 1.0e-8;
    for (int i = 0; i < MAX_ITERATIONS; ++i) {
      vm::ref<iree_vm_list_t> b_inputs;
      IREE_RETURN_IF_ERROR(
          iree_vm_list_create(iree_vm_make_undefined_type_def(), 2,
                              host_allocator_, b_inputs.put()));
      IREE_RETURN_IF_ERROR(
          iree_vm_list_push_ref_retain(b_inputs.get(), current_angles.get()));
      IREE_RETURN_IF_ERROR(
          iree_vm_list_push_ref_retain(b_inputs.get(), target_pos.get()));
      vm::ref<iree_vm_list_t> b_outputs;
      IREE_RETURN_IF_ERROR(iree_vm_list_create(iree_vm_make_undefined_type_def(),
                                               1, host_allocator_, b_outputs.put()));
      IREE_RETURN_IF_ERROR(iree_runtime_session_call_by_function(
          session_, op_b_fn_, b_inputs.get(), b_outputs.get()));
      auto next_angles = vm::retain_ref(
          (iree_hal_buffer_view_t*)iree_vm_list_get_ref_assign(b_outputs.get(),
                                                              0));

      // **WARNING**: Synchronous readback for convergence check.
      float current_q[2], next_q[2];
      IREE_RETURN_IF_ERROR(ReadF32FromBufferView(current_angles.get(), 0, &current_q[0]));
      IREE_RETURN_IF_ERROR(ReadF32FromBufferView(current_angles.get(), 1, &current_q[1]));
      IREE_RETURN_IF_ERROR(ReadF32FromBufferView(next_angles.get(), 0, &next_q[0]));
      IREE_RETURN_IF_ERROR(ReadF32FromBufferView(next_angles.get(), 1, &next_q[1]));
      float diff_sq = std::pow(next_q[0] - current_q[0], 2) +
                      std::pow(next_q[1] - current_q[1], 2);

      current_angles = std::move(next_angles);
      if (diff_sq < TOLERANCE_SQ) break;
    }
    auto final_angles = std::move(current_angles);

    // --- Kernels C/D (`if` statement) ---
    vm::ref<iree_hal_buffer_view_t> trajectory;
    // Synchronous readback for condition check.
    float final_q1;
    IREE_RETURN_IF_ERROR(ReadF32FromBufferView(final_angles.get(), 1, &final_q1));

    iree_vm_function_t chosen_fn = (final_q1 > 0.0f) ? op_c_fn_ : op_d_fn_;

    vm::ref<iree_vm_list_t> cd_inputs;
    IREE_RETURN_IF_ERROR(
        iree_vm_list_create(iree_vm_make_undefined_type_def(), 1,
                            host_allocator_, cd_inputs.put()));
    IREE_RETURN_IF_ERROR(
        iree_vm_list_push_ref_retain(cd_inputs.get(), final_angles.get()));
    vm::ref<iree_vm_list_t> cd_outputs;
    IREE_RETURN_IF_ERROR(iree_vm_list_create(
        iree_vm_make_undefined_type_def(), 1, host_allocator_, cd_outputs.put()));
    IREE_RETURN_IF_ERROR(iree_runtime_session_call_by_function(
        session_, chosen_fn, cd_inputs.get(), cd_outputs.get()));
    trajectory = vm::retain_ref(
        (iree_hal_buffer_view_t*)iree_vm_list_get_ref_assign(cd_outputs.get(),
                                                            0));

    return std::make_tuple(std::move(trajectory), std::move(new_pose));
  }

 private:
  Status LookupFunction(const char* name, iree_vm_function_t* out_fn) {
    return iree_runtime_session_lookup_function(
        session_, iree_make_cstring_view(name), out_fn);
  }

  iree_runtime_session_t* session_;
  iree_allocator_t host_allocator_;

  // Cached function pointers from the loaded bytecode modules.
  iree_vm_function_t op_a_fn_ = {0};
  iree_vm_function_t op_b_fn_ = {0};
  iree_vm_function_t op_c_fn_ = {0};
  iree_vm_function_t op_d_fn_ = {0};
  iree_vm_function_t op_e_fn_ = {0};
};

static const vm::NativeFunction<OrchestratorModuleState>
    kOrchestratorModuleFunctions[] = {
        vm::MakeNativeFunction("run_application",
                               &OrchestratorModuleState::run_application),
};

// The module is a stateless factory for stateful module instances.
class OrchestratorModule final
    : public vm::NativeModule<OrchestratorModuleState> {
 public:
  using vm::NativeModule<OrchestratorModuleState>::NativeModule;

  // The session is captured by the CreateState call and stored there.
  void SetSession(iree_runtime_session_t* session) {
    session_ = session;
  }

  StatusOr<std::unique_ptr<OrchestratorModuleState>> CreateState(
      iree_allocator_t host_allocator) override {
    auto state = std::make_unique<OrchestratorModuleState>(session_, host_allocator);
    IREE_RETURN_IF_ERROR(state->ResolveRequiredFunctions());
    return state;
  }

  StatusOr<std::unique_ptr<OrchestratorModuleState>> ForkState(
    OrchestratorModuleState* parent_state,
    iree_allocator_t host_allocator) override {
    // For this module, forking is the same as creating a new state.
    return CreateState(host_allocator);
  }

 private:
  // This is just a reference, not owned by the module.
  // It is used to create the state.
  iree_runtime_session_t* session_ = nullptr;
};

}  // namespace

extern "C" iree_status_t create_orchestrator_module(
    iree_vm_instance_t* instance, iree_runtime_session_t* session,
    iree_allocator_t host_allocator, iree_vm_module_t** out_module) {
  IREE_ASSERT_ARGUMENT(out_module);
  *out_module = NULL;
  auto module = std::make_unique<OrchestratorModule>(
      "orchestrator", /*version=*/0, instance, host_allocator,
      iree::span<const vm::NativeFunction<OrchestratorModuleState>>(
          kOrchestratorModuleFunctions));
  // The module needs the session to create its state.
  module->SetSession(session);
  *out_module = module.release()->interface();
  return iree_ok_status();
}