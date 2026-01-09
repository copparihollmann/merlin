#!/bin/bash
set -e

# --- Configuration ---
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
export WORKSPACE_DIR="$(dirname "$(dirname "$SCRIPT_DIR")")"
export IREE_SRC=${WORKSPACE_DIR}/third_party/iree_bar
# Update this path if necessary to match your friend's setup
export RISCV_TOOLCHAIN_ROOT=${WORKSPACE_DIR}/riscv-tools-iree/toolchain/clang/linux/RISCV
export INSTALL_HOST_DIR=${WORKSPACE_DIR}/build-bar-iree-host-deb-tracy/install
export BUILD_RISCV_DIR=${WORKSPACE_DIR}/build-iree-riscv-firesim-bare-metal

echo "========================================================"
echo " Building IREE Runtime for FireSim (RV64GCV - Bare Metal)"
echo "========================================================"

# Clean previous build
rm -rf "${BUILD_RISCV_DIR}"

cmake \
  -G Ninja \
  -B "${BUILD_RISCV_DIR}" \
  -S "${IREE_SRC}" \
  -DCMAKE_TOOLCHAIN_FILE="${SCRIPT_DIR}/riscv_firesim.toolchain.cmake" \
  -DIREE_HOST_BIN_DIR="${INSTALL_HOST_DIR}/bin" \
  -DIREE_BUILD_COMPILER=OFF \
  -DRISCV_TOOLCHAIN_ROOT="${RISCV_TOOLCHAIN_ROOT}" \
  -DIREE_ARCH=riscv_64 \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DIREE_ENABLE_THREADING=OFF \
  -DIREE_HAL_DRIVER_DEFAULTS=OFF \
  -DIREE_HAL_DRIVER_LOCAL_SYNC=ON \
  -DIREE_HAL_EXECUTABLE_LOADER_DEFAULTS=OFF \
  -DIREE_HAL_EXECUTABLE_LOADER_EMBEDDED_ELF=ON \
  -DIREE_HAL_EXECUTABLE_PLUGIN_DEFAULTS=OFF \
  -DIREE_HAL_EXECUTABLE_PLUGIN_EMBEDDED_ELF=ON \
  -DIREE_UK_BUILD_RISCV_64_ZVFH=OFF \
  -DIREE_UK_BUILD_RISCV_64_ZVFHMIN=OFF \
  -DIREE_BUILD_SAMPLES=ON \
  -DIREE_BUILD_TESTS=OFF

echo "Configuration done. Building..."
cmake --build "${BUILD_RISCV_DIR}" --target simple_embedding_embedded_sync --verbose
# cmake --build "${BUILD_RISCV_DIR}" --target simple_embedding_embedded_sync_fc
# cmake --build "${BUILD_RISCV_DIR}" --target simple_embedding_embedded_sync_vector_fc
# cmake --build "${BUILD_RISCV_DIR}" --target simple_embedding_embedded_sync_vmvx_fc

echo "========================================================"
echo " Build Complete!"
echo " Binaries in: ${BUILD_RISCV_DIR}/samples/simple_embedding/"
echo "========================================================"