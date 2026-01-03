#!/bin/bash
set -e

export WORKSPACE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
export BUILD_HOST_DIR=${WORKSPACE_DIR}/build-host

# Default model path (can be overridden)
MODEL_PATH=${1:-"model_quantized_ort.mlir"}
OUTPUT_PATH=${2:-"model_quantized_ort.vmfb"}

echo "Compiling ${MODEL_PATH} for SpacemiT (Banana Pi)..."

${BUILD_HOST_DIR}/install/bin/iree-compile \
    "${MODEL_PATH}" \
    -o "${OUTPUT_PATH}" \
    \
    --iree-hal-target-backends=llvm-cpu \
    --iree-llvmcpu-target-triple=riscv64-unknown-linux-gnu \
    --iree-llvmcpu-target-abi=lp64d \
    \
    --iree-llvmcpu-target-cpu-features="+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause" \
    --iree-llvmcpu-enable-ukernels="all" \
    --iree-opt-level=O3 \
    \
    --iree-hal-executable-debug-level=3 \
    --iree-llvmcpu-debug-symbols=true \
    --iree-llvmcpu-link-embedded=false \
    --iree-vm-bytecode-module-strip-source-map=false

echo "Compilation complete: ${OUTPUT_PATH}"
