// Copyright 2025 (Your Name/Organization Here)
//
// Licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <stddef.h>
#include <stdint.h>

// The reduction dimension (K) of the matmul (1x128) * (128x10)
#define K_DIM 128

// Kernel function exported to IREE.
// MODIFIED: The signature is updated to match the new MLIR-LLVM ABI
// for (memref<1x128xi8>, memref<128x10xi8>, memref<1x10xi32>)
// Each memref expands to 5 parameters (base_ptr, aligned_ptr, offset, size, stride)
// for 2D, and 6 for 3D. We just use the base pointer.
//
// NOTE: Your new example uses 3D memrefs, which expand to 6 args.
// 2D memrefs (like ours) expand to 7 args (base, aligned, offset, size0, size1, stride0, stride1)
void custom_quantized_matmul_workgroup(
    // LHS: memref<1x128xi8> (7 args)
    const int8_t* restrict lhs_ptr, const int8_t* restrict ignored_lhs_aligned,
    size_t lhs_offset, size_t lhs_size0, size_t lhs_size1, 
    size_t lhs_stride0, size_t lhs_stride1,

    // RHS: memref<128x10xi8> (7 args)
    const int8_t* restrict rhs_ptr, const int8_t* restrict ignored_rhs_aligned,
    size_t rhs_offset, size_t rhs_size0, size_t rhs_size1, 
    size_t rhs_stride0, size_t rhs_stride1,

    // OUT: memref<1x10xi32> (7 args)
    int32_t* restrict out_ptr, int32_t* restrict ignored_out_aligned,
    size_t out_offset, size_t out_size0, size_t out_size1, 
    size_t out_stride0, size_t out_stride1
) {
  // Since we are dispatching a 1x10 grid, we must get the workgroup ID
  // to know which output element to compute.
  // The workgroup IDs are not passed as arguments; they must be queried
  // via a built-in function, which the IREE HAL import does *not*
  // easily expose to C.
  
  // --- RE-ADJUSTMENT ---
  // The new example uses a *single* workgroup (1x1x1) for the whole tensor.
  // My previous assumption of a 1x10 grid was based on the output shape,
  // but your new example shows a 1x1x1 grid and the kernel loops internally.
  // Let's follow the new example's pattern: dispatch 1x1x1 and loop inside C.

  // --- THIS C KERNEL ASSUMES A 1x1x1 DISPATCH ---
  // The transform spec must be updated to match this.

  // MODIFIED: Hardcode zero points since they are not passed
  const int32_t zp_lhs = 0;
  const int32_t zp_rhs = 0;

  // Loop over the M (1) and N (10) dimensions
  for (size_t m = 0; m < out_size0; ++m) {
    for (size_t n = 0; n < out_size1; ++n) {
      
      int32_t accum = 0;
      for (size_t k = 0; k < K_DIM; ++k) {
        // Get LHS value: lhs[m][k]
        size_t lhs_index = m * lhs_stride0 + k * lhs_stride1;
        int32_t lhs_val = (int32_t)lhs_ptr[lhs_index] - zp_lhs;

        // Get RHS value: rhs[k][n]
        size_t rhs_index = k * rhs_stride0 + n * rhs_stride1;
        int32_t rhs_val = (int32_t)rhs_ptr[rhs_index] - zp_rhs;

        // Accumulate the product
        accum += lhs_val * rhs_val;
      }

      // Write the final accumulated value to the output: out[m][n]
      size_t out_index = m * out_stride0 + n * out_stride1;
      out_ptr[out_index] = accum;
    }
  }
}