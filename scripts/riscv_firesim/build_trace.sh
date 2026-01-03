#!/bin/bash
set -e

# --- Configuration ---
# Get the workspace root (2 levels up from this script)
export WORKSPACE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
export IREE_SRC=${IREE_SRC:-"${WORKSPACE_DIR}/third_party/iree"}
export RISCV_TOOLCHAIN_ROOT=${RISCV_TOOLCHAIN_ROOT:-"${WORKSPACE_DIR}/riscv-tools-iree"}

# Paths
export BUILD_RISCV_DIR=${WORKSPACE_DIR}/build-riscv-trace
export INSTALL_HOST_DIR=${WORKSPACE_DIR}/build-host/install

echo "========================================================"
echo " Building IREE RISC-V (Trace/Debug)"
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
  -DRISCV_TOOLCHAIN_ROOT="${RISCV_TOOLCHAIN_ROOT}/toolchain/clang/linux/RISCV" \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DIREE_ENABLE_RUNTIME_TRACING=ON \
  -DIREE_ENABLE_ASSERTIONS=ON \
  -DCMAKE_CXX_FLAGS="-fno-omit-frame-pointer" \
  -DIREE_ENABLE_CPUINFO=OFF \
  -DIREE_HAL_DRIVER_DEFAULTS=OFF \
  -DIREE_HAL_DRIVER_LOCAL_SYNC=ON \
  -DIREE_HAL_DRIVER_LOCAL_TASK=ON \
  -DIREE_BUILD_TESTS=OFF \
  -DIREE_BUILD_SAMPLES=OFF

cmake --build "${BUILD_RISCV_DIR}"
