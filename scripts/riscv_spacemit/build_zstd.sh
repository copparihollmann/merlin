#!/bin/bash
set -e

export WORKSPACE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
export RISCV_TOOLCHAIN_ROOT=${RISCV_TOOLCHAIN_ROOT:-"${WORKSPACE_DIR}/riscv-tools-spacemit/spacemit-toolchain-linux-glibc-x86_64-v1.1.2"}

echo "Building Zstd for SpacemiT Toolchain..."

# 1. Clone Zstd if not exists
cd ${WORKSPACE_DIR}
if [ ! -d "zstd" ]; then
    git clone https://github.com/facebook/zstd.git
fi
cd zstd
rm -rf build-riscv-spacemit

# 2. Configure & Install
cmake -G Ninja -B build-riscv-spacemit \
    -S build/cmake \
    -DCMAKE_SYSTEM_NAME=Linux \
    -DCMAKE_SYSTEM_PROCESSOR=riscv64 \
    -DCMAKE_C_COMPILER="${RISCV_TOOLCHAIN_ROOT}/bin/clang" \
    -DCMAKE_CXX_COMPILER="${RISCV_TOOLCHAIN_ROOT}/bin/clang++" \
    -DCMAKE_C_FLAGS="--sysroot=${RISCV_TOOLCHAIN_ROOT}/sysroot -march=rv64gc -mabi=lp64d" \
    -DCMAKE_CXX_FLAGS="--sysroot=${RISCV_TOOLCHAIN_ROOT}/sysroot -march=rv64gc -mabi=lp64d" \
    -DCMAKE_INSTALL_PREFIX="${RISCV_TOOLCHAIN_ROOT}/sysroot/usr" \
    -DZSTD_BUILD_PROGRAMS=OFF \
    -DZSTD_BUILD_SHARED=OFF \
    -DZSTD_BUILD_STATIC=ON

cmake --build build-riscv-spacemit --target install
echo "Zstd installed to ${RISCV_TOOLCHAIN_ROOT}/sysroot/usr"
