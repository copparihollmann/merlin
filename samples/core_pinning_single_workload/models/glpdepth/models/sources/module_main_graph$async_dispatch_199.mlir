hal.executable public @main_graph$async_dispatch_199 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_199_conv_64x28x28x128x3x3_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_199_conv_64x28x28x128x3x3_f32() {
        %cst = arith.constant 0.000000e+00 : f32
        %cst_0 = arith.constant dense<[-0.00840071402, -0.0126218079, 0.020631833, -0.0176561642, 0.0207140986, 0.0244688094, 0.0118060671, -0.0111626955, -0.0179796647, 0.0189958755, 0.00648865057, -0.00586261135, -0.0103757819, -1.668480e-03, 0.00661939289, -0.0153136263, 0.00520876609, -0.0216225386, -0.001466566, -0.0094356276, 0.0156062851, -0.0285479892, 0.00978040788, 0.0170464106, 0.0215676669, -0.0124693634, 0.0240254756, 0.0125388075, 0.0159338247, -0.0197016522, -0.0061141355, 0.00805143733, 0.00641418434, 0.0225502774, 0.00512491539, -0.00507015595, 0.00348427659, -0.0157666784, -0.0264323018, -0.0143005894, 0.00887516513, 0.0155409258, 0.0189268291, 0.00275160652, 0.0155248791, 0.0157249887, 0.012992017, -0.00484891096, 0.0195076112, 0.0273154583, 5.82396286E-4, 0.0216439385, -0.00864156429, 0.00172028178, 0.00331328763, -0.0186504703, -0.0233016815, -0.0221360736, 0.0107178967, -0.0191048179, 0.0227329489, 0.0170216188, -0.0215746779, -0.00836254656]> : tensor<64xf32>
        %c1605632 = arith.constant 1605632 : index
        %c9099520 = arith.constant 9099520 : index
        %c401408 = arith.constant 401408 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c1605632) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x30x30xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c9099520) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x128x3x3xf32>>
        %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c401408) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<readwrite:tensor<64x30x30xf32>>
        %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0], sizes = [128, 30, 30], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x30x30xf32>> -> tensor<128x30x30xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0, 0, 0], sizes = [64, 128, 3, 3], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x128x3x3xf32>> -> tensor<64x128x3x3xf32>
        %5 = tensor.empty() : tensor<64x28x28xf32>
        %6 = linalg.fill ins(%cst : f32) outs(%5 : tensor<64x28x28xf32>) -> tensor<64x28x28xf32>
        %7 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 + d4, d2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%3, %4 : tensor<128x30x30xf32>, tensor<64x128x3x3xf32>) outs(%6 : tensor<64x28x28xf32>) {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %9 = arith.mulf %in, %in_1 : f32
          %10 = arith.addf %out, %9 : f32
          linalg.yield %10 : f32
        } -> tensor<64x28x28xf32>
        %8 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7, %cst_0 : tensor<64x28x28xf32>, tensor<64xf32>) outs(%5 : tensor<64x28x28xf32>) {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %9 = arith.addf %in, %in_1 : f32
          %10 = arith.cmpf ugt, %9, %cst : f32
          %11 = arith.select %10, %9, %cst : f32
          linalg.yield %11 : f32
        } -> tensor<64x28x28xf32>
        iree_tensor_ext.dispatch.tensor.store %8, %2, offsets = [0, 1, 1], sizes = [64, 28, 28], strides = [1, 1, 1] : tensor<64x28x28xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<64x30x30xf32>>
        return
      }
    }
  }
}
