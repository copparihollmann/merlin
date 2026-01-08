hal.executable public @main_graph$async_dispatch_159 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_159_mmt4d_7x8x256x7x32x1_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_159_mmt4d_7x8x256x7x32x1_f32() {
        %cst = arith.constant 0.000000e+00 : f32
        %c627200 = arith.constant 627200 : index
        %c577024 = arith.constant 577024 : index
        %0 = hal.interface.constant.load layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = arith.index_castui %0 : i32 to index
        %2 = util.assume.int %1[<umin = 1263360, umax = 1263360, udiv = 1263360>, <umin = 2574080, umax = 2574080, udiv = 2574080>] : index
        %3 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c627200) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<7x256x7x1xf32>>
        %4 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%2) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x256x32x1xf32>>
        %5 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c577024) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7x8x7x32xf32>>
        %6 = iree_tensor_ext.dispatch.tensor.load %3, offsets = [0, 0, 0, 0], sizes = [7, 256, 7, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<7x256x7x1xf32>> -> tensor<7x256x7x1xf32>
        %7 = iree_tensor_ext.dispatch.tensor.load %4, offsets = [0, 0, 0, 0], sizes = [8, 256, 32, 1], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x256x32x1xf32>> -> tensor<8x256x32x1xf32>
        %8 = tensor.empty() : tensor<7x8x7x32xf32>
        %9 = linalg.fill ins(%cst : f32) outs(%8 : tensor<7x8x7x32xf32>) -> tensor<7x8x7x32xf32>
        %10 = linalg.mmt4d ins(%6, %7 : tensor<7x256x7x1xf32>, tensor<8x256x32x1xf32>) outs(%9 : tensor<7x8x7x32xf32>) -> tensor<7x8x7x32xf32>
        iree_tensor_ext.dispatch.tensor.store %10, %5, offsets = [0, 0, 0, 0], sizes = [7, 8, 7, 32], strides = [1, 1, 1, 1] : tensor<7x8x7x32xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7x8x7x32xf32>>
        return
      }
    }
  }
}
