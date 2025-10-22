import torch
import torchvision.models as models
import argparse
import os
import copy
from contextlib import suppress

from torch.ao.quantization import get_default_qconfig_mapping
from torch.ao.quantization.quantize_fx import prepare_fx, convert_fx, prepare_qat_fx
from torch.ao.quantization.qconfig_mapping import QConfigMapping

with suppress(ImportError):
    from torchvision.models.squeezenet import SqueezeNet1_0_Weights
with suppress(ImportError):
    from torchvision.models.mobilenetv2 import MobileNet_V2_Weights
with suppress(ImportError):
    from torchvision.models.mobilenetv3 import MobileNet_V3_Small_Weights, MobileNet_V3_Large_Weights
with suppress(ImportError):
    from torchvision.models.alexnet import AlexNet_Weights
with suppress(ImportError):
    from torchvision.models.resnet import ResNet50_Weights

# --- MLIR and Turbine Imports ---
try:
    from torch_mlir.fx import export_and_import
    from torch_mlir import ir
    from torch_mlir.dialects.torch import register_dialect as register_torch_dialect
    print("Successfully imported torch-mlir.")
except ImportError:
    print("Warning: torch-mlir is not installed. The 'torch-mlir' export path will be unavailable.")
    export_and_import = None

try:
    import iree.turbine.aot as aot
    print("Successfully imported iree-turbine.")
except ImportError:
    print("Warning: iree-turbine is not installed. The 'iree-turbine' export path will be unavailable.")
    aot = None

def get_model(model_name: str):
    """Loads a pretrained model based on the provided name."""
    print(f"--- Loading model: {model_name} ---")
    try:
        if model_name == "squeezenet":
            return models.squeezenet1_0(weights=SqueezeNet1_0_Weights.DEFAULT).eval()
        elif model_name == "alexnet":
            return models.alexnet(weights=AlexNet_Weights.DEFAULT).eval()
        elif model_name == "resnet":
            return models.resnet50(weights=ResNet50_Weights.DEFAULT).eval()
        elif model_name == "mobilenetv3small":
            return models.mobilenet_v3_small(weights=MobileNet_V3_Small_Weights.DEFAULT).eval()
        elif model_name == "mobilenetv3large":
            return models.mobilenet_v3_large(weights=MobileNet_V3_Large_Weights.DEFAULT).eval()
        elif model_name == "mobilenet":
            return models.mobilenet_v2(weights=MobileNet_V2_Weights.DEFAULT).eval()
        else:
            raise ValueError(f"Unsupported model: {model_name}")
    except Exception as e:
        print(f"Error loading model '{model_name}': {e}")
        return None

def quantize_static(model_fp, example_inputs):
    """Applies Post-Training Static Quantization."""
    print("\n--- Attempting Post-Training Static Quantization ---")
    try:
        model_to_quantize = copy.deepcopy(model_fp)
        model_to_quantize.eval()
        qconfig_mapping = get_default_qconfig_mapping("x86")
        prepared_model = prepare_fx(model_to_quantize, qconfig_mapping, example_inputs)
        
        print("Model prepared for static quantization. Calibrating with sample data...")
        with torch.no_grad():
            for _ in range(10):
                prepared_model(*example_inputs)
        print("Calibration complete.")
        
        quantized_model = convert_fx(prepared_model)
        print("Static quantization successful.")
        return quantized_model
    except Exception as e:
        print(f"Error during static quantization: {e}")
        return None

def quantize_dynamic(model_fp, example_inputs):
    """Applies Post-Training Dynamic Quantization (Weight-Only)."""
    print("\n--- Attempting Post-Training Dynamic Quantization ---")
    try:
        model_to_quantize = copy.deepcopy(model_fp)
        model_to_quantize.eval()
        qconfig_mapping = QConfigMapping().set_global(torch.ao.quantization.default_dynamic_qconfig)
        prepared_model = prepare_fx(model_to_quantize, qconfig_mapping, example_inputs)
        quantized_model = convert_fx(prepared_model)
        print("Dynamic quantization successful.")
        return quantized_model
    except Exception as e:
        print(f"Error during dynamic quantization: {e}")
        return None

def export_with_torch_mlir(model, example_inputs, output_path):
    """Exports the model to MLIR using the torch-mlir frontend."""
    if export_and_import is None:
        print("Skipping export with torch-mlir as it is not installed.")
        return
    model = model.eval()
    print("######################################################################")
    print(f"\n--- Attempting export with torch-mlir to {output_path} ---")
    mlir_module = export_and_import(
        model,
        *example_inputs,
    )
    
    mlir_str = mlir_module.operation.get_asm(large_elements_limit=10)
    with open(output_path, "w") as f:
        f.write(mlir_str)
    print(f"Successfully exported to {output_path} using torch-mlir.")

def export_with_iree_turbine(model, example_inputs, output_path):
    """Exports the model to MLIR using the IREE Turbine AOT exporter."""
    if aot is None:
        print("Skipping export with iree-turbine as it is not installed.")
        return
    print("######################################################################")
    print(f"\n--- Attempting export with iree-turbine to {output_path} ---")

    exported_module = aot.export(model, *example_inputs)
    mlir_str = str(exported_module.mlir_module)

    with open(output_path, "w") as f:
        f.write(mlir_str)
    print(f"Successfully exported to {output_path} using iree-turbine.")

def main():
    parser = argparse.ArgumentParser(
        description="Quantize a PyTorch model and export to MLIR via multiple paths."
    )
    parser.add_argument(
        "--model", type=str, default="mobilenet",
        choices=["mobilenet", "squeezenet", "alexnet", "resnet", "mobilenetv3small", "mobilenetv3large"]
    )
    parser.add_argument(
        "--output_dir", type=str, default="output",
        help="Directory to save the exported MLIR files."
    )
    args = parser.parse_args()

    print(f"Torch version: {torch.__version__}")
    os.makedirs(args.output_dir, exist_ok=True)

    # --- Step 1: Load Model ---
    model_fp32 = get_model(args.model)
    if model_fp32 is None:
        return
        
    sample_inputs = (torch.randn(1, 3, 224, 224),)

    # --- Step 2: Apply Quantization ---
    quantized_model = quantize_static(model_fp32, sample_inputs)

 
    _ = quantize_dynamic(model_fp32, sample_inputs)

    # --- Step 3: Export to MLIR using different backends ---
    if quantized_model:
        # Path 1: Export the converted (quantized) model with torch-mlir
        torch_mlir_path = os.path.join(args.output_dir, f"{args.model}_quant_torch_mlir.mlir")
        export_with_torch_mlir(quantized_model, sample_inputs, torch_mlir_path)

        # Path 2: Export the prepared (fake-quant) model with IREE Turbine
        turbine_path = os.path.join(args.output_dir, f"{args.model}_quant_turbine.mlir")
        export_with_iree_turbine(quantized_model, sample_inputs, turbine_path)
    else:
        print("Skipping export steps because quantization failed.")

if __name__ == "__main__":
    main()

