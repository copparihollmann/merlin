hal.executable public @main_graph$async_dispatch_105 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_105_elementwise_broadcast_5x32x49_f32_pack ordinal(0) layout(#hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_105_elementwise_broadcast_5x32x49_f32_pack() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>} {
        %c0 = arith.constant 0 : index
        %0 = hal.interface.constant.load layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = hal.interface.constant.load layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
        %2 = arith.index_castui %0 : i32 to index
        %3 = arith.index_castui %1 : i32 to index
        %4:2 = util.assume.int 
            %2[<umin = 544768, umax = 544768, udiv = 544768>, <umin = 401408, umax = 401408, udiv = 401408>], 
            %3[<umin = 607488, umax = 607488, udiv = 607488>, <umin = 464128, umax = 464128, udiv = 464128>]
          : index, index
        %5 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%4#0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x1x5x49x32xf32>>
        %6 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%4#1) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<5x7x32x7x1xf32>>
        %7 = iree_tensor_ext.dispatch.tensor.load %5, offsets = [0, 0, 0, 0, 0], sizes = [2, 1, 5, 49, 32], strides = [1, 1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x1x5x49x32xf32>> -> tensor<2x1x5x49x32xf32>
        %8 = tensor.empty() : tensor<5x7x32x7x1xf32>
        %9 = tensor.empty() : tensor<5x32x49xf32>
        %10 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%9 : tensor<5x32x49xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [5, 32, 49], vector_common_parallel = [1, 1, 7]>} {
        ^bb0(%out: f32):
          %11 = linalg.index 0 : index
          %12 = linalg.index 2 : index
          %13 = linalg.index 1 : index
          %extracted = tensor.extract %7[%c0, %c0, %11, %12, %13] : tensor<2x1x5x49x32xf32>
          linalg.yield %extracted : f32
        } -> tensor<5x32x49xf32>
        %pack = linalg.pack %10 outer_dims_perm = [0, 2, 1] inner_dims_pos = [2, 1] inner_tiles = [7, 1] into %8 {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 1]>} : tensor<5x32x49xf32> -> tensor<5x7x32x7x1xf32>
        iree_tensor_ext.dispatch.tensor.store %pack, %6, offsets = [0, 0, 0, 0, 0], sizes = [5, 7, 32, 7, 1], strides = [1, 1, 1, 1, 1] : tensor<5x7x32x7x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<5x7x32x7x1xf32>>
        return
      }
    }
  }
}
