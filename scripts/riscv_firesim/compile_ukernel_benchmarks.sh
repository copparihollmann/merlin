#!/bin/bash
set -e

export WORKSPACE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
export BUILD_HOST_DIR=${WORKSPACE_DIR}/build-host

# Paths
SAMPLE_DIR="${WORKSPACE_DIR}/samples/custom_dispatch_ukernels_saturn"
OUTPUT_DIR="${SAMPLE_DIR}/compilation_phases_fc/riscv"
MODEL_MLIR="${SAMPLE_DIR}/model_quantized_ort.mlir"

mkdir -p "${OUTPUT_DIR}/executables_opu"
mkdir -p "${OUTPUT_DIR}/executables_baseline"

echo "--- Compiling Ukernel Benchmarks (A/B Test) ---"

# 1. Optimized (Ukernels Enabled)
echo "1. Compiling Optimized (Ukernels Enabled)..."
${BUILD_HOST_DIR}/install/bin/iree-compile \
  "${MODEL_MLIR}" \
  -o /dev/null \
  --iree-hal-target-backends=llvm-cpu \
  --iree-llvmcpu-target-triple=riscv64-unknown-linux-gnu \
  --iree-llvmcpu-target-cpu-features="+m,+a,+f,+d,+v,+zvl128b,+zvfh,+zvbb" \
  --iree-llvmcpu-target-abi=lp64d \
  --iree-dispatch-creation-data-tiling \
  --iree-llvmcpu-enable-ukernels="all" \
  --iree-flow-export-benchmark-funcs \
  --iree-opt-level=O3 \
  --iree-hal-dump-executable-files-to="${OUTPUT_DIR}/executables_opu"

# 2. Baseline (Ukernels Disabled)
echo "2. Compiling Baseline (Ukernels Disabled)..."
${BUILD_HOST_DIR}/install/bin/iree-compile \
  "${MODEL_MLIR}" \
  -o /dev/null \
  --iree-hal-target-backends=llvm-cpu \
  --iree-llvmcpu-target-triple=riscv64-unknown-linux-gnu \
  --iree-llvmcpu-target-cpu-features="+m,+a,+f,+d,+v,+zvl128b,+zvfh,+zvbb" \
  --iree-llvmcpu-target-abi=lp64d \
  --iree-dispatch-creation-data-tiling \
  --iree-llvmcpu-enable-ukernels="none" \
  --iree-flow-export-benchmark-funcs \
  --iree-opt-level=O3 \
  --iree-hal-dump-executable-files-to="${OUTPUT_DIR}/executables_baseline"

echo "Compilation phases dumped to ${OUTPUT_DIR}"
