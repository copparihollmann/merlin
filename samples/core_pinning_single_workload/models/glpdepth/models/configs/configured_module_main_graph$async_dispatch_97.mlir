hal.executable public @main_graph$async_dispatch_97 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_97_reduction_784x64_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_97_reduction_784x64_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
        %cst = arith.constant 0.000000e+00 : f32
        %cst_0 = arith.constant 6.400000e+01 : f32
        %cst_1 = arith.constant 9.99999997E-7 : f32
        %c602112 = arith.constant 602112 : index
        %c401408 = arith.constant 401408 : index
        %c802816 = arith.constant 802816 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c602112) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<784x64xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c401408) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<784x64xf32>>
        %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c802816) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x784xf32>>
        %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [784, 64], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<784x64xf32>> -> tensor<784x64xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0], sizes = [784, 64], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<784x64xf32>> -> tensor<784x64xf32>
        %5 = tensor.empty() : tensor<64x784xf32>
        %6 = tensor.empty() : tensor<784xf32>
        %7 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_inner_parallel = [7]>} ins(%cst : f32) outs(%6 : tensor<784xf32>) -> tensor<784xf32>
        %8 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%3, %4 : tensor<784x64xf32>, tensor<784x64xf32>) outs(%7 : tensor<784xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_inner_parallel = [7, 0], vector_reduction = [0, 8]>} {
        ^bb0(%in: f32, %in_2: f32, %out: f32):
          %11 = arith.addf %in_2, %cst : f32
          %12 = arith.addf %in, %11 : f32
          %13 = arith.addf %12, %out : f32
          linalg.yield %13 : f32
        } -> tensor<784xf32>
        %9 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%3, %4, %8 : tensor<784x64xf32>, tensor<784x64xf32>, tensor<784xf32>) outs(%7 : tensor<784xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [28, 0], vector_reduction = [0, 8]>} {
        ^bb0(%in: f32, %in_2: f32, %in_3: f32, %out: f32):
          %11 = arith.addf %in_2, %cst : f32
          %12 = arith.addf %in, %11 : f32
          %13 = arith.divf %in_3, %cst_0 : f32
          %14 = arith.subf %12, %13 : f32
          %15 = arith.mulf %14, %14 : f32
          %16 = arith.addf %15, %out : f32
          linalg.yield %16 : f32
        } -> tensor<784xf32>
        %10 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%3, %4, %8, %9 : tensor<784x64xf32>, tensor<784x64xf32>, tensor<784xf32>, tensor<784xf32>) outs(%5 : tensor<64x784xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_inner_parallel = [7, 8]>} {
        ^bb0(%in: f32, %in_2: f32, %in_3: f32, %in_4: f32, %out: f32):
          %11 = arith.addf %in_2, %cst : f32
          %12 = arith.addf %in, %11 : f32
          %13 = arith.divf %in_3, %cst_0 : f32
          %14 = arith.subf %12, %13 : f32
          %15 = arith.divf %in_4, %cst_0 : f32
          %16 = arith.addf %15, %cst_1 : f32
          %17 = math.rsqrt %16 : f32
          %18 = arith.mulf %14, %17 : f32
          %19 = arith.addf %18, %cst : f32
          linalg.yield %19 : f32
        } -> tensor<64x784xf32>
        iree_tensor_ext.dispatch.tensor.store %10, %2, offsets = [0, 0], sizes = [64, 784], strides = [1, 1] : tensor<64x784xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x784xf32>>
        return
      }
    }
  }
}
