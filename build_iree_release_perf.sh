#!/bin/bash
set -e

# --- Configuration ---
export WORKSPACE_DIR=${PWD}
# Using standard IREE (not iree_bar)
export IREE_SRC=${WORKSPACE_DIR}/third_party/iree
# Using the SpacemiT RISC-V toolchain path
export RISCV_TOOLCHAIN_ROOT=${WORKSPACE_DIR}/riscv-tools-spacemit/spacemit-toolchain-linux-glibc-x86_64-v1.1.2

# New build directories to preserve existing builds
export BUILD_HOST_DIR=${WORKSPACE_DIR}/build-iree-host-release
export INSTALL_HOST_DIR=${BUILD_HOST_DIR}/install
export BUILD_RISCV_DIR=${WORKSPACE_DIR}/build-iree-riscv-spacemit-release

echo "========================================================"
echo " Building IREE Host Tools (Release, Max Performance)"
echo " Source:      ${IREE_SRC}"
echo " Build Dir:   ${BUILD_HOST_DIR}"
echo " Install Dir: ${INSTALL_HOST_DIR}"
echo "========================================================"

if [ -f "${INSTALL_HOST_DIR}/bin/iree-compile" ]; then
    echo "Host tools already installed. Skipping host build."
else
    # Configure Host
    # - CMAKE_BUILD_TYPE=Release: Optimizations on, debug info off
    # - DIREE_ENABLE_ASSERTIONS=OFF: Disable runtime checks
    # - DIREE_BUILD_TESTS/SAMPLES=OFF: Faster build
    cmake \
        -G Ninja \
        -B "${BUILD_HOST_DIR}" \
        -S "${IREE_SRC}" \
        -DCMAKE_INSTALL_PREFIX="${INSTALL_HOST_DIR}" \
        -DCMAKE_BUILD_TYPE=Release \
        -DIREE_ENABLE_LLD=ON \
        -DPython3_EXECUTABLE="$(which python3)" \
        -DCMAKE_CXX_FLAGS="-Wno-error=cpp" \
        -DIREE_TARGET_BACKEND_DEFAULTS=OFF \
        -DIREE_TARGET_BACKEND_LLVM_CPU=ON \
        -DIREE_HAL_DRIVER_DEFAULTS=OFF \
        -DIREE_HAL_DRIVER_LOCAL_SYNC=ON \
        -DIREE_HAL_DRIVER_LOCAL_TASK=ON \
        -DIREE_BUILD_PYTHON_BINDINGS=OFF \
        -DIREE_ENABLE_ASSERTIONS=OFF \
        -DCMAKE_C_COMPILER_LAUNCHER=ccache \
        -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
        -DIREE_BUILD_TESTS=OFF \
        -DIREE_BUILD_SAMPLES=OFF

    # Build Host
    cmake --build "${BUILD_HOST_DIR}" --target install
fi

echo "========================================================"
echo " Cross-Compiling IREE Runtime for SpacemiT RISC-V (Release)"
echo " Build Dir: ${BUILD_RISCV_DIR}"
echo "========================================================"

# Unset host-specific flags to avoid contamination
unset CFLAGS CXXFLAGS

# Configure RISC-V for SpacemiT
# - CMAKE_BUILD_TYPE=Release
# - DIREE_ENABLE_RUNTIME_TRACING=OFF: Disable tracing overhead
# - DIREE_ENABLE_ASSERTIONS=OFF
# - DIREE_ENABLE_CPUINFO=OFF: Often not needed/supported on bare-metal/simulators
# - Specific march flags for SpacemiT K1
cmake \
  -G Ninja \
  -B "${BUILD_RISCV_DIR}" \
  -S "${IREE_SRC}" \
  -DCMAKE_TOOLCHAIN_FILE="${IREE_SRC}/build_tools/cmake/riscv.toolchain.cmake" \
  -DIREE_HOST_BIN_DIR="${INSTALL_HOST_DIR}/bin" \
  -DRISCV_CPU=linux-riscv_64 \
  -DIREE_BUILD_COMPILER=OFF \
  -DRISCV_TOOLCHAIN_ROOT="${RISCV_TOOLCHAIN_ROOT}" \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_C_FLAGS="-march=rv64gc_zba_zbb_zbc_zbs_zicbom_zicboz_zicbop_zihintpause -mabi=lp64d" \
  -DCMAKE_CXX_FLAGS="-fno-omit-frame-pointer -march=rv64gc_zba_zbb_zbc_zbs_zicbom_zicboz_zicbop_zihintpause -mabi=lp64d" \
  -DIREE_ENABLE_RUNTIME_TRACING=OFF \
  -DIREE_HAL_DRIVER_DEFAULTS=OFF \
  -DIREE_HAL_DRIVER_LOCAL_SYNC=ON \
  -DIREE_HAL_DRIVER_LOCAL_TASK=ON \
  -DIREE_BUILD_TESTS=OFF \
  -DIREE_BUILD_SAMPLES=ON

# Build RISC-V
cmake --build "${BUILD_RISCV_DIR}"

echo "========================================================"
echo " Build Complete!"
echo " Host Tools:   ${INSTALL_HOST_DIR}/bin"
echo " RISC-V Tools: ${BUILD_RISCV_DIR}/tools"
echo "========================================================"
