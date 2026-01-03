#!/bin/bash
set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
export WORKSPACE_DIR="$(dirname "$(dirname "$SCRIPT_DIR")")"
export IREE_SRC=${WORKSPACE_DIR}/third_party/iree_bar
export BUILD_DIR=${WORKSPACE_DIR}/build-iree-bare-metal

# --- 1. POINT TO CHIPYARD GCC (Needed for libraries!) ---
export RISCV_TOOLCHAIN_ROOT="/scratch2/agustin/chipyard/.conda-env/riscv-tools"

echo "========================================================"
echo " Building IREE with Clang + VMVX + HTIF"
echo " Borrowing Libs from: ${RISCV_TOOLCHAIN_ROOT}"
echo "========================================================"

# Clean
rm -rf "${BUILD_DIR}"
mkdir -p "${BUILD_DIR}"

# --- 2. Copy HTIF Linker Script (CRITICAL) ---
if [ -f "/scratch2/agustin/chipyard/tests/htif.ld" ]; then
    cp /scratch2/agustin/chipyard/tests/htif.ld "${BUILD_DIR}/"
else
    echo "ERROR: Could not find htif.ld in /scratch2/agustin/chipyard/tests/"
    exit 1
fi

# --- 3. Configure ---
cmake \
  -G Ninja \
  -B "${BUILD_DIR}" \
  -S "${IREE_SRC}" \
  -DCMAKE_TOOLCHAIN_FILE="${SCRIPT_DIR}/riscv_firesim.toolchain.cmake" \
  -DIREE_HOST_BIN_DIR="${WORKSPACE_DIR}/build-iree-host-release/install/bin" \
  -DIREE_BUILD_COMPILER=OFF \
  -DIREE_ARCH=riscv_64 \
  -DCMAKE_BUILD_TYPE=Release \
  -DIREE_BUILD_SAMPLES=ON \
  -DIREE_BUILD_TESTS=OFF

# --- 4. Build ---
echo "Building..."
cmake --build "${BUILD_DIR}" --target "${IREE_SRC}"samples/simple_embedding/all 

echo "========================================================"
echo " Build Complete!"
echo " Try running the VMVX target with Spike:"
echo " spike --isa=rv64gcv ${BUILD_DIR}/samples/simple_embedding_fc/simple_embedding_embedded_sync_vector"
echo "========================================================"