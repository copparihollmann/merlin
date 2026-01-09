hal.executable public @main_graph$async_dispatch_111 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32() {
        %cst = arith.constant 0.000000e+00 : f32
        %c1195648 = arith.constant 1195648 : index
        %c1003520 = arith.constant 1003520 : index
        %0 = hal.interface.constant.load layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = arith.index_castui %0 : i32 to index
        %2 = util.assume.int %1[<umin = 607488, umax = 607488, udiv = 607488>, <umin = 464128, umax = 464128, udiv = 464128>] : index
        %3 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%2) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<5x5x49x7x1xf32>>
        %4 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c1195648) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<5x7x49x32x1xf32>>
        %5 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c1003520) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<5x5x7x7x32xf32>>
        %6 = iree_tensor_ext.dispatch.tensor.load %3, offsets = [0, 0, 0, 0, 0], sizes = [5, 5, 49, 7, 1], strides = [1, 1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<5x5x49x7x1xf32>> -> tensor<5x5x49x7x1xf32>
        %7 = iree_tensor_ext.dispatch.tensor.load %4, offsets = [0, 0, 0, 0, 0], sizes = [5, 7, 49, 32, 1], strides = [1, 1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<5x7x49x32x1xf32>> -> tensor<5x7x49x32x1xf32>
        %8 = tensor.empty() : tensor<5x5x7x7x32xf32>
        %9 = linalg.fill ins(%cst : f32) outs(%8 : tensor<5x5x7x7x32xf32>) -> tensor<5x5x7x7x32xf32>
        %10 = linalg.batch_mmt4d ins(%6, %7 : tensor<5x5x49x7x1xf32>, tensor<5x7x49x32x1xf32>) outs(%9 : tensor<5x5x7x7x32xf32>) -> tensor<5x5x7x7x32xf32>
        iree_tensor_ext.dispatch.tensor.store %10, %5, offsets = [0, 0, 0, 0, 0], sizes = [5, 5, 7, 7, 32], strides = [1, 1, 1, 1, 1] : tensor<5x5x7x7x32xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<5x5x7x7x32xf32>>
        return
      }
    }
  }
}
