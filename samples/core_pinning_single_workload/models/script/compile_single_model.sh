#!/bin/bash
set -e

export WORKSPACE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
export BUILD_HOST_DIR=${WORKSPACE_DIR}/build-host

COMPILE_BIN=${WORKSPACE_DIR}/build-iree-host/tools/iree-compile
if [ ! -x "$COMPILE_BIN" ]; then
    COMPILE_BIN=${BUILD_HOST_DIR}/install/bin/iree-compile
fi
if [ ! -x "$COMPILE_BIN" ]; then
    echo "Error: iree-compile not found in build-iree-host/tools or build-host/install/bin" >&2
    exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BENCH_DIR="${SCRIPT_DIR}/dronet/models/benchmarks"
OUTPUT_DIR="${BENCH_DIR}/vmfb"
PHASES_DIR="${OUTPUT_DIR}/phases"
mkdir -p "${OUTPUT_DIR}" "${PHASES_DIR}"

MODEL_PATH="${BENCH_DIR}/module_main_graph\$async_dispatch_0_system_elf_riscv_64_benchmark.mlir"
BASE_NAME=$(basename "${MODEL_PATH}" .mlir)
OUTPUT_PATH="${OUTPUT_DIR}/${BASE_NAME}.vmfb"

echo "Compiling ${MODEL_PATH} -> ${OUTPUT_PATH} for SpacemiT (Banana Pi)..."

${COMPILE_BIN} \
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
    --iree-vm-bytecode-module-strip-source-map=false \
    --dump-compilation-phases-to="${PHASES_DIR}/"

echo "Compilation complete: ${OUTPUT_PATH}"
echo "Compilation phases dumped to: ${PHASES_DIR}/"

echo "Creating archive of compilation phases..."
cd "${PHASES_DIR}"
zip -r ../dispatch_0_phases.zip *
echo "Archive created: ${OUTPUT_DIR}/dispatch_0_phases.zip"
