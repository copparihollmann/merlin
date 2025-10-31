#ifndef IREE_SAMPLES_CUSTOM_MODULE_ORCHESTRATOR_MODULE_H_
#define IREE_SAMPLES_CUSTOM_MODULE_ORCHESTRATOR_MODULE_H_

#include "iree/base/api.h"
#include "iree/hal/api.h"
#include "iree/runtime/api.h"
#include "iree/vm/api.h"

#ifdef __cplusplus
extern "C" {
#endif

// Creates the custom orchestrator module.
// The session is passed here to be forwarded to the module's state.
iree_status_t create_orchestrator_module(
    iree_vm_instance_t* instance, iree_runtime_session_t* session,
    iree_allocator_t host_allocator, iree_vm_module_t** out_module);

#ifdef __cplusplus
}  // extern "C"
#endif

#endif  // IREE_SAMPLES_CUSTOM_MODULE_ORCHESTRATOR_MODULE_H_