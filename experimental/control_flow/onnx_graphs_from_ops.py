import torch
import torch.nn as nn
import torch.onnx
import os
import argparse
import numpy as np

# Assuming all your PyTorch class definitions are in this file
from experimental.RoboIR.model_ops import (
    OpA_ObjectDetector, 
    OpB_IKSolverStep, 
    OpC_SimpleMotion, 
    OpD_ComplexMotion, 
    OpE_Odometry,
    StaticTraceRobotApp
)

def export_models_to_onnx(models_to_export, op_a, op_b, op_c, op_d, op_e, static_model):
    """
    Exports the selected operation modules to ONNX files in a dedicated directory.
    
    Args:
        models_to_export (list[str]): A list of short names for the models to export.
        ... (model objects)
    """
    print("\n--- Exporting selected models to ONNX ---")

    output_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), "onnx_models"))
    os.makedirs(output_dir, exist_ok=True)
    print(f"Models will be saved in: {output_dir}")

    # Common export parameters
    export_kwargs = {
        'export_params': True,
        'opset_version': 18
    }
    
    # --- Individual Operator Exports ---

    if 'a' in models_to_export:
        dummy_input_a = torch.randn(1, 3, 64, 64)
        output_path_a = os.path.join(output_dir, "op_a.onnx")
        torch.onnx.export(op_a, dummy_input_a, output_path_a,
                          input_names=['sensor_input'], output_names=['coordinates'], **export_kwargs)
        print(f"Exported {output_path_a}")

    if 'b' in models_to_export:
        dummy_input_b1, dummy_input_b2 = torch.randn(2), torch.randn(2)
        output_path_b = os.path.join(output_dir, "op_b_step.onnx")
        torch.onnx.export(op_b, (dummy_input_b1, dummy_input_b2), output_path_b,
                          input_names=['current_joint_angles', 'target_pos'], output_names=['new_angles'], **export_kwargs)
        print(f"Exported {output_path_b}")

    if 'c' in models_to_export:
        dummy_input_c = torch.randn(2)
        output_path_c = os.path.join(output_dir, "op_c.onnx")
        torch.onnx.export(op_c, dummy_input_c, output_path_c,
                          input_names=['final_joint_angles'], output_names=['trajectory'], **export_kwargs)
        print(f"Exported {output_path_c}")

    if 'd' in models_to_export:
        dummy_input_d = torch.randn(2)
        output_path_d = os.path.join(output_dir, "op_d.onnx")
        torch.onnx.export(op_d, dummy_input_d, output_path_d,
                          input_names=['final_joint_angles'], output_names=['trajectory'], **export_kwargs)
        print(f"Exported {output_path_d}")

    if 'e' in models_to_export:
        dummy_input_e1, dummy_input_e2 = torch.randn(3), torch.randn(2)
        output_path_e = os.path.join(output_dir, "op_e.onnx")
        torch.onnx.export(op_e, (dummy_input_e1, dummy_input_e2), output_path_e,
                          input_names=['prev_pose', 'wheel_ticks'], output_names=['new_pose'], **export_kwargs)
        print(f"Exported {output_path_e}")

    # --- Static Trace Model Export ---
        
    if 'static_trace' in models_to_export:
        # Use the deterministic inputs from our oracle run for consistency
        torch.manual_seed(0)
        sensor_input = torch.randn(1, 3, 64, 64)
        initial_pose = torch.tensor([0.5, 0.5, np.pi / 4])
        initial_angles = torch.tensor([np.pi / 2, -np.pi / 4])
        wheel_ticks = torch.tensor([15.0, 17.0])
        
        static_inputs = (sensor_input, initial_pose, initial_angles, wheel_ticks)
        output_path_static = os.path.join(output_dir, "static_trace.onnx")
        
        torch.onnx.export(
            static_model,
            static_inputs,
            output_path_static,
            input_names=["sensor_input", "initial_pose", "initial_angles", "wheel_ticks"],
            output_names=["trajectory", "new_pose"],
            **export_kwargs
        )
        print(f"Exported {output_path_static}")

    print("-------------------------------------\n")

def main():
    # --- Command-Line Argument Parsing ---
    parser = argparse.ArgumentParser(
        description="Export PyTorch robot application models to ONNX.",
        formatter_class=argparse.RawTextHelpFormatter
    )
    parser.add_argument(
        '--models',
        nargs='+',
        required=True,
        choices=['a', 'b', 'c', 'd', 'e', 'static_trace', 'all'],
        help="Specify which models to export. Use 'all' for all models.\n"
             "Choices:\n"
             "  a: OpA_ObjectDetector\n"
             "  b: OpB_IKSolverStep\n"
             "  c: OpC_SimpleMotion\n"
             "  d: OpD_ComplexMotion\n"
             "  e: OpE_Odometry\n"
             "  static_trace: The unrolled StaticTraceRobotApp\n"
             "  all: Export all of the above"
    )
    args = parser.parse_args()
    models_to_export = args.models

    # If 'all' is specified, expand it to the full list of models
    if 'all' in models_to_export:
        models_to_export = ['a', 'b', 'c', 'd', 'e', 'static_trace']

    # --- Model Instantiation ---
    op_a = OpA_ObjectDetector()
    op_b = OpB_IKSolverStep()
    op_c = OpC_SimpleMotion()
    op_d = OpD_ComplexMotion()
    op_e = OpE_Odometry()
    static_model = StaticTraceRobotApp()

    # Set all models to evaluation mode before exporting
    for model in [op_a, op_b, op_c, op_d, op_e, static_model]:
        model.eval()
    
    export_models_to_onnx(models_to_export, op_a, op_b, op_c, op_d, op_e, static_model)

if __name__ == "__main__":
    main()