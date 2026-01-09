hal.executable public @main_graph$async_dispatch_56 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_56_reduction_49x64_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_56_reduction_49x64_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
        %cst = arith.constant 6.400000e+01 : f32
        %cst_0 = arith.constant 9.99999974E-6 : f32
        %cst_1 = arith.constant 0.000000e+00 : f32
        %c618752 = arith.constant 618752 : index
        %c606208 = arith.constant 606208 : index
        %c631296 = arith.constant 631296 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c618752) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x64xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c606208) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x49xf32>>
        %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c631296) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<49x64xf32>>
        %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [49, 64], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x64xf32>> -> tensor<49x64xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0], sizes = [64, 49], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x49xf32>> -> tensor<64x49xf32>
        %5 = tensor.empty() : tensor<49x64xf32>
        %6 = tensor.empty() : tensor<49xf32>
        %7 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1]>} ins(%cst_1 : f32) outs(%6 : tensor<49xf32>) -> tensor<49xf32>
        %8 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%3 : tensor<49x64xf32>) outs(%7 : tensor<49xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 0], vector_reduction = [0, 8]>} {
        ^bb0(%in: f32, %out: f32):
          %11 = arith.addf %in, %out : f32
          linalg.yield %11 : f32
        } -> tensor<49xf32>
        %9 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%4, %8 : tensor<64x49xf32>, tensor<49xf32>) outs(%7 : tensor<49xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [1, 0], vector_common_parallel = [1, 0], vector_reduction = [0, 1]>} {
        ^bb0(%in: f32, %in_2: f32, %out: f32):
          %11 = arith.divf %in_2, %cst : f32
          %12 = arith.subf %in, %11 : f32
          %13 = arith.mulf %12, %12 : f32
          %14 = arith.addf %13, %out : f32
          linalg.yield %14 : f32
        } -> tensor<49xf32>
        %10 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%4, %8, %9 : tensor<64x49xf32>, tensor<49xf32>, tensor<49xf32>) outs(%5 : tensor<49x64xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 0], vector_inner_parallel = [0, 8]>} {
        ^bb0(%in: f32, %in_2: f32, %in_3: f32, %out: f32):
          %11 = arith.divf %in_2, %cst : f32
          %12 = arith.subf %in, %11 : f32
          %13 = arith.divf %in_3, %cst : f32
          %14 = arith.addf %13, %cst_0 : f32
          %15 = math.rsqrt %14 : f32
          %16 = arith.mulf %12, %15 : f32
          %17 = arith.addf %16, %cst_1 : f32
          linalg.yield %17 : f32
        } -> tensor<49x64xf32>
        iree_tensor_ext.dispatch.tensor.store %10, %2, offsets = [0, 0], sizes = [49, 64], strides = [1, 1] : tensor<49x64xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<49x64xf32>>
        return
      }
    }
  }
}
