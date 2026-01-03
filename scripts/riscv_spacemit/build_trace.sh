#!/bin/bash
set -e

# --- Configuration ---
# Get the workspace root (2 levels up from this script)
export WORKSPACE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
export IREE_SRC=${IREE_SRC:-"${WORKSPACE_DIR}/third_party/iree"}
# SpacemiT toolchain default path
export RISCV_TOOLCHAIN_ROOT=${RISCV_TOOLCHAIN_ROOT:-"${WORKSPACE_DIR}/riscv-tools-spacemit/spacemit-toolchain-linux-glibc-x86_64-v1.1.2"}

# Paths
export BUILD_RISCV_DIR=${WORKSPACE_DIR}/build-riscv-spacemit-trace
export INSTALL_HOST_DIR=${WORKSPACE_DIR}/build-host/install

echo "========================================================"
echo " Building IREE RISC-V SpacemiT (Trace)"
echo " Source:      ${IREE_SRC}"
echo " Build Dir:   ${BUILD_RISCV_DIR}"
echo " Toolchain:   ${RISCV_TOOLCHAIN_ROOT}"
echo "========================================================"

# Unset host-specific flags
unset CFLAGS CXXFLAGS

cmake \
    -G Ninja \
    -B "${BUILD_RISCV_DIR}" \
    -S "${IREE_SRC}" \
    -DCMAKE_TOOLCHAIN_FILE="${IREE_SRC}/build_tools/cmake/riscv.toolchain.cmake" \
    -DIREE_HOST_BIN_DIR="${INSTALL_HOST_DIR}/bin" \
    -DRISCV_CPU=linux-riscv_64 \
    -DIREE_BUILD_COMPILER=OFF \
    -DRISCV_TOOLCHAIN_ROOT="${RISCV_TOOLCHAIN_ROOT}" \
    -DIREE_HAL_DRIVER_DEFAULTS=OFF \
    -DIREE_HAL_DRIVER_LOCAL_SYNC=ON \
    -DIREE_HAL_DRIVER_LOCAL_TASK=ON \
    -DIREE_BUILD_TESTS=OFF \
    -DIREE_BUILD_SAMPLES=OFF \
    -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_C_FLAGS="-march=rv64gc_zba_zbb_zbc_zbs_zicbom_zicboz_zicbop_zihintpause -mabi=lp64d" \
    -DCMAKE_CXX_FLAGS="-fno-omit-frame-pointer -march=rv64gc_zba_zbb_zbc_zbs_zicbom_zicboz_zicbop_zihintpause -mabi=lp64d" \
    -DIREE_ENABLE_RUNTIME_TRACING=ON \
    -DIREE_ENABLE_ASSERTIONS=ON \
    -DIREE_ENABLE_CPUINFO=ON \
    -DIREE_BUILD_TRACY=ON \
    -DTRACY_NO_POINTER_COMPRESSION=ON

cmake --build "${BUILD_RISCV_DIR}"
