hal.executable public @main_graph$async_dispatch_160 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_160_unpack_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_160_unpack_f32() {
        %c627200 = arith.constant 627200 : index
        %0 = hal.interface.constant.load layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = arith.index_castui %0 : i32 to index
        %2 = util.assume.int %1[<umin = 577024, umax = 577024, udiv = 577024>, <umin = 526848, umax = 526848, udiv = 526848>, <umin = 577024, umax = 577024, udiv = 577024>, <umin = 526848, umax = 526848, udiv = 526848>] : index
        %3 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%2) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<7x8x7x32xf32>>
        %4 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c627200) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<49x256xf32>>
        %5 = iree_tensor_ext.dispatch.tensor.load %3, offsets = [0, 0, 0, 0], sizes = [7, 8, 7, 32], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<7x8x7x32xf32>> -> tensor<7x8x7x32xf32>
        %6 = tensor.empty() : tensor<49x256xf32>
        %unpack = linalg.unpack %5 outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [7, 32] into %6 : tensor<7x8x7x32xf32> -> tensor<49x256xf32>
        iree_tensor_ext.dispatch.tensor.store %unpack, %4, offsets = [0, 0], sizes = [49, 256], strides = [1, 1] : tensor<49x256xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<49x256xf32>>
        return
      }
    }
  }
}
