#!/bin/bash

# ==============================================================================
# Configuration & Setup
# ==============================================================================

# Exit on error, undefined vars, and pipe failures
set -euo pipefail

# ------------------------------------------------------------------------------
# 1. Selection: Define Models and Configurations
# ------------------------------------------------------------------------------

# Models to process (folder names)
TARGET_MODELS=("dronet" "glpdepth" "fastdepth" "MLP") 

# Configurations to build (comment out the ones you don't want)
TARGET_CONFIGS=("RVV" "SCALAR")

# ------------------------------------------------------------------------------
# 2. Toolchain Setup
# ------------------------------------------------------------------------------

# Allow overriding IREE_TOOL_DIR via environment variable
IREE_TOOL_DIR="${IREE_TOOL_DIR:-/scratch2/agustin/merlin/build-iree-host-deb-tracy/tools}"
COMPILE_TOOL="$IREE_TOOL_DIR/iree-compile"

# Check if tools exist
if [ ! -f "$COMPILE_TOOL" ]; then
    echo "❌ Error: iree-compile not found at $COMPILE_TOOL"
    echo "   Please set IREE_TOOL_DIR environment variable to your build path."
    exit 1
fi

IMPORT_TOOL="iree-import-onnx"

# Base directory is where this script is located
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUTPUT_ROOT="$BASE_DIR/compiled_models"

mkdir -p "$OUTPUT_ROOT"

# ==============================================================================
# 3. Flag Definitions
# ==============================================================================

# --- Base Flags (Common to ALL configurations) ---
BASE_FLAGS=(
    "--iree-hal-target-device=local"
    "--iree-hal-local-target-device-backends=llvm-cpu"
    "--iree-llvmcpu-target-cpu=spacemit-x60"
    "--iree-llvmcpu-target-triple=riscv64-unknown-linux-gnu"
    "--iree-llvmcpu-target-cpu-features=+m,+a,+f,+d,+c,+v,+zvl256b"
    "--iree-llvmcpu-target-abi=lp64d"
    "--iree-dispatch-creation-data-tiling=true"
    "--iree-global-opt-propagate-transposes=true"
    "--iree-opt-level=O3"
    "--iree-vm-bytecode-module-strip-source-map=true"
)

# --- Configuration Specific Flags ---

# 1. NPU: Vectorized + Ukernels
NPU_FLAGS=(
    "${BASE_FLAGS[@]}"
    "--iree-llvmcpu-link-embedded=false"
    "--iree-llvmcpu-target-vector-width-in-bytes=32"
    "--iree-llvmcpu-loop-vectorization=true"
    "--riscv-v-fixed-length-vector-lmul-max=2"
    "--iree-llvmcpu-enable-ukernels=all"
    "--iree-llvmcpu-link-ukernel-bitcode=true"
)

# 2. RVV: Vectorized + NO Ukernels
RVV_FLAGS=(
    "${BASE_FLAGS[@]}"
    "--iree-llvmcpu-link-embedded=false"
    "--iree-llvmcpu-target-vector-width-in-bytes=32"
    "--iree-llvmcpu-loop-vectorization=true"
    "--riscv-v-fixed-length-vector-lmul-max=2"
    "--iree-llvmcpu-enable-ukernels=none"
)

# 3. SCALAR: Minimal Vectorization + NO Ukernels
SCALAR_FLAGS=(
    "${BASE_FLAGS[@]}"
    "--iree-llvmcpu-enable-ukernels=none"
)

# ==============================================================================
# Main Execution Loop
# ==============================================================================

