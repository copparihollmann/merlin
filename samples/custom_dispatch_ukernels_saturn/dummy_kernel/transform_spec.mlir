// Copyright 2025 (Your Name/Organization Here)
//
// Licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

// The target RISC-V configuration from your module.
#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "riscv_66", {cpu = "generic-rv64", cpu_features = "+m,+a,+f,+d,+v,+zvl512b,+zvbb", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 128 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>

// The target device definition.
#riscv_target = #hal.device.target<"llvm-cpu", [
  #executable_target_embedded_elf_riscv_64
]>

// Pipeline layout for our custom kernel:
#pipeline_layout = #hal.pipeline.layout<
  constants = 0,
  bindings = [
    #hal.pipeline.binding<storage_buffer, ReadOnly>, // Binding 0: LHS
    #hal.pipeline.binding<storage_buffer, ReadOnly>, // Binding 1: RHS
    #hal.pipeline.binding<storage_buffer>           // Binding 2: OUT
  ]
>

module attributes {transform.with_named_sequence} {

  // Executable containing the custom kernel implementation.
  hal.executable private @custom_quantized_matmul_exe {
    hal.executable.variant public @riscv_64 target(#executable_target_embedded_elf_riscv_64) objects([
      #hal.executable.object<{
        path = "riscv_qgemm.o"
      }>
    ]) {
      // Exported kernel function
      hal.executable.export public @custom_quantized_matmul ordinal(0)
      layout(#pipeline_layout)
      // This kernel does all work in one call, so dispatch (1, 1, 1) workgroups.
      count(%device: !hal.device, %workload_M: index, %workload_N: index, %workload_K: index) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        hal.return %c1, %c1, %c1 : index, index, index
      } 

      builtin.module {
        // Import specification for the C function.
        func.func private @custom_quantized_matmul_workgroup(
          memref<1x128xi8>, // LHS
          memref<128x10xi8>, // RHS
          memref<1x10xi32>  // OUT
        ) attributes {hal.import.static}

        // Shim function that is the entry point for the dispatch.
        func.func @custom_quantized_matmul() {
          %c0 = arith.constant 0 : index
          
          %lhs_binding = hal.interface.binding.subspan layout(#pipeline_layout) binding(0) alignment(64) offset(%c0) :
            memref<1x128xi8>
          %rhs_binding = hal.interface.binding.subspan layout(#pipeline_layout) binding(1) alignment(64) offset(%c0) :
            memref<128x10xi8>
          %out_binding = hal.interface.binding.subspan layout(#pipeline_layout) binding(2) alignment(64) offset(%c0) :
            memref<1x10xi32>

          func.call @custom_quantized_matmul_workgroup(
            %lhs_binding, %rhs_binding, %out_binding
          ) : (memref<1x128xi8>, memref<128x10xi8>, memref<1x10xi32>) -> ()
          
          return
        }
      }
    } // hal.executable.variant
  } // hal.executable

  // Replacement function that creates the flow.dispatch operation.
  util.func private @call_custom_quantized_matmul(
      %lhs: tensor<1x128xi8>, %rhs: tensor<128x10xi8>
  ) -> tensor<1x10xi32> {
    
    // The workload must match the 1x1x1 grid defined in the hal.executable.export
    %workload = arith.constant 1 : index
    
    // Create the dispatch operation
    %0 = flow.dispatch @custom_quantized_matmul_exe::@riscv_64::@custom_quantized_matmul[
           %workload // workload (1)
         ](%lhs, %rhs) :
         (tensor<1x128xi8>, tensor<128x10xi8>) -> tensor<1x10xi32>
    
    util.return %0 : tensor<1x10xi32>
  }

  // Matcher sequence for the specific linalg.quantized_matmul DAG.
  transform.named_sequence @match_quantized_matmul(
      %root: !transform.any_op {transform.readonly}
  ) -> (!transform.any_value, !transform.any_value) {
    
    // --- FIX: The matcher/rewriter argument mismatch ---
    // %ins will now be a 2-element bundle: [%lhs, %rhs]
    %ins, %outs = transform.iree.match.cast_compatible_dag_from_root %root {
    // The block arguments are now only the 2 inputs we want to pass to the call.
    ^bb0(%lhs: tensor<1x128xi8>, %rhs: tensor<128x10xi8>):
      
      // Match the constants *inside* the block.
      %c0_zp_lhs = arith.constant 0 : i32 
      %c0_zp_rhs = arith.constant 0 : i32
      // This is the %c0_i32 that was used by linalg.fill
      %c0_fill = arith.constant 0 : i32 

      // Match the output tensor chain (empty + fill)
      %empty = tensor.empty() : tensor<1x10xi32>
      // Match the fill op using the constant we just matched.
      %fill = linalg.fill ins(%c0_fill : i32) outs(%empty : tensor<1x10xi32>)  -> tensor<1x10xi32>
      
      // Match the target linalg.quantized_matmul op
      %qmatmul = linalg.quantized_matmul
        ins(%lhs, %rhs, %c0_zp_lhs, %c0_zp_rhs : tensor<1x128xi8>, tensor<128x10xi8>, i32, i32)
        outs(%fill : tensor<1x10xi32>)  -> tensor<1x10xi32>
    } : (!transform.any_op) -> (!transform.any_value, !transform.any_value)
    
    
    // Yield the inputs for the call op and the output to be replaced.
    // %ins is now a 2-element bundle, which is correct.
    transform.yield %ins, %outs : !transform.any_value, !transform.any_value
  }

  // Rewrite callback for `transform.foreach_match`.
  transform.named_sequence @cast_and_call_dag(
      // This %ins will now correctly be the 2-element bundle.
      %ins: !transform.any_value {transform.readonly},
      %out: !transform.any_value {transform.readonly}) {
    %root = transform.get_defining_op %out : (!transform.any_value) -> !transform.any_op
    %module = transform.util.get_nearest_symbol_table %root : (!transform.any_op) -> !transform.any_op
    
    // Import the executable and the call function
    %executable = transform.util.import_symbol @custom_quantized_matmul_exe into %module if undefined : (!transform.any_op) -> !transform.any_op
    // %func (2 args)
    %func = transform.util.import_symbol @call_custom_quantized_matmul into %module if undefined : (!transform.any_op) -> !transform.any_op
    
    // This call now matches: %func (2 args) <- %ins (2 args)
    transform.util.cast_and_call %func(%ins) -> %out after %root {
      transform.type_conversion.tensor.cast_shape_dynamic_dims
    } : (!transform.any_op, !transform.any_value, !transform.any_value, !transform.any_op) -> !transform.any_op
    transform.yield
  }

  // Entry point for the transform interpreter
  transform.named_sequence @__transform_main(%module: !transform.any_op) {
    %funcs = transform.structured.match ops{["util.func"]} in %module : (!transform.any_op) -> !transform.any_op
    
    transform.foreach %funcs : !transform.any_op {
    ^bb1(%func: !transform.any_op):
      transform.foreach_match in %func
        // <matcher name> -> <rewriter name>
        @match_quantized_matmul -> @cast_and_call_dag
      : (!transform.any_op) -> (!transform.any_op)
    }
    
    // Cleanup leftover dead code
    transform.apply_dce to %module : !transform.any_op
    transform.yield
  }
}