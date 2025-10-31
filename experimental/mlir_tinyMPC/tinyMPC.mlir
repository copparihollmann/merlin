#admm_map_state = affine_map<(d0, d1) -> (d0, d1)>
#admm_map_state_q = affine_map<(d0, d1) -> (d0)>
#admm_map_input = affine_map<(d0, d1) -> (d0, d1)>
#admm_map_input_r = affine_map<(d0, d1) -> (d0)>
#admm_map_scalar = affine_map<() -> ()>

module @tinympc_iree_solver {

  // ============================================================================
  // KERNEL DEFINITIONS (from admm.cpp)
  // ============================================================================

  // --- Kernel: update_linear_cost ---
  // Updates the linear cost terms based on slack and dual variables.
  func.func private @update_linear_cost_kernel(
      %Xref: tensor<4x10xf32>, %Uref: tensor<1x9xf32>,
      %Q: tensor<4xf32>, %R: tensor<1xf32>, %rho: tensor<f32>,
      %vnew: tensor<4x10xf32>, %g: tensor<4x10xf32>,
      %znew: tensor<1x9xf32>, %y: tensor<1x9xf32>,
      %Pinf: tensor<4x4xf32>,
      %q_in: tensor<4x10xf32>, %r_in: tensor<1x9xf32>, %p_in: tensor<4x10xf32>
  ) -> (tensor<4x10xf32>, tensor<1x9xf32>, tensor<4x10xf32>) {
    // Update state cost q
    %q_out = linalg.generic {
        indexing_maps = [#admm_map_state, #admm_map_state_q, #admm_map_state, #admm_map_state, #admm_map_scalar, #admm_map_state],
        iterator_types = ["parallel", "parallel"]
    } ins(%Xref, %Q, %vnew, %g, %rho : tensor<4x10xf32>, tensor<4xf32>, tensor<4x10xf32>, tensor<4x10xf32>, tensor<f32>)
      outs(%q_in : tensor<4x10xf32>) {
    ^bb0(%xref_val: f32, %q_val: f32, %vnew_val: f32, %g_val: f32, %rho_val: f32, %q_out_val: f32):
        %term1 = arith.mulf %xref_val, %q_val : f32
        %neg_term1 = arith.negf %term1 : f32
        %v_minus_g = arith.subf %vnew_val, %g_val : f32
        %term2 = arith.mulf %rho_val, %v_minus_g : f32
        %result = arith.subf %neg_term1, %term2 : f32
        linalg.yield %result : f32
    } -> tensor<4x10xf32>

    // Update input cost r
    %r_out = linalg.generic {
        indexing_maps = [#admm_map_input, #admm_map_input_r, #admm_map_input, #admm_map_input, #admm_map_scalar, #admm_map_input],
        iterator_types = ["parallel", "parallel"]
    } ins(%Uref, %R, %znew, %y, %rho : tensor<1x9xf32>, tensor<1xf32>, tensor<1x9xf32>, tensor<1x9xf32>, tensor<f32>)
      outs(%r_in : tensor<1x9xf32>) {
    ^bb0(%uref_val: f32, %r_val: f32, %znew_val: f32, %y_val: f32, %rho_val: f32, %r_out_val: f32):
        %term1 = arith.mulf %uref_val, %r_val : f32
        %neg_term1 = arith.negf %term1 : f32
        %z_minus_y = arith.subf %znew_val, %y_val : f32
        %term2 = arith.mulf %rho_val, %z_minus_y : f32
        %result = arith.subf %neg_term1, %term2 : f32
        linalg.yield %result : f32
    } -> tensor<1x9xf32>

    // Update terminal cost p
    %c9 = arith.constant 9 : index
    %xref_N_minus_1_slice = tensor.extract_slice %Xref[0, %c9] [4, 1] [1, 1] : tensor<4x10xf32> to tensor<4x1xf32>
    %p_init = tensor.empty() : tensor<4x1xf32>
    %p_term1 = linalg.matmul ins(%Pinf, %xref_N_minus_1_slice : tensor<4x4xf32>, tensor<4x1xf32>) outs(%p_init : tensor<4x1xf32>) -> tensor<4x1xf32>
    %p_term1_neg = arith.negf %p_term1 : tensor<4x1xf32>

    %vnew_N_minus_1_slice = tensor.extract_slice %vnew[0, %c9] [4, 1] [1, 1] : tensor<4x10xf32> to tensor<4x1xf32>
    %g_N_minus_1_slice = tensor.extract_slice %g[0, %c9] [4, 1] [1, 1] : tensor<4x10xf32> to tensor<4x1xf32>
    %v_minus_g = arith.subf %vnew_N_minus_1_slice, %g_N_minus_1_slice : tensor<4x1xf32>
    %rho_val_extracted = tensor.extract %rho[] : tensor<f32>
    %p_term2 = arith.mulf %v_minus_g, %rho_val_extracted : tensor<4x1xf32>
    %p_final_col = arith.subf %p_term1_neg, %p_term2 : tensor<4x1xf32>
    %p_out = tensor.insert_slice %p_final_col into %p_in[0, %c9] [4, 1] [1, 1] : tensor<4x1xf32> into tensor<4x10xf32>


    func.return %q_out, %r_out, %p_out : tensor<4x10xf32>, tensor<1x9xf32>, tensor<4x10xf32>
  }

  // --- Kernel: backward_pass_grad ---
  // Performs the Riccati backward pass.
  func.func private @backward_pass_grad_kernel(
      %Quu_inv: tensor<1x1xf32>, %Bdyn: tensor<4x1xf32>, %r: tensor<1x9xf32>,
      %BPf: tensor<1x1xf32>, %q: tensor<4x10xf32>, %AmBKt: tensor<4x4xf32>,
      %Kinf: tensor<1x4xf32>, %APf: tensor<4x1xf32>,
      %p_in: tensor<4x10xf32>, %d_in: tensor<1x9xf32>
    ) -> (tensor<4x10xf32>, tensor<1x9xf32>) {
        %c8 = arith.constant 8 : index
        %c0 = arith.constant 0 : index
        %c1 = arith.constant 1 : index
        %step = arith.constant -1 : index

        %loop_res:2 = scf.for %i = %c8 to %c0 step %step iter_args(%p_iter = %p_in, %d_iter = %d_in) -> (tensor<4x10xf32>, tensor<1x9xf32>) {
            %i_plus_1 = arith.addi %i, %c1 : index

            %p_i_plus_1 = tensor.extract_slice %p_iter[0, %i_plus_1] [4, 1] [1, 1] : tensor<4x10xf32> to tensor<4x1xf32>
            %r_i = tensor.extract_slice %r[0, %i] [1, 1] [1, 1] : tensor<1x9xf32> to tensor<1x1xf32>

            %term1_d_init = tensor.empty() : tensor<1x1xf32>
            %term1_d = linalg.matmul_transpose_a ins(%p_i_plus_1, %Bdyn : tensor<4x1xf32>, tensor<4x1xf32>) outs(%term1_d_init : tensor<1x1xf32>) -> tensor<1x1xf32>
            %sum1_d = arith.addf %term1_d, %r_i : tensor<1x1xf32>
            %sum2_d = arith.addf %sum1_d, %BPf : tensor<1x1xf32>

            %d_i_init = tensor.empty() : tensor<1x1xf32>
            %d_i = linalg.matmul ins(%Quu_inv, %sum2_d : tensor<1x1xf32>, tensor<1x1xf32>) outs(%d_i_init : tensor<1x1xf32>) -> tensor<1x1xf32>
            %d_next = tensor.insert_slice %d_i into %d_iter[0, %i] [1, 1] [1, 1] : tensor<1x1xf32> into tensor<1x9xf32>

            %q_i = tensor.extract_slice %q[0, %i] [4, 1] [1, 1] : tensor<4x10xf32> to tensor<4x1xf32>
            %term1_p_init = tensor.empty() : tensor<4x1xf32>
            %term1_p = linalg.matmul ins(%AmBKt, %p_i_plus_1 : tensor<4x4xf32>, tensor<4x1xf32>) outs(%term1_p_init : tensor<4x1xf32>) -> tensor<4x1xf32>
            %term2_p_init = tensor.empty() : tensor<4x1xf32>
            %term2_p = linalg.matmul_transpose_a ins(%Kinf, %r_i : tensor<1x4xf32>, tensor<1x1xf32>) outs(%term2_p_init : tensor<4x1xf32>) -> tensor<4x1xf32>

            %sum1_p = arith.addf %q_i, %term1_p : tensor<4x1xf32>
            %sum2_p = arith.subf %sum1_p, %term2_p : tensor<4x1xf32>
            %p_i = arith.addf %sum2_p, %APf : tensor<4x1xf32>
            %p_next = tensor.insert_slice %p_i into %p_iter[0, %i] [4, 1] [1, 1] : tensor<4x1xf32> into tensor<4x10xf32>
            scf.yield %p_next, %d_next : tensor<4x10xf32>, tensor<1x9xf32>
        }
        func.return %loop_res#0, %loop_res#1 : tensor<4x10xf32>, tensor<1x9xf32>
    }

  // --- Kernel: forward_pass ---
  // Rolls out the trajectory.
  func.func private @forward_pass_kernel(
      %Kinf: tensor<1x4xf32>, %d: tensor<1x9xf32>,
      %Adyn: tensor<4x4xf32>, %Bdyn: tensor<4x1xf32>, %fdyn: tensor<4x1xf32>,
      %x_in: tensor<4x10xf32>, %u_in: tensor<1x9xf32>
  ) -> (tensor<4x10xf32>, tensor<1x9xf32>) {
      %c0 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1 = arith.constant 1 : index
      %step = arith.constant 1 : index

      %loop_res:2 = scf.for %i = %c0 to %c8 step %step iter_args(%x_iter = %x_in, %u_iter = %u_in) -> (tensor<4x10xf32>, tensor<1x9xf32>) {
          %x_i = tensor.extract_slice %x_iter[0, %i] [4, 1] [1, 1] : tensor<4x10xf32> to tensor<4x1xf32>
          %d_i = tensor.extract_slice %d[0, %i] [1, 1] [1, 1] : tensor<1x9xf32> to tensor<1x1xf32>

          %u_term1_init = tensor.empty() : tensor<1x1xf32>
          %u_term1 = linalg.matmul ins(%Kinf, %x_i : tensor<1x4xf32>, tensor<4x1xf32>) outs(%u_term1_init : tensor<1x1xf32>) -> tensor<1x1xf32>
          %neg_u_term1 = arith.negf %u_term1 : tensor<1x1xf32>
          %u_i = arith.subf %neg_u_term1, %d_i : tensor<1x1xf32>
          %u_next = tensor.insert_slice %u_i into %u_iter[0, %i] [1, 1] [1, 1] : tensor<1x1xf32> into tensor<1x9xf32>

          %i_plus_1 = arith.addi %i, %c1 : index
          %x_term1_init = tensor.empty() : tensor<4x1xf32>
          %x_term1 = linalg.matmul ins(%Adyn, %x_i : tensor<4x4xf32>, tensor<4x1xf32>) outs(%x_term1_init : tensor<4x1xf32>) -> tensor<4x1xf32>
          %x_term2_init = tensor.empty() : tensor<4x1xf32>
          %x_term2 = linalg.matmul ins(%Bdyn, %u_i : tensor<4x1xf32>, tensor<1x1xf32>) outs(%x_term2_init : tensor<4x1xf32>) -> tensor<4x1xf32>
          %sum_x = arith.addf %x_term1, %x_term2 : tensor<4x1xf32>
          %x_i_plus_1 = arith.addf %sum_x, %fdyn : tensor<4x1xf32>
          %x_next = tensor.insert_slice %x_i_plus_1 into %x_iter[0, %i_plus_1] [4, 1] [1, 1] : tensor<4x1xf32> into tensor<4x10xf32>
          scf.yield %x_next, %u_next : tensor<4x10xf32>, tensor<1x9xf32>
      }
      func.return %loop_res#0, %loop_res#1 : tensor<4x10xf32>, tensor<1x9xf32>
  }


  // --- Kernel: update_slack ---
  // Projects slack variables into their feasible domain.
  func.func private @update_slack_kernel(
      %x: tensor<4x10xf32>, %g: tensor<4x10xf32>,
      %u: tensor<1x9xf32>, %y: tensor<1x9xf32>,
      %x_min: tensor<4x10xf32>, %x_max: tensor<4x10xf32>,
      %u_min: tensor<1x9xf32>, %u_max: tensor<1x9xf32>,
      %vnew_in: tensor<4x10xf32>, %znew_in: tensor<1x9xf32>
  ) -> (tensor<4x10xf32>, tensor<1x9xf32>) {
    %vnew_intermediate = arith.addf %x, %g : tensor<4x10xf32>
    %znew_intermediate = arith.addf %u, %y : tensor<1x9xf32>

    %vnew_out = linalg.generic {
        indexing_maps = [#admm_map_state, #admm_map_state, #admm_map_state, #admm_map_state],
        iterator_types = ["parallel", "parallel"]
    } ins(%x_max, %x_min, %vnew_intermediate : tensor<4x10xf32>, tensor<4x10xf32>, tensor<4x10xf32>)
      outs(%vnew_in : tensor<4x10xf32>) {
    ^bb0(%x_max_val: f32, %x_min_val: f32, %vnew_val: f32, %out: f32):
      %max = arith.maxf %x_min_val, %vnew_val : f32
      %min = arith.minf %x_max_val, %max : f32
      linalg.yield %min : f32
    } -> tensor<4x10xf32>

    %znew_out = linalg.generic {
        indexing_maps = [#admm_map_input, #admm_map_input, #admm_map_input, #admm_map_input],
        iterator_types = ["parallel", "parallel"]
    } ins(%u_max, %u_min, %znew_intermediate : tensor<1x9xf32>, tensor<1x9xf32>, tensor<1x9xf32>)
      outs(%znew_in : tensor<1x9xf32>) {
    ^bb0(%u_max_val: f32, %u_min_val: f32, %znew_val: f32, %out: f32):
      %max = arith.maxf %u_min_val, %znew_val : f32
      %min = arith.minf %u_max_val, %max : f32
      linalg.yield %min : f32
    } -> tensor<1x9xf32>

    func.return %vnew_out, %znew_out : tensor<4x10xf32>, tensor<1x9xf32>
  }


  // --- Kernel: update_dual ---
  // Updates the dual variables.
  func.func private @update_dual_kernel(
      %g_in: tensor<4x10xf32>, %x: tensor<4x10xf32>, %vnew: tensor<4x10xf32>,
      %y_in: tensor<1x9xf32>, %u: tensor<1x9xf32>, %znew: tensor<1x9xf32>
  ) -> (tensor<4x10xf32>, tensor<1x9xf32>) {
    %g_plus_x = arith.addf %g_in, %x : tensor<4x10xf32>
    %g_out = arith.subf %g_plus_x, %vnew : tensor<4x10xf32>

    %y_plus_u = arith.addf %y_in, %u : tensor<1x9xf32>
    %y_out = arith.subf %y_plus_u, %znew : tensor<1x9xf32>
    func.return %g_out, %y_out : tensor<4x10xf32>, tensor<1x9xf32>
  }


  // ============================================================================
  // MAIN ORCHESTRATION LOGIC (from solve() in admm.cpp)
  // ============================================================================
  util.func public @tinympc_solve$async(
      %x0_bv: !hal.buffer_view,
      %Adyn_bv: !hal.buffer_view, %Bdyn_bv: !hal.buffer_view, %fdyn_bv: !hal.buffer_view,
      %Q_bv: !hal.buffer_view, %R_bv: !hal.buffer_view, %rho_bv: !hal.buffer_view,
      %Xref_bv: !hal.buffer_view, %Uref_bv: !hal.buffer_view,
      %x_min_bv: !hal.buffer_view, %x_max_bv: !hal.buffer_view,
      %u_min_bv: !hal.buffer_view, %u_max_bv: !hal.buffer_view,
      %cache_Quu_inv_bv: !hal.buffer_view, %cache_AmBKt_bv: !hal.buffer_view,
      %cache_Kinf_bv: !hal.buffer_view, %cache_Pinf_bv: !hal.buffer_view,
      %cache_APf_bv: !hal.buffer_view, %cache_BPf_bv: !hal.buffer_view,
      %wait_fence: !hal.fence, %signal_fence: !hal.fence
  ) -> (!hal.buffer_view, !hal.buffer_view) attributes {
      inlining_policy = #util.inline.never,
      iree.abi.model = "coarse-fences"
    }
  {
    // --- Import tensors from HAL buffer views ---
    %x0 = hal.tensor.import wait(%wait_fence) => %x0_bv : !hal.buffer_view -> tensor<4xf32>
    %Adyn = hal.tensor.import wait(%wait_fence) => %Adyn_bv : !hal.buffer_view -> tensor<4x4xf32>
    %Bdyn = hal.tensor.import wait(%wait_fence) => %Bdyn_bv : !hal.buffer_view -> tensor<4x1xf32>
    %fdyn = hal.tensor.import wait(%wait_fence) => %fdyn_bv : !hal.buffer_view -> tensor<4x1xf32>
    %Q = hal.tensor.import wait(%wait_fence) => %Q_bv : !hal.buffer_view -> tensor<4xf32>
    %R = hal.tensor.import wait(%wait_fence) => %R_bv : !hal.buffer_view -> tensor<1xf32>
    %rho = hal.tensor.import wait(%wait_fence) => %rho_bv : !hal.buffer_view -> tensor<f32>
    %Xref = hal.tensor.import wait(%wait_fence) => %Xref_bv : !hal.buffer_view -> tensor<4x10xf32>
    %Uref = hal.tensor.import wait(%wait_fence) => %Uref_bv : !hal.buffer_view -> tensor<1x9xf32>
    %x_min = hal.tensor.import wait(%wait_fence) => %x_min_bv : !hal.buffer_view -> tensor<4x10xf32>
    %x_max = hal.tensor.import wait(%wait_fence) => %x_max_bv : !hal.buffer_view -> tensor<4x10xf32>
    %u_min = hal.tensor.import wait(%wait_fence) => %u_min_bv : !hal.buffer_view -> tensor<1x9xf32>
    %u_max = hal.tensor.import wait(%wait_fence) => %u_max_bv : !hal.buffer_view -> tensor<1x9xf32>
    %Quu_inv = hal.tensor.import wait(%wait_fence) => %cache_Quu_inv_bv : !hal.buffer_view -> tensor<1x1xf32>
    %AmBKt = hal.tensor.import wait(%wait_fence) => %cache_AmBKt_bv : !hal.buffer_view -> tensor<4x4xf32>
    %Kinf = hal.tensor.import wait(%wait_fence) => %cache_Kinf_bv : !hal.buffer_view -> tensor<1x4xf32>
    %Pinf = hal.tensor.import wait(%wait_fence) => %cache_Pinf_bv : !hal.buffer_view -> tensor<4x4xf32>
    %APf = hal.tensor.import wait(%wait_fence) => %cache_APf_bv : !hal.buffer_view -> tensor<4x1xf32>
    %BPf = hal.tensor.import wait(%wait_fence) => %cache_BPf_bv : !hal.buffer_view -> tensor<1x1xf32>


    // --- Initialize workspace variables ---
    %c0f = arith.constant 0.0 : f32
    %x_init = tensor.empty() : tensor<4x10xf32>
    %x_zero = linalg.fill ins(%c0f : f32) outs(%x_init : tensor<4x10xf32>) -> tensor<4x10xf32>
    %x0_reshaped = tensor.reshape %x0([4, 1]) : (tensor<4xf32>) -> tensor<4x1xf32>
    %x = tensor.insert_slice %x0_reshaped into %x_zero[0, 0] [4, 1] [1, 1] : tensor<4x1xf32> into tensor<4x10xf32>

    %u = tensor.empty() : tensor<1x9xf32>
    %q = tensor.empty() : tensor<4x10xf32>
    %r = tensor.empty() : tensor<1x9xf32>
    %p = tensor.empty() : tensor<4x10xf32>
    %d = tensor.empty() : tensor<1x9xf32>
    %vnew = tensor.empty() : tensor<4x10xf32>
    %znew = tensor.empty() : tensor<1x9xf32>
    %g = tensor.empty() : tensor<4x10xf32>
    %y = tensor.empty() : tensor<1x9xf32>

    %u_zero = linalg.fill ins(%c0f : f32) outs(%u : tensor<1x9xf32>) -> tensor<1x9xf32>
    %q_zero = linalg.fill ins(%c0f : f32) outs(%q : tensor<4x10xf32>) -> tensor<4x10xf32>
    %r_zero = linalg.fill ins(%c0f : f32) outs(%r : tensor<1x9xf32>) -> tensor<1x9xf32>
    %p_zero = linalg.fill ins(%c0f : f32) outs(%p : tensor<4x10xf32>) -> tensor<4x10xf32>
    %d_zero = linalg.fill ins(%c0f : f32) outs(%d : tensor<1x9xf32>) -> tensor<1x9xf32>
    %vnew_zero = linalg.fill ins(%c0f : f32) outs(%vnew : tensor<4x10xf32>) -> tensor<4x10xf32>
    %znew_zero = linalg.fill ins(%c0f : f32) outs(%znew : tensor<1x9xf32>) -> tensor<1x9xf32>
    %g_zero = linalg.fill ins(%c0f : f32) outs(%g : tensor<4x10xf32>) -> tensor<4x10xf32>
    %y_zero = linalg.fill ins(%c0f : f32) outs(%y : tensor<1x9xf32>) -> tensor<1x9xf32>


    // --- ADMM Solver Loop ---
    %max_iter = arith.constant 100 : index
    %loop_results:9 = scf.for %iter = arith.constant 0 : index to %max_iter step arith.constant 1 : index
        iter_args(
            %x_iter = %x, %u_iter = %u_zero, %q_iter = %q_zero, %r_iter = %r_zero,
            %p_iter = %p_zero, %d_iter = %d_zero, %vnew_iter = %vnew_zero,
            %znew_iter = %znew_zero, %g_iter = %g_zero, %y_iter = %y_zero
        ) -> (tensor<4x10xf32>, tensor<1x9xf32>, tensor<4x10xf32>, tensor<1x9xf32>,
              tensor<4x10xf32>, tensor<1x9xf32>, tensor<4x10xf32>, tensor<1x9xf32>,
              tensor<4x10xf32>, tensor<1x9xf32>) {

      // 1. Update linear cost
      %cost_res:3 = func.call @update_linear_cost_kernel(%Xref, %Uref, %Q, %R, %rho, %vnew_iter, %g_iter, %znew_iter, %y_iter, %Pinf, %q_iter, %r_iter, %p_iter)
        : (tensor<4x10xf32>, tensor<1x9xf32>, tensor<4xf32>, tensor<1xf32>, tensor<f32>, tensor<4x10xf32>, tensor<4x10xf32>,
           tensor<1x9xf32>, tensor<1x9xf32>, tensor<4x4xf32>, tensor<4x10xf32>, tensor<1x9xf32>, tensor<4x10xf32>)
           -> (tensor<4x10xf32>, tensor<1x9xf32>, tensor<4x10xf32>)
      %q_next = %cost_res#0 : tensor<4x10xf32>
      %r_next = %cost_res#1 : tensor<1x9xf32>
      %p_after_cost = %cost_res#2 : tensor<4x10xf32>

      // 2. Backward pass
      %backward_res:2 = func.call @backward_pass_grad_kernel(%Quu_inv, %Bdyn, %r_next, %BPf, %q_next, %AmBKt, %Kinf, %APf, %p_after_cost, %d_iter)
        : (tensor<1x1xf32>, tensor<4x1xf32>, tensor<1x9xf32>, tensor<1x1xf32>, tensor<4x10xf32>, tensor<4x4xf32>,
           tensor<1x4xf32>, tensor<4x1xf32>, tensor<4x10xf32>, tensor<1x9xf32>)
           -> (tensor<4x10xf32>, tensor<1x9xf32>)
      %p_next = %backward_res#0 : tensor<4x10xf32>
      %d_next = %backward_res#1 : tensor<1x9xf32>

      // 3. Forward pass
      %forward_res:2 = func.call @forward_pass_kernel(%Kinf, %d_next, %Adyn, %Bdyn, %fdyn, %x_iter, %u_iter)
        : (tensor<1x4xf32>, tensor<1x9xf32>, tensor<4x4xf32>, tensor<4x1xf32>, tensor<4x1xf32>, tensor<4x10xf32>, tensor<1x9xf32>)
        -> (tensor<4x10xf32>, tensor<1x9xf32>)
      %x_next = %forward_res#0 : tensor<4x10xf32>
      %u_next = %forward_res#1 : tensor<1x9xf32>

      // 4. Update slack variables
      %slack_res:2 = func.call @update_slack_kernel(%x_next, %g_iter, %u_next, %y_iter, %x_min, %x_max, %u_min, %u_max, %vnew_iter, %znew_iter)
        : (tensor<4x10xf32>, tensor<4x10xf32>, tensor<1x9xf32>, tensor<1x9xf32>, tensor<4x10xf32>, tensor<4x10xf32>,
           tensor<1x9xf32>, tensor<1x9xf32>, tensor<4x10xf32>, tensor<1x9xf32>)
           -> (tensor<4x10xf32>, tensor<1x9xf32>)
      %vnew_next = %slack_res#0 : tensor<4x10xf32>
      %znew_next = %slack_res#1 : tensor<1x9xf32>

      // 5. Update dual variables
      %dual_res:2 = func.call @update_dual_kernel(%g_iter, %x_next, %vnew_next, %y_iter, %u_next, %znew_next)
          : (tensor<4x10xf32>, tensor<4x10xf32>, tensor<4x10xf32>, tensor<1x9xf32>, tensor<1x9xf32>, tensor<1x9xf32>)
          -> (tensor<4x10xf32>, tensor<1x9xf32>)
      %g_next = %dual_res#0 : tensor<4x10xf32>
      %y_next = %dual_res#1 : tensor<1x9xf32>

      scf.yield %x_next, %u_next, %q_next, %r_next, %p_next, %d_next, %vnew_next, %znew_next, %g_next, %y_next
        : tensor<4x10xf32>, tensor<1x9xf32>, tensor<4x10xf32>, tensor<1x9xf32>,
          tensor<4x10xf32>, tensor<1x9xf32>, tensor<4x10xf32>, tensor<1x9xf32>,
          tensor<4x10xf32>, tensor<1x9xf32>
    }

    // --- Export final results ---
    %final_x = %loop_results#0 : tensor<4x10xf32>
    %final_u = %loop_results#1 : tensor<1x9xf32>

    %final_x_bv = hal.tensor.export %final_x : tensor<4x10xf32> -> !hal.buffer_view
    %final_u_bv = hal.tensor.export %final_u : tensor<1x9xf32> -> !hal.buffer_view

    hal.fence.signal<%signal_fence : !hal.fence>
    util.return %final_x_bv, %final_u_bv : !hal.buffer_view, !hal.buffer_view
  }


  // --- Synchronous Wrapper for easy calling ---
  util.func public @tinympc_solve(
      %x0_bv: !hal.buffer_view,
      %Adyn_bv: !hal.buffer_view, %Bdyn_bv: !hal.buffer_view, %fdyn_bv: !hal.buffer_view,
      %Q_bv: !hal.buffer_view, %R_bv: !hal.buffer_view, %rho_bv: !hal.buffer_view,
      %Xref_bv: !hal.buffer_view, %Uref_bv: !hal.buffer_view,
      %x_min_bv: !hal.buffer_view, %x_max_bv: !hal.buffer_view,
      %u_min_bv: !hal.buffer_view, %u_max_bv: !hal.buffer_view,
      %cache_Quu_inv_bv: !hal.buffer_view, %cache_AmBKt_bv: !hal.buffer_view,
      %cache_Kinf_bv: !hal.buffer_view, %cache_Pinf_bv: !hal.buffer_view,
      %cache_APf_bv: !hal.buffer_view, %cache_BPf_bv: !hal.buffer_view
  ) -> (!hal.buffer_view, !hal.buffer_view) attributes {iree.abi.stub}
  {
    %c0 = arith.constant 0 : index
    %device = hal.devices.get %c0 : !hal.device
    %wait_fence = util.null : !hal.fence
    %signal_fence = hal.fence.create device(%device : !hal.device)  flags("None") : !hal.fence
    %results:2 = util.call @tinympc_solve$async(
      %x0_bv, %Adyn_bv, %Bdyn_bv, %fdyn_bv, %Q_bv, %R_bv, %rho_bv,
      %Xref_bv, %Uref_bv, %x_min_bv, %x_max_bv, %u_min_bv, %u_max_bv,
      %cache_Quu_inv_bv, %cache_AmBKt_bv, %cache_Kinf_bv, %cache_Pinf_bv,
      %cache_APf_bv, %cache_BPf_bv,
      %wait_fence, %signal_fence
    ) : (!hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view,
         !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view,
         !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view,
         !hal.buffer_view, !hal.buffer_view, !hal.buffer_view, !hal.buffer_view,
         !hal.buffer_view, !hal.buffer_view, !hal.fence, !hal.fence)
         -> (!hal.buffer_view, !hal.buffer_view)
    %timeout_millis = arith.constant -1 : i32
    hal.fence.await until([%signal_fence]) timeout_millis(%timeout_millis) flags("None") : i32
    util.return %results#0, %results#1 : !hal.buffer_view, !hal.buffer_view
  }
}