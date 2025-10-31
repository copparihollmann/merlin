if(NOT IREE_TARGET_BACKEND_LLVM_CPU OR
   NOT IREE_HAL_DRIVER_LOCAL_TASK)
  return()
endif()

set(_NAME "iree_samples_custom_module_roboir")
add_executable(${_NAME} "")
target_sources(${_NAME}
  PRIVATE
    main.cpp
    orchestrator_module.cc
    orchestrator_module.h
)

set_target_properties(${_NAME} PROPERTIES OUTPUT_NAME "custom-module-roboir")


target_compile_options(${_NAME} PRIVATE ${IREE_DEFAULT_COPTS})

target_link_libraries(${_NAME}
  iree_runtime_runtime
)