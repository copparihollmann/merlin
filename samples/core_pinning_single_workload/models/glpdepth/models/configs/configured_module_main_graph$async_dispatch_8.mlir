hal.executable public @main_graph$async_dispatch_8 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_8_matmul_like_2x49x32x32_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_8_matmul_like_2x49x32x32_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
        %cst = arith.constant 0.000000e+00 : f32
        %0 = hal.interface.constant.load layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = hal.interface.constant.load layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
        %2 = hal.interface.constant.load layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(2) : i32
        %3 = arith.index_castui %0 : i32 to index
        %4 = arith.index_castui %1 : i32 to index
        %5 = arith.index_castui %2 : i32 to index
        %6:3 = util.assume.int 
            %3[<umin = 802816, umax = 802816, udiv = 802816>, <umin = 401408, umax = 401408, udiv = 401408>], 
            %4[<umin = 5416704, umax = 5416704, udiv = 5416704>, <umin = 5408512, umax = 5408512, udiv = 5408512>], 
            %5[<umin = 809088, umax = 809088, udiv = 809088>, <umin = 407680, umax = 407680, udiv = 407680>]
          : index, index, index
        %7 = hal.interface.binding.subspan layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%6#0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x32xf32>>
        %8 = hal.interface.binding.subspan layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%6#1) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x2x32xf32>>
        %9 = hal.interface.binding.subspan layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%6#2) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x49x32xf32>>
        %10 = iree_tensor_ext.dispatch.tensor.load %7, offsets = [0, 0], sizes = [49, 32], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x32xf32>> -> tensor<49x32xf32>
        %11 = iree_tensor_ext.dispatch.tensor.load %8, offsets = [0, 0, 0], sizes = [32, 2, 32], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x2x32xf32>> -> tensor<32x2x32xf32>
        %12 = tensor.empty() : tensor<2x49x32xf32>
        %13 = linalg.fill {lowering_config = #iree_cpu.lowering_config<cache_parallel = [1, 7, 32], vector_common_parallel = [1, 7, 16]>} ins(%cst : f32) outs(%12 : tensor<2x49x32xf32>) -> tensor<2x49x32xf32>
        %14 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d3, d0, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%10, %11 : tensor<49x32xf32>, tensor<32x2x32xf32>) outs(%13 : tensor<2x49x32xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [1, 7, 32, 0], distribution = [1, 7, 32, 0], vector_common_parallel = [1, 7, 16, 0], vector_reduction = [0, 0, 0, 1]>} {
        ^bb0(%in: f32, %in_0: f32, %out: f32):
          %16 = arith.mulf %in, %in_0 : f32
          %17 = arith.addf %out, %16 : f32
          linalg.yield %17 : f32
        } -> tensor<2x49x32xf32>
        %15 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%14 : tensor<2x49x32xf32>) outs(%12 : tensor<2x49x32xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [1, 7, 32], vector_common_parallel = [1, 7, 16]>} {
        ^bb0(%in: f32, %out: f32):
          %16 = arith.addf %in, %cst : f32
          linalg.yield %16 : f32
        } -> tensor<2x49x32xf32>
        iree_tensor_ext.dispatch.tensor.store %15, %9, offsets = [0, 0, 0], sizes = [2, 49, 32], strides = [1, 1, 1] : tensor<2x49x32xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x49x32xf32>>
        return
      }
    }
  }
}