for MODEL in "${TARGET_MODELS[@]}"; do
    for CONFIG in "${TARGET_CONFIGS[@]}"; do
        
        echo "################################################################################"
        echo "🚀 Processing Model: $MODEL | Config: spacemit_$CONFIG"
        echo "################################################################################"

        # ----------------------------------------------------------------------
        # Determine Flags for current Config
        # ----------------------------------------------------------------------
        case "$CONFIG" in
            "NPU")
                CURRENT_FLAGS=("${NPU_FLAGS[@]}")
                ;;
            "RVV")
                CURRENT_FLAGS=("${RVV_FLAGS[@]}")
                ;;
            "SCALAR")
                CURRENT_FLAGS=("${SCALAR_FLAGS[@]}")
                ;;
            *)
                echo "❌ Error: Unknown configuration '$CONFIG'"
                exit 1
                ;;
        esac

        # ----------------------------------------------------------------------
        # Setup Output Directories
        # ----------------------------------------------------------------------
        # Structure now includes 'spacemit_' prefix
        # Example: compiled_models/dronet/spacemit_NPU/
        
        OUTPUT_DIR="$OUTPUT_ROOT/$MODEL/spacemit_$CONFIG"
        mkdir -p "$OUTPUT_DIR"

        # Host flags for dumping artifacts specific to this run
        HOST_FLAGS=(
            "${CURRENT_FLAGS[@]}"
            "--iree-hal-dump-executable-sources-to=$OUTPUT_DIR/sources/"
            "--iree-hal-dump-executable-files-to=$OUTPUT_DIR/files/"
            "--iree-hal-dump-executable-binaries-to=$OUTPUT_DIR/binaries/"
            "--iree-hal-dump-executable-configurations-to=$OUTPUT_DIR/configs/"
            "--iree-hal-dump-executable-benchmarks-to=$OUTPUT_DIR/benchmarks/"
            "--dump-compilation-phases-to=$OUTPUT_DIR/phases/"
        )

        MLIR_OUTPUT="$OUTPUT_DIR/${MODEL}.mlir"
        SOURCE_ONNX="$BASE_DIR/$MODEL/$MODEL.onnx"
        SOURCE_MLIR="$BASE_DIR/$MODEL/$MODEL.mlir"
        GRAPH_OUT="$OUTPUT_DIR/${MODEL}_dispatch_graph.dot"

        # ----------------------------------------------------------------------
        # 4. Input Handling (ONNX -> MLIR)
        # ----------------------------------------------------------------------
        # We check/import specifically into this config folder to keep it self-contained
        
        if [ -f "$MLIR_OUTPUT" ]; then
            echo "  ℹ️  MLIR file already exists at $MLIR_OUTPUT. Skipping import."
        elif [ -f "$SOURCE_ONNX" ]; then
            echo "  found ONNX file: $SOURCE_ONNX"
            
            if ! command -v "$IMPORT_TOOL" &> /dev/null; then
                echo "❌ Error: $IMPORT_TOOL not found. Activate your python venv."
                exit 1
            fi

            echo "  Importing ONNX to MLIR..."
            "$IMPORT_TOOL" "$SOURCE_ONNX" --opset-version 17 -o "$MLIR_OUTPUT"
        elif [ -f "$SOURCE_MLIR" ]; then
            echo "  found Source MLIR file (no ONNX): $SOURCE_MLIR"
            echo "  Copying to output directory..."
            cp "$SOURCE_MLIR" "$MLIR_OUTPUT"
        else
            echo "❌ Error: Could not find $MODEL.onnx or $MODEL.mlir in $BASE_DIR/$MODEL/"
            continue
        fi

        # ----------------------------------------------------------------------
        # 5. Compile Main Model (VMFB)
        # ----------------------------------------------------------------------
        VMFB_OUTPUT="$OUTPUT_DIR/${MODEL}.vmfb"
        
        # Add graph output flag specifically for this run
        COMPILE_FLAGS_WITH_GRAPH=(
            "${HOST_FLAGS[@]}"
            "--iree-flow-dump-dispatch-graph"
            "--iree-flow-dump-dispatch-graph-output-file=$GRAPH_OUT"
        )
        
        echo "  Compiling main model ($CONFIG)..."
        "$COMPILE_TOOL" "$MLIR_OUTPUT" \
            -o "$VMFB_OUTPUT" \
            "${COMPILE_FLAGS_WITH_GRAPH[@]}"

        echo "✅ Successfully compiled: $VMFB_OUTPUT"

        # ----------------------------------------------------------------------
        # 6. Compile Dispatches
        # ----------------------------------------------------------------------
        echo "  Compiling individual dispatch sources..."
        
        SOURCES_DIR="$OUTPUT_DIR/benchmarks"
        VMFB_DIR="$SOURCES_DIR/vmfb"

        if [ -d "$SOURCES_DIR" ]; then
            mkdir -p "$VMFB_DIR"
            
            # Find files matching the pattern
            find "$SOURCES_DIR" -name "module_main_graph*dispatch_*.mlir" | sort -V | while read -r mlir_file; do
                filename=$(basename -- "$mlir_file")
                
                if [[ "$filename" =~ dispatch_([0-9]+) ]]; then
                    dispatch_num="${BASH_REMATCH[1]}"
                    output_vmfb="$VMFB_DIR/dispatch_${dispatch_num}.vmfb"
                    
                    echo "    Compiling $filename -> dispatch_${dispatch_num}.vmfb"
                    # Use the specific configuration flags here
                    "$COMPILE_TOOL" "$mlir_file" -o "$output_vmfb" "${CURRENT_FLAGS[@]}"
                else 
                    echo "    ⚠️ Skipping unrecognized file format: $filename"
                fi
            done
            
            # ------------------------------------------------------------------
            # 7. Zip Results (Flattened & Config Specific)
            # ------------------------------------------------------------------
            echo "  Zipping benchmark artifacts for $CONFIG..."
            
            # Naming convention: dronet_spacemit_NPU_benchmarks.zip
            ZIP_NAME="${MODEL}_spacemit_${CONFIG}_benchmarks.zip"
            ZIP_PATH="$OUTPUT_DIR/$ZIP_NAME"
            
            if ls "$SOURCES_DIR"/*.mlir >/dev/null 2>&1; then
                # -j flattens the folder structure
                zip -j "$ZIP_PATH" "$SOURCES_DIR"/*.mlir "$VMFB_DIR"/*.vmfb
                echo "✅ Created Flattened Archive: $ZIP_PATH"
            else
                echo "⚠️  No MLIR files found to zip."
            fi
            
        else
            echo "⚠️  No benchmark directory found at $SOURCES_DIR"
        fi

        echo "✅ Completed $MODEL [spacemit_$CONFIG]"
        echo ""
    done
done

echo "=========================================="
echo "🎉 All Models and Configurations Processed."