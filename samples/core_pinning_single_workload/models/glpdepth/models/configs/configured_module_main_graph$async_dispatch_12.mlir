hal.executable public @main_graph$async_dispatch_12 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_12_softmax_3136x49xf32_dispatch_tensor_store ordinal(0) layout(#hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_12_softmax_3136x49xf32_dispatch_tensor_store() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>} {
        %cst = arith.constant 0.000000e+00 : f32
        %cst_0 = arith.constant 0xFFC00000 : f32
        %cst_1 = arith.constant 0.176776692 : f32
        %0 = hal.interface.constant.load layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = hal.interface.constant.load layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
        %2 = arith.index_castui %0 : i32 to index
        %3 = arith.index_castui %1 : i32 to index
        %4:2 = util.assume.int 
            %2[<umin = 1436288, umax = 1436288, udiv = 1436288>, <umin = 420224, umax = 420224, udiv = 420224>], 
            %3[<umin = 821632, umax = 821632, udiv = 821632>, <umin = 1034880, umax = 1034880, udiv = 1034880>]
          : index, index
        %5 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%4#0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<3136x49xf32>>
        %6 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%4#1) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3136x49xf32>>
        %7 = iree_tensor_ext.dispatch.tensor.load %5, offsets = [0, 0], sizes = [3136, 49], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<3136x49xf32>> -> tensor<3136x49xf32>
        %8 = tensor.empty() : tensor<3136x49xf32>
        %9 = tensor.empty() : tensor<3136xf32>
        %10 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [8]>} ins(%cst_0 : f32) outs(%9 : tensor<3136xf32>) -> tensor<3136xf32>
        %11 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%7 : tensor<3136x49xf32>) outs(%10 : tensor<3136xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [8, 0], vector_reduction = [0, 8]>} {
        ^bb0(%in: f32, %out: f32):
          %15 = arith.mulf %in, %cst_1 : f32
          %16 = arith.maxnumf %15, %out : f32
          linalg.yield %16 : f32
        } -> tensor<3136xf32>
        %12 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [8]>} ins(%cst : f32) outs(%9 : tensor<3136xf32>) -> tensor<3136xf32>
        %13 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%7, %11 : tensor<3136x49xf32>, tensor<3136xf32>) outs(%12 : tensor<3136xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [32, 0], vector_common_parallel = [8, 0], vector_reduction = [0, 8]>} {
        ^bb0(%in: f32, %in_2: f32, %out: f32):
          %15 = arith.mulf %in, %cst_1 : f32
          %16 = arith.subf %15, %in_2 : f32
          %17 = math.exp %16 : f32
          %18 = arith.addf %17, %out : f32
          linalg.yield %18 : f32
        } -> tensor<3136xf32>
        %14 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%7, %11, %13 : tensor<3136x49xf32>, tensor<3136xf32>, tensor<3136xf32>) outs(%8 : tensor<3136x49xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [8, 0], vector_inner_parallel = [0, 8]>} {
        ^bb0(%in: f32, %in_2: f32, %in_3: f32, %out: f32):
          %15 = arith.mulf %in, %cst_1 : f32
          %16 = arith.subf %15, %in_2 : f32
          %17 = math.exp %16 : f32
          %18 = arith.divf %17, %in_3 : f32
          linalg.yield %18 : f32
        } -> tensor<3136x49xf32>
        iree_tensor_ext.dispatch.tensor.store %14, %6, offsets = [0, 0], sizes = [3136, 49], strides = [1, 1] : tensor<3136x49xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3136x49xf32>>
        return
      }
    }
  }
}
