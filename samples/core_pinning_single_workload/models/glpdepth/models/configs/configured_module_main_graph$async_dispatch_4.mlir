hal.executable public @main_graph$async_dispatch_4 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_4_mmt4d_5x98x32x7x32x1_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_4_mmt4d_5x98x32x7x32x1_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = Mmt4dTilingExpert>} {
        %cst = arith.constant 0.000000e+00 : f32
        %0 = hal.interface.constant.load layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = hal.interface.constant.load layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
        %2 = hal.interface.constant.load layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(2) : i32
        %3 = arith.index_castui %0 : i32 to index
        %4 = arith.index_castui %1 : i32 to index
        %5 = arith.index_castui %2 : i32 to index
        %6:3 = util.assume.int 
            %3[<umin = 0, umax = 0>, <umin = 4480, umax = 4480, udiv = 4480>, <umin = 26880, umax = 26880, udiv = 26880>, <umin = 31360, umax = 31360, udiv = 31360>], 
            %4[<umin = 401408, umax = 401408, udiv = 401408>, <umin = 401408, umax = 401408, udiv = 401408>, <umin = 802816, umax = 802816, udiv = 802816>, <umin = 802816, umax = 802816, udiv = 802816>], 
            %5[<umin = 802816, umax = 802816, udiv = 802816>, <umin = 802816, umax = 802816, udiv = 802816>, <umin = 1204224, umax = 1204224, udiv = 1204224>, <umin = 1204224, umax = 1204224, udiv = 1204224>]
          : index, index, index
        %7 = hal.interface.binding.subspan layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%6#0) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<5x32x7x1xf32>>
        %8 = hal.interface.binding.subspan layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%6#1) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<98x32x32x1xf32>>
        %9 = hal.interface.binding.subspan layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%6#2) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<5x98x7x32xf32>>
        %10 = iree_tensor_ext.dispatch.tensor.load %7, offsets = [0, 0, 0, 0], sizes = [5, 32, 7, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<5x32x7x1xf32>> -> tensor<5x32x7x1xf32>
        %11 = iree_tensor_ext.dispatch.tensor.load %8, offsets = [0, 0, 0, 0], sizes = [98, 32, 32, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<98x32x32x1xf32>> -> tensor<98x32x32x1xf32>
        %12 = tensor.empty() : tensor<5x98x7x32xf32>
        %13 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 0, 7]>} ins(%cst : f32) outs(%12 : tensor<5x98x7x32xf32>) -> tensor<5x98x7x32xf32>
        %14 = linalg.mmt4d {lowering_config = #iree_cpu.lowering_config<distribution = [1, 14, 0, 0, 0, 0], vector_common_parallel = [1, 1, 0, 7, 32, 0], vector_reduction = [0, 0, 1, 0, 0, 1]>} ins(%10, %11 : tensor<5x32x7x1xf32>, tensor<98x32x32x1xf32>) outs(%13 : tensor<5x98x7x32xf32>) -> tensor<5x98x7x32xf32>
        iree_tensor_ext.dispatch.tensor.store %14, %9, offsets = [0, 0, 0, 0], sizes = [5, 98, 7, 32], strides = [1, 1, 1, 1] : tensor<5x98x7x32xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<5x98x7x32xf32>>
        return
      }
    }
  }
}
