import torch
import torch.nn as nn

class OpA_ObjectDetector(nn.Module):
    """
    A minimal CNN for perception (Op A). It takes a 64x64 image and
    regresses to the (x, y) coordinates of an object.
    """
    def __init__(self):
        super().__init__()
        self.network = nn.Sequential(
            # Input Shape: [1, 3, 16, 16]
            nn.Conv2d(3, 4, kernel_size=4, stride=4, padding=1),  # [1, 4, 16, 16]
            nn.ReLU(),
            nn.MaxPool2d(kernel_size=2, stride=2), # [1, 4, 8, 8]
            nn.Flatten(), # [1, 4*8*8]
            nn.Linear(4*8*8, 2) # [1, 10]
        )

    def forward(self, x):
        # Assumes input is NCHW
        coordinates =self.network(x).squeeze(0)
        return coordinates
    
class OpB_IKSolverStep(nn.Module):
    """
    One step of a classical Jacobian-based IK solver for a 2-link arm (Op B).
    """
    def __init__(self, link1_length=1.0, link2_length=1.0, step_size=1):
        super().__init__()
        self.l1 = link1_length
        self.l2 = link2_length
        self.alpha = step_size

    def forward(self, current_joint_angles: torch.Tensor, target_pos: torch.Tensor) -> torch.Tensor:
        q1, q2 = current_joint_angles[0], current_joint_angles[1]

        # Forward Kinematics to find current position
        x_current = self.l1 * torch.cos(q1) + self.l2 * torch.cos(q1 + q2)
        y_current = self.l1 * torch.sin(q1) + self.l2 * torch.sin(q1 + q2)
        current_pos = torch.stack([x_current, y_current])

        # Calculate error
        error = target_pos - current_pos

        # Calculate Jacobian
        j11 = -self.l1 * torch.sin(q1) - self.l2 * torch.sin(q1 + q2)
        j12 = -self.l2 * torch.sin(q1 + q2)
        j21 =  self.l1 * torch.cos(q1) + self.l2 * torch.cos(q1 + q2)
        j22 =  self.l2 * torch.cos(q1 + q2)
        jacobian = torch.stack([torch.stack([j11, j12]), torch.stack([j21, j22])])

        # Calculate joint angle update
        det = jacobian[0, 0] * jacobian[1, 1] - jacobian[0, 1] * jacobian[1, 0]
        # Add a small epsilon for numerical stability to avoid division by zero.
        inv_det = 1.0 / (det + 1e-6)
        
        inv_jacobian = torch.stack([
            torch.stack([jacobian[1, 1], -jacobian[0, 1]]),
            torch.stack([-jacobian[1, 0], jacobian[0, 0]])
        ]) * inv_det
        
        dq = torch.matmul(inv_jacobian, error)
        
        new_angles = current_joint_angles + self.alpha * dq
        return new_angles

class OpC_SimpleMotion(nn.Module):
    """
    Generates a simple motion trajectory (Op C) based on the final solved
    joint angles. It computes the final end-effector position and generates
    a short, straight-line path from there.
    """
    def __init__(self, link1_length=1.0, link2_length=1.0, num_points=10):
        super().__init__()
        self.l1 = link1_length
        self.l2 = link2_length
        self.num_points = num_points
        # The motion is a simple downward push (e.g., to press a button).
        self.motion_vector = torch.tensor([0.0, -0.1])

    def forward(self, final_joint_angles: torch.Tensor) -> torch.Tensor:
        q1, q2 = final_joint_angles[0], final_joint_angles[1]

        # 1. Perform Forward Kinematics to find the starting position of this trajectory.
        start_x = self.l1 * torch.cos(q1) + self.l2 * torch.cos(q1 + q2)
        start_y = self.l1 * torch.sin(q1) + self.l2 * torch.sin(q1 + q2)
        start_pos = torch.stack([start_x, start_y])

        # 2. Define the end position.
        end_pos = start_pos + self.motion_vector

        # 3. Linearly interpolate between start and end.
        t = torch.linspace(0, 1, self.num_points).unsqueeze(1)
        trajectory = start_pos * (1 - t) + end_pos * t
        return trajectory

