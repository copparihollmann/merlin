hal.executable public @main_graph$async_dispatch_16 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_16_unpack_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_16_unpack_f32() {
        %0 = hal.interface.constant.load layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = hal.interface.constant.load layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
        %2 = arith.index_castui %0 : i32 to index
        %3 = arith.index_castui %1 : i32 to index
        %4:2 = util.assume.int 
            %2[<umin = 408320, umax = 408320, udiv = 408320>, <umin = 802816, umax = 802816, udiv = 802816>, <umin = 0, umax = 0>, <umin = 1034880, umax = 1034880, udiv = 1034880>, <umin = 1204224, umax = 1204224, udiv = 1204224>, <umin = 0, umax = 0>], 
            %3[<umin = 847360, umax = 847360, udiv = 847360>, <umin = 401408, umax = 401408, udiv = 401408>, <umin = 1204224, umax = 1204224, udiv = 1204224>, <umin = 401408, umax = 401408, udiv = 401408>, <umin = 401408, umax = 401408, udiv = 401408>, <umin = 1204224, umax = 1204224, udiv = 1204224>]
          : index, index
        %5 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%4#0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<5x98x7x32xf32>>
        %6 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%4#1) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3136x32xf32>>
        %7 = iree_tensor_ext.dispatch.tensor.load %5, offsets = [0, 0, 0, 0], sizes = [5, 98, 7, 32], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<5x98x7x32xf32>> -> tensor<5x98x7x32xf32>
        %8 = tensor.empty() : tensor<3136x32xf32>
        %unpack = linalg.unpack %7 outer_dims_perm = [1, 0] inner_dims_pos = [1, 0] inner_tiles = [7, 32] into %8 : tensor<5x98x7x32xf32> -> tensor<3136x32xf32>
        iree_tensor_ext.dispatch.tensor.store %unpack, %6, offsets = [0, 0], sizes = [3136, 32], strides = [1, 1] : tensor<3136x32xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3136x32xf32>>
        return
      }
    }
  }
}
