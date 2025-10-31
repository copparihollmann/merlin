# determine_static_trace.py
import torch
import torch.nn as nn
import numpy as np

from model_ops import *

def find_oracle_path():
    """
    Runs the dynamic model with a fixed input to determine the exact
    number of loop iterations and the conditional branch taken.
    """
    print("--- Finding Oracle Execution Path ---")

    # 1. Define fixed, deterministic inputs
    torch.manual_seed(0)
    sensor_input = torch.randn(1, 3, 64, 64)
    initial_pose = torch.tensor([0.5, 0.5, np.pi / 4])
    # This initial angle will cause the 'if' to select OpD
    initial_angles = torch.tensor([np.pi / 2, -np.pi / 4])
    wheel_ticks = torch.tensor([15.0, 17.0])

    # Save inputs for later use
    print(f"Chosen initial_angles: {initial_angles.tolist()}")
    
    # 2. Instantiate all operators
    op_a = OpA_ObjectDetector()
    op_b = OpB_IKSolverStep(step_size=1)
    op_c = OpC_SimpleMotion()
    op_d = OpD_ComplexMotion()
    op_e = OpE_Odometry()
    
    # Set models to evaluation mode
    op_a.eval()
    
    # 3. Run OpA to get the target position
    target_pos = op_a(sensor_input)
    print(f"OpA produced target_pos: {target_pos.tolist()}")

    # 4. Simulate the 'while' loop for OpB
    print("\n--- Simulating OpB (IK Solver) While Loop ---")
    
    current_angles = initial_angles
    n_iter = 0
    tolerance_sq = 1.0e-8

    while True:
        n_iter += 1
        next_angles = op_b(current_angles, target_pos)
        
        # Check for convergence
        diff = torch.sum((next_angles - current_angles)**2)
        print(f"Iteration {n_iter}: |next-current|^2 = {diff.item()}")

        if diff < tolerance_sq:
            final_angles = next_angles
            break
        
        current_angles = next_angles
        
        if n_iter > 100: # Failsafe
            print("Warning: Max iterations reached.")
            final_angles = next_angles
            break

    print(f"\nConvergence reached in {n_iter} iterations.")
    print(f"Final angles: {final_angles.tolist()}")

    # 5. Simulate the 'if' statement for OpC/OpD
    # The condition in the MLIR was `final_angles[1] > 0.0`.
    # A positive angle chooses OpC (simple), a non-positive one chooses OpD (complex).
    if final_angles[1] > 0.0:
        decision = "OpC_SimpleMotion"
    else:
        decision = "OpD_ComplexMotion"

    print(f"\nCondition final_angles[1] > 0.0 is {final_angles[1].item() > 0.0}.")
    print(f"Decision: Choose {decision}.\n")

    return n_iter, decision

if __name__ == '__main__':
    torch.manual_seed(0)
    sensor_input = torch.randn(1, 3, 64, 64)
    initial_pose = torch.tensor([0.5, 0.5, np.pi / 4])
    initial_angles = torch.tensor([np.pi / 2, -np.pi / 4])
    wheel_ticks = torch.tensor([15.0, 17.0])

    # --- Save the inputs for the command line ---
    print("\n--- Saving Oracle Inputs ---")
    
    # Save the large tensor to a file
    sensor_input_path = "sensor_input.npy"
    np.save(sensor_input_path, sensor_input.numpy())
    print(f"Saved sensor_input to: {sensor_input_path}")
    
    # Print the small tensors in a copy-paste friendly format
    print(f"\nFor use with --input flags:")
    print(f"initial_pose:   3xf32={initial_pose.numpy()[0]} {initial_pose.numpy()[1]} {initial_pose.numpy()[2]}")
    print(f"initial_angles: 2xf32={initial_angles.numpy()[0]} {initial_angles.numpy()[1]}")
    print(f"wheel_ticks:    2xf32={wheel_ticks.numpy()[0]} {wheel_ticks.numpy()[1]}")
    print("--------------------------\n")
    
    N_ITERATIONS, DECISION = find_oracle_path()