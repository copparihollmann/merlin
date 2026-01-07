#!/bin/bash

# Directory containing IREE tools
# Using the same build directory as the reference script
IREE_TOOL_DIR="/scratch2/agustin/merlin/build-iree-host-deb-tracy/tools"
COMPILE_TOOL="$IREE_TOOL_DIR/iree-compile"

# Assuming iree-import-onnx is in the path (e.g. from a python venv)
IMPORT_TOOL="iree-import-onnx"

# Input/Output directories
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUTPUT_DIR="$BASE_DIR/models"

mkdir -p "$OUTPUT_DIR"
TARGET_MODEL="dronet.onnx"

# Common flags for both main model and dispatches
COMMON_FLAGS=(
    "--iree-hal-target-backends=llvm-cpu"
    "--iree-llvmcpu-target-cpu=host"
    "--iree-opt-level=O3"
    "--iree-hal-executable-debug-level=3"
    "--iree-llvmcpu-link-embedded=false"
    "--dump-compilation-phases-to=$OUTPUT_DIR/phases/"
    "--iree-flow-dump-dispatch-graph"
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

    # Ensure per-model output directories exist
    mkdir -p "$OUTPUT_DIR/dispatch_graphs" "$OUTPUT_DIR/sources" "$OUTPUT_DIR/files" "$OUTPUT_DIR/binaries" "$OUTPUT_DIR/configs" "$OUTPUT_DIR/benchmarks"
    GRAPH_OUT="$OUTPUT_DIR/dispatch_graphs/${model_name}_dispatch_graph.dot"

    # Define per-model host flags including dispatch graph output
    HOST_FLAGS_WITH_GRAPH=(
        "${COMMON_FLAGS[@]}"
        "--iree-flow-dump-dispatch-graph-output-file=$GRAPH_OUT"
        "--iree-hal-dump-executable-sources-to=$OUTPUT_DIR/sources/"
        "--iree-hal-dump-executable-files-to=$OUTPUT_DIR/files/"
        "--iree-hal-dump-executable-binaries-to=$OUTPUT_DIR/binaries/"
        "--iree-hal-dump-executable-configurations-to=$OUTPUT_DIR/configs/"
        "--iree-hal-dump-executable-benchmarks-to=$OUTPUT_DIR/benchmarks/"
    )

    # Import ONNX to MLIR
    MLIR_OUTPUT="$OUTPUT_DIR/${model_name}.mlir"

    # If ONNX references external data and sidecar is missing, inline weights into a temporary ONNX
    ONNX_INPUT="$onnx_file"
    if [ ! -f "$onnx_file.data" ]; then
      echo "  ONNX external data sidecar not found; attempting to inline weights..."
      INLINED_ONNX="$OUTPUT_DIR/${model_name}_inlined.onnx"
        python3 - <<PY
import onnx, sys
from pathlib import Path
inp = Path("$onnx_file")
out = Path("$INLINED_ONNX")
model = onnx.load(str(inp))
# Load any external data from the input directory if present (no-op if none)
onnx.external_data_helper.load_external_data_for_model(model, base_dir=str(inp.parent))
onnx.save_model(model, str(out), save_as_external_data=False)
print("Inlined ONNX written:", out)
PY
      if [ -f "$INLINED_ONNX" ]; then
        ONNX_INPUT="$INLINED_ONNX"
      fi
    fi
    
    echo "  Importing ONNX to MLIR..."
    "$IMPORT_TOOL" "$ONNX_INPUT" --opset-version 17 -o "$MLIR_OUTPUT"

    if [ $? -ne 0 ]; then
        echo "❌ Import failed for $model_name"
        continue
    fi

    # Compile MLIR to VMFB
    VMFB_OUTPUT="$OUTPUT_DIR/${model_name}_host.vmfb"
    
    echo "  Compiling to VMFB..."
    "$COMPILE_TOOL" "$MLIR_OUTPUT" \
        -o "$VMFB_OUTPUT" \
        "${HOST_FLAGS_WITH_GRAPH[@]}"

    if [ $? -eq 0 ]; then
        echo "✅ Successfully compiled: $VMFB_OUTPUT"
        echo "✅ Dispatch graph saved to: $GRAPH_OUT"
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
