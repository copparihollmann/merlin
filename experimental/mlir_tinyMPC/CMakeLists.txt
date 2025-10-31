cmake_minimum_required(VERSION 3.22)
project(TinyMPCTest)

find_package(IREE REQUIRED)

add_executable(tinympc_test main.cpp)

iree_compile_target(
  NAME tinympc_module
  SOURCES
    "${CMAKE_CURRENT_SOURCE_DIR}/tinyMPC.mlir"
  HAL_TARGET_BACKENDS
    "llvm-cpu"
  OUTPUTS
    "${CMAKE_CURRENT_BINARY_DIR}/tinympc_module.vmfb"
)

target_link_libraries(tinympc_test PRIVATE
  IREE::iree_runtime
)

target_include_directories(tinympc_test PRIVATE
  "${CMAKE_SOURCE_DIR}/third_party/TinyMPC/include"
  "${CMAKE_SOURCE_DIR}/third_party/TinyMPC/third_party/eigen"
)

add_custom_command(
  TARGET tinympc_test POST_BUILD
  COMMAND ${CMAKE_COMMAND} -E copy
          "${CMAKE_CURRENT_BINARY_DIR}/tinympc_module.vmfb"
          "${CMAKE_CURRENT_BINARY_DIR}/"
  COMMENT "Copying compiled module to build directory"
)