class OpD_ComplexMotion(nn.Module):
    """
    Generates a more complex motion trajectory (Op D) based on the final
    solved joint angles. This represents a two-part 'retract then push' motion.
    """
    def __init__(self, link1_length=1.0, link2_length=1.0, num_points_per_segment=10):
        super().__init__()
        self.l1 = link1_length
        self.l2 = link2_length
        self.num_points = num_points_per_segment
        self.retract_vector = torch.tensor([-0.2, 0.0])
        self.push_vector = torch.tensor([0.0, -0.1])

    def forward(self, final_joint_angles: torch.Tensor) -> torch.Tensor:
        q1, q2 = final_joint_angles[0], final_joint_angles[1]

        # 1. Perform Forward Kinematics to find the initial position.
        start_pos_x = self.l1 * torch.cos(q1) + self.l2 * torch.cos(q1 + q2)
        start_pos_y = self.l1 * torch.sin(q1) + self.l2 * torch.sin(q1 + q2)
        start_pos = torch.stack([start_pos_x, start_pos_y])

        # 2. Define intermediate and end positions for a two-part motion.
        intermediate_pos = start_pos + self.retract_vector
        end_pos = intermediate_pos + self.push_vector
        
        # 3. Interpolate first segment: start -> intermediate
        t1 = torch.linspace(0, 1, self.num_points).unsqueeze(1)
        segment1 = start_pos * (1 - t1) + intermediate_pos * t1

        # 4. Interpolate second segment: intermediate -> end
        t2 = torch.linspace(0, 1, self.num_points).unsqueeze(1)
        segment2 = intermediate_pos * (1 - t2) + end_pos * t2
        
        # 5. Concatenate the segments.
        trajectory = torch.cat((segment1, segment2[1:]), dim=0)
        return trajectory

class OpE_Odometry(nn.Module):
    """
    A classical differential drive odometry calculation (Op E).
    This is a simple, independent task suitable for parallel execution.
    """
    def __init__(self, axle_width=0.5, dist_per_tick=0.0001):
        super().__init__()
        self.axle_width = axle_width
        self.dist_per_tick = dist_per_tick

    def forward(self, prev_pose: torch.Tensor, wheel_ticks: torch.Tensor) -> torch.Tensor:
        # prev_pose: (x, y, theta)
        # wheel_ticks: (left_ticks, right_ticks)
        dist_left = wheel_ticks[0] * self.dist_per_tick
        dist_right = wheel_ticks[1] * self.dist_per_tick

        d_center = (dist_left + dist_right) / 2.0
        d_theta = (dist_right - dist_left) / self.axle_width
        
        avg_theta = prev_pose[2] + d_theta / 2.0
        x_new = prev_pose[0] + d_center * torch.cos(avg_theta)
        y_new = prev_pose[1] + d_center * torch.sin(avg_theta)
        theta_new = prev_pose[2] + d_theta

        return torch.stack([x_new, y_new, theta_new])

class StaticTraceRobotApp(nn.Module):
    """
    An unrolled, static-graph version of the robot application.
    The control flow is hardcoded based on the oracle run:
    - IK Solver Loop Iterations: 9
    - Motion Planner Choice: OpD_ComplexMotion
    """
    def __init__(self):
        super().__init__()
        
        # The oracle determined the exact path, so we instantiate the
        # required modules in a fixed sequence.
        
        self.op_a = OpA_ObjectDetector()
        
        # Unroll the loop by creating 9 instances of the IK solver step
        self.op_b_steps = nn.ModuleList([OpB_IKSolverStep() for _ in range(9)])
        
        # The oracle chose the complex motion planner.
        self.op_d = OpD_ComplexMotion()
        
        # The odometry task is independent.
        self.op_e = OpE_Odometry()

    def forward(self, 
                sensor_input: torch.Tensor, 
                initial_pose: torch.Tensor, 
                initial_angles: torch.Tensor, 
                wheel_ticks: torch.Tensor) -> tuple[torch.Tensor, torch.Tensor]:

        # Op E runs independently. In a dataflow graph, this can execute
        # in parallel with the main A->B->D chain.
        new_pose = self.op_e(initial_pose, wheel_ticks)

        # === Main Chain ===
        
        # 1. Run perception (Op A) once.
        target_pos = self.op_a(sensor_input)

        # 2. Run the unrolled IK solver loop (Op B, exactly 9 times).
        angles = initial_angles
        for op_b_step in self.op_b_steps:
            angles = op_b_step(angles, target_pos)
        final_angles = angles

        # 3. Run the chosen motion planner (Op D).
        trajectory = self.op_d(final_angles)

        # The model must return the two tensors in the same order as the dynamic model.
        return trajectory, new_pose
