#!/bin/bash
set -e

# --- Configuration ---
export WORKSPACE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
export IREE_SRC=${IREE_SRC:-"${WORKSPACE_DIR}/third_party/iree_bar"}
export BUILD_HOST_DIR=${WORKSPACE_DIR}/build-bar-iree-host-debug-clang
export INSTALL_HOST_DIR=${BUILD_HOST_DIR}/install

echo "========================================================"
echo " Building IREE Host (Clang + ASan + LD_PRELOAD)"
echo "========================================================"

# 1. Find the exact ASan library for LD_PRELOAD
# We use the symlink we created earlier: libclang_rt.asan.so
CLANG_RESOURCE_DIR=$(${CONDA_PREFIX}/bin/clang -print-resource-dir)
ASAN_LIB="${CLANG_RESOURCE_DIR}/lib/x86_64-conda-linux-gnu/libclang_rt.asan.so"

if [ ! -f "$ASAN_LIB" ]; then
    echo "Error: Could not find ASan library at $ASAN_LIB"
    echo "Did you run the symlink fix step?"
    exit 1
fi

echo " Using ASan Library: ${ASAN_LIB}"

# 2. Export Environment Variables (The "IREE Way")
# This fixes the "compiled but failed to run" error by forcing the library 
# to load for every single process, including CMake's internal checks.
export LD_PRELOAD="${ASAN_LIB}"
export ASAN_SYMBOLIZER_PATH="${CONDA_PREFIX}/bin/llvm-symbolizer"
export ASAN_OPTIONS="detect_leaks=0" # Often needed during build to avoid false positives

export CC="${CONDA_PREFIX}/bin/clang"
export CXX="${CONDA_PREFIX}/bin/clang++"

# 3. Clean & Configure
rm -rf "${BUILD_HOST_DIR}"

cmake \
    -G Ninja \
    -B "${BUILD_HOST_DIR}" \
    -S "${IREE_SRC}" \
    -DCMAKE_INSTALL_PREFIX="${INSTALL_HOST_DIR}" \
    -DCMAKE_BUILD_TYPE=Debug \
    \
    -DIREE_ENABLE_LLD=ON \
    -DPython3_EXECUTABLE="$(which python3)" \
    \
    -DIREE_TARGET_BACKEND_DEFAULTS=OFF \
    -DIREE_TARGET_BACKEND_LLVM_CPU=ON \
    -DIREE_HAL_DRIVER_DEFAULTS=OFF \
    -DIREE_HAL_DRIVER_LOCAL_SYNC=ON \
    -DIREE_HAL_DRIVER_LOCAL_TASK=ON \
    \
    -DIREE_BUILD_PYTHON_BINDINGS=ON \
    -DIREE_ENABLE_ASSERTIONS=ON \
    -DCMAKE_C_COMPILER_LAUNCHER=ccache \
    -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
    -DIREE_BUILD_TESTS=ON \
    -DIREE_BUILD_SAMPLES=ON \
    \
    -DIREE_ENABLE_ASAN=ON \
    -DCMAKE_C_FLAGS="--target=x86_64-conda-linux-gnu --gcc-toolchain=${CONDA_PREFIX}" \
    -DCMAKE_CXX_FLAGS="-Wno-error=cpp --target=x86_64-conda-linux-gnu --gcc-toolchain=${CONDA_PREFIX}" \
    \
    -DCMAKE_EXE_LINKER_FLAGS="-shared-libasan --target=x86_64-conda-linux-gnu --gcc-toolchain=${CONDA_PREFIX} -L${CONDA_PREFIX}/lib" \
    -DCMAKE_SHARED_LINKER_FLAGS="-shared-libasan --target=x86_64-conda-linux-gnu --gcc-toolchain=${CONDA_PREFIX} -L${CONDA_PREFIX}/lib" \
    -DCMAKE_MODULE_LINKER_FLAGS="-shared-libasan --target=x86_64-conda-linux-gnu --gcc-toolchain=${CONDA_PREFIX} -L${CONDA_PREFIX}/lib"

# 4. Build
cmake --build "${BUILD_HOST_DIR}" --target multi_core_runner