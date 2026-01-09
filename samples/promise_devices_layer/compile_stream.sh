#!/bin/bash

# ==============================================================================
# Configuration
# ==============================================================================
# The input file containing the High-Level Schedule (flow.tensor.transfer + linalg)
INPUT_FILE="phases_stream/input.7.stream.mlir"

# The output compiled binary
OUTPUT_FILE="static_schedule.vmfb"

# ==============================================================================
# Compilation
# ==============================================================================
echo "Compiling ${INPUT_FILE}..."

iree-compile "${INPUT_FILE}" \
  --iree-execution-model=async-external \
  --iree-hal-target-device=device_a=local[0] \
  --iree-hal-target-device=device_b=local[1] \
  --iree-hal-target-device=device_ab=local[2] \
  --iree-hal-local-target-device-backends=llvm-cpu \
  --dump-compilation-phases-to=/scratch2/agustin/merlin/samples/promise_devices_layer/phases_stream \
  -o "${OUTPUT_FILE}" \
  --compile-from=stream

echo "Build complete: ${OUTPUT_FILE}"