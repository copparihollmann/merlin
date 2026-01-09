#!/bin/bash

# Directory containing IREE tools
# Using the same build directory as the reference script
IREE_TOOL_DIR="/scratch2/agustin/merlin/build-iree-host-deb-tracy/tools"
COMPILE_TOOL="$IREE_TOOL_DIR/iree-compile"

# Assuming iree-import-onnx is in the path (e.g. from a python venv)
IMPORT_TOOL="iree-import-onnx"

# Input/Output directories
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUTPUT_DIR="$BASE_DIR/models_scalar"

mkdir -p "$OUTPUT_DIR"
TARGET_MODEL="glpdepth.onnx"

# Common flags for both main model and dispatches
COMMON_FLAGS=(
    "--iree-hal-target-backends=llvm-cpu"
    "--iree-llvmcpu-target-triple=riscv64-unknown-linux-gnu"
    "--iree-opt-level=O3"
    "--iree-llvmcpu-target-abi=lp64d"
    "--iree-llvmcpu-target-cpu=spacemit-x60"
    "--iree-llvmcpu-target-cpu-features=+m,+a,+f,+d,+c"
    "--iree-llvmcpu-enable-ukernels=none"
    # "--iree-llvmcpu-target-vector-width-in-bytes=32"
    # "--iree-llvmcpu-loop-vectorization=true"
    "--iree-dispatch-creation-data-tiling=true"
    # "--riscv-v-fixed-length-vector-lmul-max=8"
    # "--iree-hal-target-backends=llvm-cpu"
    # "--iree-llvmcpu-target-triple=riscv64-unknown-linux-gnu"
    # "--iree-llvmcpu-target-abi=lp64d"
    # "--iree-llvmcpu-target-cpu-features="+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause""
    # "--iree-opt-level=O3"
    # "--iree-hal-executable-debug-level=3"
    # "--iree-llvmcpu-link-embedded=false"
    # "--dump-compilation-phases-to=$OUTPUT_DIR/phases/"
    # "--iree-flow-dump-dispatch-graph"
    # "--debug-only=iree-dump-executable-benchmarks"
)

# Flags for Host Target
HOST_FLAGS=(
    "${COMMON_FLAGS[@]}"
    "--iree-hal-dump-executable-sources-to=$OUTPUT_DIR/sources/"
    "--iree-hal-dump-executable-files-to=$OUTPUT_DIR/files/"
    "--iree-hal-dump-executable-binaries-to=$OUTPUT_DIR/binaries/"
    "--iree-hal-dump-executable-configurations-to=$OUTPUT_DIR/configs/"
    "--iree-hal-dump-executable-benchmarks-to=$OUTPUT_DIR/benchmarks/"
)

echo "Searching for ONNX files in $BASE_DIR..."


# Find the specific model file
find "$BASE_DIR" -name "$TARGET_MODEL" | while read -r onnx_file; do
    filename=$(basename -- "$onnx_file")
    model_name="${filename%.*}"
    
    echo "=========================================="
    echo "Processing $model_name from $onnx_file..."

    # Import ONNX to MLIR
    MLIR_OUTPUT="$OUTPUT_DIR/${model_name}.mlir"
    
    echo "  Importing ONNX to MLIR..."
    "$IMPORT_TOOL" "$onnx_file" --opset-version 17 -o "$MLIR_OUTPUT"

    if [ $? -ne 0 ]; then
        echo "❌ Import failed for $model_name"
        continue
    fi

    # Compile MLIR to VMFB
    VMFB_OUTPUT="$OUTPUT_DIR/${model_name}_host.vmfb"
    
    echo "  Compiling to VMFB..."
    "$COMPILE_TOOL" "$MLIR_OUTPUT" \
        -o "$VMFB_OUTPUT" \
        "${HOST_FLAGS[@]}"

    if [ $? -eq 0 ]; then
        echo "✅ Successfully compiled: $VMFB_OUTPUT"
    else
        echo "❌ Compilation failed for: $model_name"
    fi
done

echo "=========================================="
echo "Compiling individual dispatch sources..."

SOURCES_DIR="$OUTPUT_DIR/converted"
VMFB_DIR="$OUTPUT_DIR/converted/vmfb"

if [ -d "$SOURCES_DIR" ]; then
    mkdir -p "$VMFB_DIR"
    
    find "$SOURCES_DIR" -name "module_main_graph\$async_dispatch_*.mlir" | sort -V | while read -r mlir_file; do
        filename=$(basename -- "$mlir_file")
        if [[ "$filename" =~ module_main_graph\$async_dispatch_([0-9]+)\.mlir ]]; then
            dispatch_num="${BASH_REMATCH[1]}"
            output_vmfb="$VMFB_DIR/dispatch_${dispatch_num}.vmfb"
            
            echo "  Compiling $filename -> dispatch_${dispatch_num}.vmfb"
            "$COMPILE_TOOL" "$mlir_file" -o "$output_vmfb" "${COMMON_FLAGS[@]}"
        fi
    done
fi

echo "=========================================="
echo "Main Model Compilation Process Completed."
