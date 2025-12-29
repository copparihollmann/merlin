#!/bin/bash
set -e

# --- Configuration ---
# Get the workspace root (2 levels up from this script)
export WORKSPACE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
# Default to standard IREE
export IREE_SRC=${IREE_SRC:-"${WORKSPACE_DIR}/third_party/iree"}

# Host Paths
export BUILD_HOST_DIR=${WORKSPACE_DIR}/build-host
export INSTALL_HOST_DIR=${BUILD_HOST_DIR}/install

echo "========================================================"
echo " Building IREE Host (Standard Release)"
echo " Source:      ${IREE_SRC}"
echo " Build Dir:   ${BUILD_HOST_DIR}"
echo " Install Dir: ${INSTALL_HOST_DIR}"
echo "========================================================"

cmake \
    -G Ninja \
    -B "${BUILD_HOST_DIR}" \
    -S "${IREE_SRC}" \
    -DCMAKE_INSTALL_PREFIX="${INSTALL_HOST_DIR}" \
    -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DIREE_ENABLE_LLD=ON \
    -DPython3_EXECUTABLE="$(which python3)" \
    -DCMAKE_CXX_FLAGS="-Wno-error=cpp" \
    -DIREE_TARGET_BACKEND_DEFAULTS=OFF \
    -DIREE_TARGET_BACKEND_LLVM_CPU=ON \
    -DIREE_HAL_DRIVER_DEFAULTS=OFF \
    -DIREE_HAL_DRIVER_LOCAL_SYNC=ON \
    -DIREE_HAL_DRIVER_LOCAL_TASK=ON \
    -DIREE_BUILD_PYTHON_BINDINGS=ON \
    -DIREE_ENABLE_ASSERTIONS=ON \
    -DCMAKE_C_COMPILER_LAUNCHER=ccache \
    -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
    -DIREE_BUILD_TESTS=ON \
    -DIREE_BUILD_SAMPLES=ON

cmake --build "${BUILD_HOST_DIR}" --target install
