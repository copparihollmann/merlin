hal.executable public @main_graph$async_dispatch_153 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_153_softmax_8x49x49xf32_dispatch_tensor_store ordinal(0) layout(#hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_153_softmax_8x49x49xf32_dispatch_tensor_store() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>} {
        %cst = arith.constant 0.000000e+00 : f32
        %cst_0 = arith.constant 0xFFC00000 : f32
        %cst_1 = arith.constant 0.176776692 : f32
        %c1003520 = arith.constant 1003520 : index
        %0 = hal.interface.constant.load layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = arith.index_castui %0 : i32 to index
        %2 = util.assume.int %1[<umin = 577024, umax = 577024, udiv = 577024>, <umin = 677376, umax = 677376, udiv = 677376>] : index
        %3 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%2) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x49x49xf32>>
        %4 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c1003520) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x49x49xf32>>
        %5 = iree_tensor_ext.dispatch.tensor.load %3, offsets = [0, 0, 0], sizes = [8, 49, 49], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x49x49xf32>> -> tensor<8x49x49xf32>
        %6 = tensor.empty() : tensor<8x49x49xf32>
        %7 = tensor.empty() : tensor<8x49xf32>
        %8 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 8]>} ins(%cst_0 : f32) outs(%7 : tensor<8x49xf32>) -> tensor<8x49xf32>
        %9 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%5 : tensor<8x49x49xf32>) outs(%8 : tensor<8x49xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 8, 0], vector_reduction = [0, 0, 8]>} {
        ^bb0(%in: f32, %out: f32):
          %13 = arith.mulf %in, %cst_1 : f32
          %14 = arith.maxnumf %13, %out : f32
          linalg.yield %14 : f32
        } -> tensor<8x49xf32>
        %10 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 8]>} ins(%cst : f32) outs(%7 : tensor<8x49xf32>) -> tensor<8x49xf32>
        %11 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%5, %9 : tensor<8x49x49xf32>, tensor<8x49xf32>) outs(%10 : tensor<8x49xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [1, 7, 0], vector_common_parallel = [1, 8, 0], vector_reduction = [0, 0, 8]>} {
        ^bb0(%in: f32, %in_2: f32, %out: f32):
          %13 = arith.mulf %in, %cst_1 : f32
          %14 = arith.subf %13, %in_2 : f32
          %15 = math.exp %14 : f32
          %16 = arith.addf %15, %out : f32
          linalg.yield %16 : f32
        } -> tensor<8x49xf32>
        %12 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%5, %9, %11 : tensor<8x49x49xf32>, tensor<8x49xf32>, tensor<8x49xf32>) outs(%6 : tensor<8x49x49xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 8, 0], vector_inner_parallel = [0, 0, 8]>} {
        ^bb0(%in: f32, %in_2: f32, %in_3: f32, %out: f32):
          %13 = arith.mulf %in, %cst_1 : f32
          %14 = arith.subf %13, %in_2 : f32
          %15 = math.exp %14 : f32
          %16 = arith.divf %15, %in_3 : f32
          linalg.yield %16 : f32
        } -> tensor<8x49x49xf32>
        iree_tensor_ext.dispatch.tensor.store %12, %4, offsets = [0, 0, 0], sizes = [8, 49, 49], strides = [1, 1, 1] : tensor<8x49x49xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x49x49xf32>>
        return
      }
    }
  }
}
