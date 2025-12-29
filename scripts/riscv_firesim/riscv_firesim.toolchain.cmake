# riscv_firesim.toolchain.cmake
# Combined Bare-Metal Toolchain: Clang (Compile) + GCC (Link)

if(RISCV_TOOLCHAIN_INCLUDED)
  return()
endif(RISCV_TOOLCHAIN_INCLUDED)
set(RISCV_TOOLCHAIN_INCLUDED true)

# --- 1. Target System Configuration ---
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR riscv64)

# --- 2. Toolchain Paths ---
if(DEFINED ENV{RISCV_TOOLCHAIN_ROOT})
  set(RISCV_TOOLCHAIN_ROOT "$ENV{RISCV_TOOLCHAIN_ROOT}" CACHE PATH "RISC-V compiler path" FORCE)
elseif(DEFINED ENV{RISCV})
  set(RISCV_TOOLCHAIN_ROOT "$ENV{RISCV}" CACHE PATH "RISC-V compiler path" FORCE)
else()
  message(FATAL_ERROR "RISCV_TOOLCHAIN_ROOT (or RISCV) environment variable must be set.")
endif()

# Define Newlib Sysroot (needed for Clang to find headers)
set(RISCV_NEWLIB_SYSROOT "/scratch2/agustin/chipyard/.conda-env/riscv-tools/riscv64-unknown-elf")
# Define GCC Root (needed to find the linker)
get_filename_component(RISCV_GCC_ROOT "${RISCV_NEWLIB_SYSROOT}" DIRECTORY)

# Define Tools
set(CMAKE_C_COMPILER "${RISCV_TOOLCHAIN_ROOT}/bin/clang")
set(CMAKE_CXX_COMPILER "${RISCV_TOOLCHAIN_ROOT}/bin/clang++")
set(CMAKE_ASM_COMPILER "${RISCV_TOOLCHAIN_ROOT}/bin/clang")

# CRITICAL: Use GCC as the Linker Driver.
set(CMAKE_LINKER "${RISCV_GCC_ROOT}/bin/riscv64-unknown-elf-gcc")

set(CMAKE_AR "${RISCV_TOOLCHAIN_ROOT}/bin/llvm-ar")
set(CMAKE_RANLIB "${RISCV_TOOLCHAIN_ROOT}/bin/llvm-ranlib")
set(CMAKE_STRIP "${RISCV_TOOLCHAIN_ROOT}/bin/llvm-strip")
set(CMAKE_SYSROOT "${RISCV_NEWLIB_SYSROOT}")

# --- 3. Find C++ Headers for Clang ---
file(GLOB CPP_INCLUDE_DIRS "${RISCV_NEWLIB_SYSROOT}/include/c++/*")
if(CPP_INCLUDE_DIRS)
    list(GET CPP_INCLUDE_DIRS 0 CPP_INCLUDE_DIR)
else()
    message(WARNING "Could not find C++ headers in ${RISCV_NEWLIB_SYSROOT}/include/c++")
endif()

# --- 4. Flag Definitions ---

set(ARCH_FLAGS "-march=rv64gcv -mabi=lp64d -mcmodel=medany")

# Flags SPECIFIC to Clang (Compilation Only)
set(CLANG_COMPILE_FLAGS "\
--target=riscv64-unknown-elf \
--sysroot=${RISCV_NEWLIB_SYSROOT} \
-I${CPP_INCLUDE_DIR} \
-I${CPP_INCLUDE_DIR}/riscv64-unknown-elf \
${ARCH_FLAGS} \
-fno-pic \
-fno-plt \
-Wno-error=pointer-sign \
-Wno-error=char-subscripts \
-Wno-unused-command-line-argument \
-Daligned_alloc=memalign \
-DIREE_PLATFORM_GENERIC=1 \
-DIREE_SYNCHRONIZATION_DISABLE_UNSAFE=1 \
-DIREE_FILE_IO_ENABLE=0 \
-DIREE_TIME_NOW_FN=\"{ return 0; }\" \
-DIREE_WAIT_UNTIL_FN=sizeof \
-DIREE_DEVICE_SIZE_T=uint64_t \
-DPRIdsz=PRIu64")

# Flags SPECIFIC to GCC (Linking Only)
set(GCC_LINK_FLAGS "\
${ARCH_FLAGS} \
-L/scratch2/agustin/chipyard/.conda-env/riscv-tools/riscv64-unknown-elf/lib \
-T/scratch2/agustin/merlin/scripts/riscv_firesim/htif.ld \
-Wl,--no-relax \
-Wl,--start-group \
-lstdc++ \
-lgloss_htif \
-lc \
-lm \
-lgcc \
-Wl,--end-group")

# --- 5. Apply Flags to CMake Variables ---
set(CMAKE_C_FLAGS             "${CLANG_COMPILE_FLAGS} -std=gnu11" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS           "${CLANG_COMPILE_FLAGS} -std=gnu++17 -stdlib=libstdc++" CACHE STRING "" FORCE)
set(CMAKE_ASM_FLAGS           "${CLANG_COMPILE_FLAGS}" CACHE STRING "" FORCE)

# Clear standard CMake linker flags to ensure we have full control
set(CMAKE_EXE_LINKER_FLAGS    "" CACHE STRING "" FORCE)
set(CMAKE_SHARED_LINKER_FLAGS "" CACHE STRING "" FORCE)
set(CMAKE_MODULE_LINKER_FLAGS "" CACHE STRING "" FORCE)

# --- 6. Override Link Rule ---
set(CMAKE_C_LINK_EXECUTABLE   "<CMAKE_LINKER> <OBJECTS> <LINK_LIBRARIES> ${GCC_LINK_FLAGS} -Wl,--defsym=_sp=0x88000000 -o <TARGET>")
set(CMAKE_CXX_LINK_EXECUTABLE "<CMAKE_LINKER> <OBJECTS> <LINK_LIBRARIES> ${GCC_LINK_FLAGS} -Wl,--defsym=_sp=0x88000000 -o <TARGET>")

# --- 7. IREE Options ---
set(CMAKE_CROSSCOMPILING ON)
set(CMAKE_C_EXTENSIONS ON)
set(IREE_ENABLE_THREADING OFF CACHE BOOL "" FORCE)
set(IREE_HAL_DRIVER_LOCAL_SYNC ON CACHE BOOL "" FORCE)
set(IREE_HAL_EXECUTABLE_LOADER_EMBEDDED_ELF ON CACHE BOOL "" FORCE)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(IREE_BUILD_BINDINGS_TFLITE OFF CACHE BOOL "" FORCE)
set(IREE_BUILD_BINDINGS_TFLITE_JAVA OFF CACHE BOOL "" FORCE)
set(IREE_HAL_DRIVER_DEFAULTS OFF CACHE BOOL "" FORCE)
set(IREE_HAL_DRIVER_LOCAL_SYNC ON CACHE BOOL "" FORCE)
set(IREE_HAL_EXECUTABLE_LOADER_DEFAULTS OFF CACHE BOOL "" FORCE)
set(IREE_HAL_EXECUTABLE_LOADER_EMBEDDED_ELF ON CACHE BOOL "" FORCE)
set(IREE_HAL_EXECUTABLE_LOADER_VMVX_MODULE ON CACHE BOOL "" FORCE)
set(IREE_HAL_EXECUTABLE_PLUGIN_DEFAULTS OFF CACHE BOOL "" FORCE)
set(IREE_HAL_EXECUTABLE_PLUGIN_EMBEDDED_ELF ON CACHE BOOL "" FORCE)
set(IREE_ENABLE_THREADING OFF CACHE BOOL "" FORCE)