import torch
import torchvision.models as models
import argparse
import os
import numpy as np
import onnx

from torchvision.models.squeezenet import SqueezeNet1_0_Weights
from torchvision.models.mobilenetv2 import MobileNet_V2_Weights
from torchvision.models.mobilenetv3 import MobileNet_V3_Small_Weights, MobileNet_V3_Large_Weights
from torchvision.models.alexnet import AlexNet_Weights
from torchvision.models.resnet import ResNet50_Weights

# --- ONNX Runtime Imports ---
try:
    import onnxruntime
    from onnxruntime.quantization import quantize_static, QuantType, CalibrationDataReader
except ImportError:
    raise ImportError(
        "onnxruntime is not installed. Please install it with "
        "'pip install onnx onnxruntime'"
    )

# --- Argument Parsing ---
parser = argparse.ArgumentParser(
    description="Export a PyTorch FP32 model to ONNX, then perform post-training"
                " static quantization using the ONNX Runtime."
)
parser.add_argument(
    "--output_onnx_file",
    type=str,
    default="model_quantized_ort.onnx",
    help="Path to output the final quantized ONNX file.",
)
parser.add_argument(
    "--model",
    type=str,
    choices=[
        "mobilenet",
        "squeezenet",
        "alexnet",
        "resnet",
        "mobilenetv3small",
        "mobilenetv3large",
    ],
    default="mobilenet",
    help="Choose the model to export and quantize.",
)
args = parser.parse_args()
quantized_output_path = args.output_onnx_file
fp32_output_path = f"{os.path.splitext(quantized_output_path)[0]}_fp32.onnx"

print(f"Torch version: {torch.__version__}")
print(f"Selected Model: {args.model}")

# --- Step 1: Model Loading ---
model = None
sample_inputs = (torch.randn(1, 3, 224, 224),)

if args.model == "squeezenet":
    model = models.squeezenet1_0(weights=SqueezeNet1_0_Weights.DEFAULT).eval()
elif args.model == "alexnet":
    model = models.alexnet(weights=AlexNet_Weights.DEFAULT).eval()
elif args.model == "resnet":
    model = models.resnet50(weights=ResNet50_Weights.DEFAULT).eval()
elif args.model == "mobilenetv3small":
    model = models.mobilenet_v3_small(weights=MobileNet_V3_Small_Weights.DEFAULT).eval()
elif args.model == "mobilenetv3large":
    model = models.mobilenet_v3_large(weights=MobileNet_V3_Large_Weights.DEFAULT).eval()
elif args.model == "mobilenet":  # Default (MobileNetV2)
    model = models.mobilenet_v2(weights=MobileNet_V2_Weights.DEFAULT).eval()
else:
    raise ValueError(f"Unsupported model: {args.model}")

print(f"Loaded {args.model} model.")
example_inputs = (sample_inputs[0],)

# --- Step 2: Export the FP32 model to ONNX ---
print(f"Exporting FP32 model to ONNX file: {fp32_output_path}...")
try:
    torch.onnx.export(
        model,
        example_inputs,
        fp32_output_path,
        input_names=["input"],
        output_names=["output"],
        opset_version=21,
    )
    print(f"Successfully exported FP32 model to {fp32_output_path}")
except Exception as e:
    print(f"Error during FP32 ONNX export: {e}")
    exit(1)

# --- Step 3: Post-Training Static Quantization with ONNX Runtime ---

class ModelCalibrationDataReader(CalibrationDataReader):
    def __init__(self, num_samples=10):
        self.sample_iterator = (
            {"input": np.random.randn(1, 3, 224, 224).astype(np.float32)}
            for _ in range(num_samples)
        )

    def get_next(self):
        return next(self.sample_iterator, None)

print("\nStarting post-training static quantization with ONNX Runtime...")
calibration_data_reader = ModelCalibrationDataReader(num_samples=10)

model = onnx.load(fp32_output_path)
graph = model.graph

# --- Find all 'Add' AND 'Gemm' node names ---
nodes_to_exclude = []
op_types_to_exclude = {'Add', 'Gemm'} # Define the op_types we want to skip

for node in graph.node:
    if node.op_type in op_types_to_exclude:
        nodes_to_exclude.append(node.name)

try:
    quantize_static(
        model_input=fp32_output_path,
        model_output=quantized_output_path,
        calibration_data_reader=calibration_data_reader,
        nodes_to_exclude=nodes_to_exclude,
        quant_format=onnxruntime.quantization.QuantFormat.QOperator, # QOperators since QDQ does not fuse operators.
        activation_type=QuantType.QInt8, # For qs8 activations
        weight_type=QuantType.QInt8,     # For qs8 weights
        per_channel=True,               
    )
    print(f"Successfully generated quantized ONNX model: {quantized_output_path}")
    print("\nNext step: Verify the ONNX file with a tool like Netron to see the Q/DQ nodes,")
    print("then import into MLIR using 'iree-import-onnx'.")

except Exception as e:
    print(f"Error during ONNX Runtime quantization: {e}")
