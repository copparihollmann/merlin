# plugin/CMakeLists.txt
cmake_minimum_required(VERSION 3.16)

# --- 1. Target Architecture Configuration ---
set(_ARCH "riscv_64")
set(RISCV_GCC "/scratch2/agustin/merlin/riscv-tools-iree/toolchain/clang/linux/RISCV/bin/clang")
message(STATUS "Using RISC-V GCC: ${RISCV_GCC}")

# --- 2. Define Source Files ---
set(SHIM_SOURCE ${CMAKE_CURRENT_SOURCE_DIR}/function.c) # This is your shim file

# --- 3. Define Intermediate and Final Object Files ---
set(SHIM_OBJECT ${CMAKE_CURRENT_BINARY_DIR}/function.o)
set(CUSTOM_OP_OBJECT_FILE ${CMAKE_CURRENT_BINARY_DIR}/riscv_qgemm.o) # This is the final linked object

# --- Compilation Flags (shared) ---
set(RISCV_COMPILE_FLAGS
    --target=riscv64-unknown-linux-gnu
    --sysroot=/scratch2/agustin/merlin/riscv-tools-iree/toolchain/clang/linux/RISCV/sysroot
    -march=rv64gcv_zvl512b_zvbb1p0
    -mabi=lp64d
    -mcmodel=medany
    -fPIC
    -fvisibility=hidden
    -fno-common
    -fno-builtin-printf
    -O2
    -g
    -ffast-math
    -menable-experimental-extensions
    -fdata-sections
    -ffunction-sections
    -I/scratch2/agustin/merlin/riscv-tools-iree/toolchain/clang/linux/RISCV/lib/clang/18/include
)

# --- 5. Custom Command to Build qgemm_ukernel_call.o ---
add_custom_command(
  OUTPUT ${SHIM_OBJECT}
  DEPENDS ${SHIM_SOURCE} ${RISCV_GCC}
  COMMAND ${RISCV_GCC}
    ${RISCV_COMPILE_FLAGS}
    -c ${SHIM_SOURCE}
    -o ${SHIM_OBJECT}
  VERBATIM
  COMMENT "Building function.o"
)

# --- 6. Custom Command to Link objects into riscv_qgemm.o ---
# Use `gcc -r` to combine multiple .o files into one single .o file
add_custom_command(
  OUTPUT ${CUSTOM_OP_OBJECT_FILE}
  DEPENDS ${SHIM_OBJECT} ${RISCV_GCC} # Fixed missing space
  COMMAND ${RISCV_GCC}
    ${RISCV_COMPILE_FLAGS}
    -r # Create a relocatable output file
    -o ${CUSTOM_OP_OBJECT_FILE}
    ${SHIM_OBJECT}
  VERBATIM
  COMMENT "Linking custom RISC-V QGEMM kernel object"
)

# --- 7. CMake Target Definition ---
add_custom_target(riscv_qgemm_object
  DEPENDS ${CUSTOM_OP_OBJECT_FILE}
)

# --- 8. Export Variable to Parent Scope ---
set(CUSTOM_OP_OBJECT_FILE ${CUSTOM_OP_OBJECT_FILE} PARENT_SCOPE)
set(CUSTOM_SPEC_MLIR ${CMAKE_CURRENT_SOURCE_DIR}/transform_spec.mlir PARENT_SCOPE)