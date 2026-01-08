hal.executable public @main_graph$async_dispatch_193 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_193_conv_32x14x14x64x3x3_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_193_conv_32x14x14x64x3x3_f32() {
        %cst = arith.constant 0.000000e+00 : f32
        %cst_0 = arith.constant dense<[-0.0116517907, -3.052140e-03, 0.0108404215, -0.0396882705, 0.0109543251, 0.00173898169, 2.701350e-02, -0.0345054567, -0.0406524688, 0.0196953434, -0.00794953573, -0.00751135964, -0.028966967, 0.0318008102, -0.0320556723, -0.0255526062, -0.023935318, 0.0106765898, -0.00265620812, 0.0279058423, 0.0352185033, -3.10508854E-4, -0.0377843641, -0.0231060833, 0.0260178298, -8.623910e-03, -0.0143070798, 0.0245426558, -0.0108243683, -0.0163667388, 0.0285822805, 0.0259539075]> : tensor<32xf32>
        %c1003520 = arith.constant 1003520 : index
        %c9396736 = arith.constant 9396736 : index
        %c532480 = arith.constant 532480 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c1003520) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x16x16xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c9396736) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x64x3x3xf32>>
        %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c532480) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<readwrite:tensor<32x16x16xf32>>
        %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0], sizes = [64, 16, 16], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x16x16xf32>> -> tensor<64x16x16xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0, 0, 0], sizes = [32, 64, 3, 3], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x64x3x3xf32>> -> tensor<32x64x3x3xf32>
        %5 = tensor.empty() : tensor<32x14x14xf32>
        %6 = linalg.fill ins(%cst : f32) outs(%5 : tensor<32x14x14xf32>) -> tensor<32x14x14xf32>
        %7 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 + d4, d2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%3, %4 : tensor<64x16x16xf32>, tensor<32x64x3x3xf32>) outs(%6 : tensor<32x14x14xf32>) {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %9 = arith.mulf %in, %in_1 : f32
          %10 = arith.addf %out, %9 : f32
          linalg.yield %10 : f32
        } -> tensor<32x14x14xf32>
        %8 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7, %cst_0 : tensor<32x14x14xf32>, tensor<32xf32>) outs(%5 : tensor<32x14x14xf32>) {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %9 = arith.addf %in, %in_1 : f32
          %10 = arith.cmpf ugt, %9, %cst : f32
          %11 = arith.select %10, %9, %cst : f32
          linalg.yield %11 : f32
        } -> tensor<32x14x14xf32>
        iree_tensor_ext.dispatch.tensor.store %8, %2, offsets = [0, 1, 1], sizes = [32, 14, 14], strides = [1, 1, 1] : tensor<32x14x14xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<32x16x16xf32>>
        return
      }
    }
  }
}
