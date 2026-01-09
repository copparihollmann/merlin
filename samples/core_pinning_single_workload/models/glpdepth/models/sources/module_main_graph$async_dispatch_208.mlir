hal.executable public @main_graph$async_dispatch_208 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_208_conv_2x56x56x32x3x3_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_208_conv_2x56x56x32x3x3_f32() {
        %cst = arith.constant 0.000000e+00 : f32
        %cst_0 = arith.constant 1.000000e+00 : f32
        %cst_1 = arith.constant dense<[-0.0414347202, 0.0221716873]> : tensor<2xf32>
        %c602112 = arith.constant 602112 : index
        %c8652544 = arith.constant 8652544 : index
        %c1032704 = arith.constant 1032704 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c602112) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x58x58xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c8652544) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x32x3x3xf32>>
        %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c1032704) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x56x56xf32>>
        %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0], sizes = [32, 58, 58], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x58x58xf32>> -> tensor<32x58x58xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0, 0, 0], sizes = [2, 32, 3, 3], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x32x3x3xf32>> -> tensor<2x32x3x3xf32>
        %5 = tensor.empty() : tensor<2x56x56xf32>
        %6 = linalg.fill ins(%cst : f32) outs(%5 : tensor<2x56x56xf32>) -> tensor<2x56x56xf32>
        %7 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 + d4, d2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%3, %4 : tensor<32x58x58xf32>, tensor<2x32x3x3xf32>) outs(%6 : tensor<2x56x56xf32>) {
        ^bb0(%in: f32, %in_2: f32, %out: f32):
          %9 = arith.mulf %in, %in_2 : f32
          %10 = arith.addf %out, %9 : f32
          linalg.yield %10 : f32
        } -> tensor<2x56x56xf32>
        %8 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7, %cst_1 : tensor<2x56x56xf32>, tensor<2xf32>) outs(%5 : tensor<2x56x56xf32>) {
        ^bb0(%in: f32, %in_2: f32, %out: f32):
          %9 = arith.addf %in, %in_2 : f32
          %10 = arith.negf %9 : f32
          %11 = math.exp %10 : f32
          %12 = arith.addf %11, %cst_0 : f32
          %13 = arith.divf %cst_0, %12 : f32
          linalg.yield %13 : f32
        } -> tensor<2x56x56xf32>
        iree_tensor_ext.dispatch.tensor.store %8, %2, offsets = [0, 0, 0], sizes = [2, 56, 56], strides = [1, 1, 1] : tensor<2x56x56xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x56x56xf32>>
        return
      }
    }
  }
}
