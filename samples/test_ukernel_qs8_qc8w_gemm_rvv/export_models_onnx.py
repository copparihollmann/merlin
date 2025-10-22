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
        "transformer", 
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
# Default input for torchvision models
sample_inputs = (torch.randn(1, 3, 224, 224),)
input_names = ["input"]
output_names = ["output"]

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
elif args.model == "transformer":
    class SimpleTransformer(torch.nn.Module):
        def __init__(self, d_model=64, nhead=8, dim_feedforward=128, seq_len=16):
            super(SimpleTransformer, self).__init__()
            self.pos_embedding = torch.nn.Parameter(torch.randn(1, seq_len, d_model))
            encoder_layer = torch.nn.TransformerEncoderLayer(
                d_model=d_model, nhead=nhead, dim_feedforward=dim_feedforward, batch_first=True)
            self.encoder = torch.nn.TransformerEncoder(encoder_layer, num_layers=1)
        
        def forward(self, x):
            x = x + self.pos_embedding  # Add positional encoding
            return self.encoder(x)
    
    model = SimpleTransformer().eval()
    # Override sample_inputs for this specific model
    sample_inputs = (torch.randn(1, 16, 64),)  # (batch_size, seq_len, d_model)
    
elif args.model == "mobilenet":  # Default (MobileNetV2)
    model = models.mobilenet_v2(weights=MobileNet_V2_Weights.DEFAULT).eval()
else:
    raise ValueError(f"Unsupported model: {args.model}")

print(f"Loaded {args.model} model.")
print(f"Using sample input shape: {sample_inputs[0].shape}")


# --- Step 2: Export the FP32 model to ONNX ---
print(f"Exporting FP32 model to ONNX file: {fp32_output_path}...")
try:
    torch.onnx.export(
        model,
        sample_inputs,  # <-- Use the sample_inputs tuple directly
        fp32_output_path,
        input_names=input_names,
        output_names=output_names,
        opset_version=17, # <-- Set to 17 for better IREE compatibility
        dynamic_axes=None, # Explicitly disable dynamic axes for quantization
    )
    print(f"Successfully exported FP32 model to {fp32_output_path}")
except Exception as e:
    print(f"Error during FP32 ONNX export: {e}")
    exit(1)

# --- Step 3: Post-Training Static Quantization with ONNX Runtime ---

class ModelCalibrationDataReader(CalibrationDataReader):
    """
    Modified CalibrationDataReader to be flexible to any model input shape.
    """
    def __init__(self, example_input_tensor, num_samples=10, input_name="input"):
        self.input_shape = tuple(example_input_tensor.shape)
        self.input_name = input_name
        self.num_samples = num_samples
        
        print(f"Initializing calibration data reader with input_name='{self.input_name}' and shape={self.input_shape}")
        
        self.sample_iterator = (
            {self.input_name: np.random.randn(*self.input_shape).astype(np.float32)}
            for _ in range(self.num_samples)
        )

    def get_next(self):
        return next(self.sample_iterator, None)
    
    def rewind(self):
        """Resets the iterator to the beginning."""
        self.sample_iterator = (
            {self.input_name: np.random.randn(*self.input_shape).astype(np.float32)}
            for _ in range(self.num_samples)
        )

print("\nStarting post-training static quantization with ONNX Runtime...")
# <-- Instantiate the new flexible data reader
calibration_data_reader = ModelCalibrationDataReader(
    example_input_tensor=sample_inputs[0], 
    num_samples=10, 
    input_name=input_names[0] # Must match the first name in 'input_names'
)

# --- Find nodes to exclude (as requested) ---
print(f"Loading {fp32_output_path} to find nodes for exclusion...")
model_for_exclusion = onnx.load(fp32_output_path)
graph = model_for_exclusion.graph

nodes_to_exclude = []
op_types_to_exclude = {'Add', 'Gemm'} # Define the op_types you want to skip

for node in graph.node:
    if node.op_type in op_types_to_exclude:
        nodes_to_exclude.append(node.name)

print(f"Found {len(nodes_to_exclude)} nodes to exclude (if enabled):")
# print(nodes_to_exclude) # Uncomment to debug

try:
    quantize_static(
        model_input=fp32_output_path,
        model_output=quantized_output_path,
        calibration_data_reader=calibration_data_reader,
        
        # nodes_to_exclude=nodes_to_exclude,
        
        quant_format=onnxruntime.quantization.QuantFormat.QDQ,
        activation_type=QuantType.QInt8,
        weight_type=QuantType.QInt8,
        per_channel=False, # <-- Keep False as per our last discussion to ensure import
    )
    print(f"Successfully generated quantized ONNX model: {quantized_output_path}")
    print("\nNext step: Verify the ONNX file with a tool like Netron to see the Q/DQ nodes,")
    print("then import into MLIR using 'iree-import-onnx'.")

except Exception as e:
    print(f"Error during ONNX Runtime quantization: {e}")