#!/bin/bash
set -e

# --- Configuration ---
# Get the workspace root (2 levels up from this script)
export WORKSPACE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
export IREE_SRC=${IREE_SRC:-"${WORKSPACE_DIR}/third_party/iree_bar"}
PURPOSE="OPU"

# Host Paths
export BUILD_HOST_DIR=${WORKSPACE_DIR}/build-BAR-iree-host-debug-${PURPOSE}
export INSTALL_HOST_DIR=${BUILD_HOST_DIR}/install

export REBUILD=${REBUILD:-"0"}

echo "========================================================"
echo " Building IREE Host (Release + Tracy)"
echo " Source:      ${IREE_SRC}"
echo " Build Dir:   ${BUILD_HOST_DIR}"
echo " Install Dir: ${INSTALL_HOST_DIR}"
echo "========================================================"

if [ "${REBUILD}" -eq "1" ]; then
    rm -rf "${INSTALL_HOST_DIR}"
fi

cmake \
    -G Ninja \
    -B "${BUILD_HOST_DIR}" \
    -S "${IREE_SRC}" \
    -DCMAKE_INSTALL_PREFIX="${INSTALL_HOST_DIR}" \
    -DCMAKE_BUILD_TYPE=Debug \
    -DCMAKE_CXX_FLAGS="-Wno-error=cpp -fno-omit-frame-pointer" \
    -DCMAKE_C_FLAGS="-fno-omit-frame-pointer" \
    -DIREE_ENABLE_LLD=ON \
    -DPython3_EXECUTABLE="$(which python3)" \
    -DIREE_ENABLE_RUNTIME_TRACING=OFF \
    -DIREE_ENABLE_COMPILER_TRACING=OFF \
    -DIREE_BUILD_SAMPLES=OFF \
    -DIREE_TARGET_BACKEND_DEFAULTS=OFF \
    -DIREE_TARGET_BACKEND_LLVM_CPU=ON \
    -DIREE_HAL_DRIVER_DEFAULTS=OFF \
    -DIREE_HAL_DRIVER_LOCAL_SYNC=ON \
    -DIREE_HAL_DRIVER_LOCAL_TASK=ON \
    -DIREE_BUILD_PYTHON_BINDINGS=OFF \
    -DIREE_ENABLE_ASSERTIONS=ON \
    -DCMAKE_C_COMPILER_LAUNCHER=ccache \
    -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
    -DIREE_ENABLE_ASAN=ON 

cmake --build "${BUILD_HOST_DIR}" --target install

echo "========================================================"
echo " IREE Host Build (Debug + ASAN) Complete"
echo " Build Dir:   ${BUILD_HOST_DIR}"
echo " Install Dir: ${INSTALL_HOST_DIR}"
echo "========================================================"
