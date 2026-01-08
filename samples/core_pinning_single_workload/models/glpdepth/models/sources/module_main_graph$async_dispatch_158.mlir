hal.executable public @main_graph$async_dispatch_158 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_158_pack_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_158_pack_f32() {
        %c577024 = arith.constant 577024 : index
        %c627200 = arith.constant 627200 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c577024) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x8x32xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c627200) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7x8x32x7x1xf32>>
        %2 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0], sizes = [49, 8, 32], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x8x32xf32>> -> tensor<49x8x32xf32>
        %3 = tensor.empty() : tensor<7x8x32x7x1xf32>
        %pack = linalg.pack %2 outer_dims_perm = [0, 1, 2] inner_dims_pos = [0, 2] inner_tiles = [7, 1] into %3 : tensor<49x8x32xf32> -> tensor<7x8x32x7x1xf32>
        iree_tensor_ext.dispatch.tensor.store %pack, %1, offsets = [0, 0, 0, 0, 0], sizes = [7, 8, 32, 7, 1], strides = [1, 1, 1, 1, 1] : tensor<7x8x32x7x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7x8x32x7x1xf32>>
        return
      }
    }
  }
}
