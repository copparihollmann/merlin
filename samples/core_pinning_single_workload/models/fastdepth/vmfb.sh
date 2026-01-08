#!/bin/bash
set -e

export WORKSPACE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
export BUILD_HOST_DIR=${WORKSPACE_DIR}/build-host

# iree-compile binary path
COMPILE_BIN="/scratch2/merlin/build-iree-host/tools/iree-compile"
if [ ! -x "$COMPILE_BIN" ]; then
    echo "Error: iree-compile not found at /scratch2/merlin/build-iree-host/tools/iree-compile" >&2
    exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BENCHMARK_DIR="$SCRIPT_DIR/models/benchmarks"
BENCHMARK_VMFB_DIR="$BENCHMARK_DIR/vmfb"
mkdir -p "$BENCHMARK_VMFB_DIR"
shopt -s nullglob

for mlir_file in "$BENCHMARK_DIR"/*.mlir; do
    filename=$(basename -- "$mlir_file")
    base_name="${filename%.mlir}"
    out_vmfb="$BENCHMARK_VMFB_DIR/${base_name}.vmfb"
    echo "Compiling benchmark ${mlir_file} -> ${out_vmfb}"
    "$COMPILE_BIN" \
        "$mlir_file" \
        -o "$out_vmfb" \
        \
        --iree-hal-target-backends=llvm-cpu \
        --iree-llvmcpu-target-triple=riscv64-unknown-linux-gnu \
        --iree-llvmcpu-target-abi=lp64d \
        \
        --iree-llvmcpu-target-cpu-features="+m,+a,+f,+d,+c,+v,+zvl256b" \
        --iree-llvmcpu-target-vector-width-in-bytes=32 \
        --iree-llvmcpu-loop-vectorization=true \
        --iree-dispatch-creation-data-tiling=true \
        --iree-opt-level=O3 \
        \
        --iree-hal-executable-debug-level=3 \
        --iree-llvmcpu-debug-symbols=true \
        --iree-llvmcpu-link-embedded=false \
        --iree-vm-bytecode-module-strip-source-map=false
    echo "Compilation complete: ${out_vmfb}"
done

echo "Creating archive of VMFB files..."
cd "$BENCHMARK_VMFB_DIR"
zip -r fastdepth_benchmark_vmfb.zip *.vmfb
echo "Archive created: ${BENCHMARK_VMFB_DIR}/fastdepth_benchmark_vmfb.zip"
