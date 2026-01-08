hal.executable public @main_graph$async_dispatch_197 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_197_matmul_like_64x784x64_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_197_matmul_like_64x784x64_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
        %cst = arith.constant 0.000000e+00 : f32
        %cst_0 = arith.constant dense<[-0.122310996, -0.110142827, -0.0410555601, -0.0100256652, 0.0662650317, 0.0977833867, 0.0955285727, 0.0819384455, -0.10755977, -0.0236136615, 0.122459933, -0.119812727, 0.119506761, -0.016053468, 0.0925775766, -0.0798447728, 0.0932174623, 0.11555168, 0.0577598959, -0.00507874787, 0.0309226066, -0.0892743766, 0.0438469797, 0.0111251175, -0.0723185092, -0.0974685549, 0.0698947757, -0.0738087445, -0.116988271, -0.0573610663, -0.0905196816, -0.0714499652, -0.0118598044, -8.622570e-02, 0.0487412959, 0.0797836184, -0.0409320891, 0.00645819306, 0.0748782455, 0.0326633304, 0.0029322654, -0.0667510629, 0.096730262, 0.0773794054, 0.047284469, 0.0189293325, -0.124655813, 0.122533023, -0.105642125, -0.11518243, -0.0142436326, -0.0228731036, 0.0833718628, 0.101169348, -0.0113148242, 0.0639096051, 0.0722210556, 0.116022497, -0.0533741415, 0.0288973302, 0.027436763, 0.0167177171, 0.124473423, 0.0741474926]> : tensor<64xf32>
        %c802816 = arith.constant 802816 : index
        %c13822848 = arith.constant 13822848 : index
        %c1003520 = arith.constant 1003520 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c802816) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x784xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c13822848) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x64xf32>>
        %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c1003520) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x784xf32>>
        %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [64, 784], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x784xf32>> -> tensor<64x784xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0], sizes = [64, 64], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x64xf32>> -> tensor<64x64xf32>
        %5 = tensor.empty() : tensor<64x784xf32>
        %6 = linalg.fill {lowering_config = #iree_cpu.lowering_config<cache_parallel = [32, 112], vector_common_parallel = [7, 16]>} ins(%cst : f32) outs(%5 : tensor<64x784xf32>) -> tensor<64x784xf32>
        %7 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%3, %4 : tensor<64x784xf32>, tensor<64x64xf32>) outs(%6 : tensor<64x784xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [32, 112, 0], distribution = [32, 112, 0], vector_common_parallel = [7, 16, 0], vector_reduction = [0, 0, 1]>} {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %9 = arith.mulf %in, %in_1 : f32
          %10 = arith.addf %out, %9 : f32
          linalg.yield %10 : f32
        } -> tensor<64x784xf32>
        %8 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%7, %cst_0 : tensor<64x784xf32>, tensor<64xf32>) outs(%5 : tensor<64x784xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [32, 112], vector_common_parallel = [7, 16]>} {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %9 = arith.addf %in, %in_1 : f32
          linalg.yield %9 : f32
        } -> tensor<64x784xf32>
        iree_tensor_ext.dispatch.tensor.store %8, %2, offsets = [0, 0], sizes = [64, 784], strides = [1, 1] : tensor<64x784xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x784xf32>>
        return
      }
    }
  }
}
