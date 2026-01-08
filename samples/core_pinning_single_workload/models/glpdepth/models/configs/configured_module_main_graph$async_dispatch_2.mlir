hal.executable public @main_graph$async_dispatch_2 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_2_reduction_3136x32_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_2_reduction_3136x32_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
        %cst = arith.constant 3.200000e+01 : f32
        %cst_0 = arith.constant 9.99999974E-6 : f32
        %cst_1 = arith.constant 0.000000e+00 : f32
        %cst_2 = arith.constant 9.99999997E-7 : f32
        %c1036224 = arith.constant 1036224 : index
        %c634816 = arith.constant 634816 : index
        %c0 = arith.constant 0 : index
        %c1437632 = arith.constant 1437632 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c1036224) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<3136x32xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c634816) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x3136xf32>>
        %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3136x32xf32>>
        %3 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c1437632) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3136x32xf32>>
        %4 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [3136, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<3136x32xf32>> -> tensor<3136x32xf32>
        %5 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0], sizes = [32, 3136], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x3136xf32>> -> tensor<32x3136xf32>
        %6 = tensor.empty() : tensor<3136x32xf32>
        %7 = tensor.empty() : tensor<3136xf32>
        %8 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [8]>} ins(%cst_1 : f32) outs(%7 : tensor<3136xf32>) -> tensor<3136xf32>
        %9 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%4 : tensor<3136x32xf32>) outs(%8 : tensor<3136xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [8, 0], vector_reduction = [0, 8]>} {
        ^bb0(%in: f32, %out: f32):
          %15 = arith.addf %in, %out : f32
          linalg.yield %15 : f32
        } -> tensor<3136xf32>
        %10 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%5, %9 : tensor<32x3136xf32>, tensor<3136xf32>) outs(%8 : tensor<3136xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [8, 0], vector_reduction = [0, 1]>} {
        ^bb0(%in: f32, %in_3: f32, %out: f32):
          %15 = arith.divf %in_3, %cst : f32
          %16 = arith.subf %in, %15 : f32
          %17 = arith.mulf %16, %16 : f32
          %18 = arith.addf %17, %out : f32
          linalg.yield %18 : f32
        } -> tensor<3136xf32>
        %11 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%5, %9, %10 : tensor<32x3136xf32>, tensor<3136xf32>, tensor<3136xf32>) outs(%6 : tensor<3136x32xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [8, 0], vector_inner_parallel = [0, 8]>} {
        ^bb0(%in: f32, %in_3: f32, %in_4: f32, %out: f32):
          %15 = arith.divf %in_3, %cst : f32
          %16 = arith.subf %in, %15 : f32
          %17 = arith.divf %in_4, %cst : f32
          %18 = arith.addf %17, %cst_0 : f32
          %19 = math.rsqrt %18 : f32
          %20 = arith.mulf %16, %19 : f32
          %21 = arith.addf %20, %cst_1 : f32
          linalg.yield %21 : f32
        } -> tensor<3136x32xf32>
        %12 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%11 : tensor<3136x32xf32>) outs(%8 : tensor<3136xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [8, 0], vector_reduction = [0, 8]>} {
        ^bb0(%in: f32, %out: f32):
          %15 = arith.addf %in, %out : f32
          linalg.yield %15 : f32
        } -> tensor<3136xf32>
        %13 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%11, %12 : tensor<3136x32xf32>, tensor<3136xf32>) outs(%8 : tensor<3136xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [32, 0], vector_common_parallel = [8, 0], vector_reduction = [0, 8]>} {
        ^bb0(%in: f32, %in_3: f32, %out: f32):
          %15 = arith.divf %in_3, %cst : f32
          %16 = arith.subf %in, %15 : f32
          %17 = arith.mulf %16, %16 : f32
          %18 = arith.addf %17, %out : f32
          linalg.yield %18 : f32
        } -> tensor<3136xf32>
        %14 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%11, %12, %13 : tensor<3136x32xf32>, tensor<3136xf32>, tensor<3136xf32>) outs(%6 : tensor<3136x32xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [8, 0], vector_inner_parallel = [0, 8]>} {
        ^bb0(%in: f32, %in_3: f32, %in_4: f32, %out: f32):
          %15 = arith.divf %in_3, %cst : f32
          %16 = arith.subf %in, %15 : f32
          %17 = arith.divf %in_4, %cst : f32
          %18 = arith.addf %17, %cst_2 : f32
          %19 = math.rsqrt %18 : f32
          %20 = arith.mulf %16, %19 : f32
          %21 = arith.addf %20, %cst_1 : f32
          linalg.yield %21 : f32
        } -> tensor<3136x32xf32>
        iree_tensor_ext.dispatch.tensor.store %11, %2, offsets = [0, 0], sizes = [3136, 32], strides = [1, 1] : tensor<3136x32xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3136x32xf32>>
        iree_tensor_ext.dispatch.tensor.store %14, %3, offsets = [0, 0], sizes = [3136, 32], strides = [1, 1] : tensor<3136x32xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3136x32xf32>>
        return
      }
    }
  }
}
