hal.executable public @main_graph$async_dispatch_152 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_152_unpack_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_152_unpack_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDataTiling>} {
        %c1069056 = arith.constant 1069056 : index
        %0 = hal.interface.constant.load layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = arith.index_castui %0 : i32 to index
        %2 = util.assume.int %1[<umin = 577024, umax = 577024, udiv = 577024>, <umin = 677376, umax = 677376, udiv = 677376>] : index
        %3 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c1069056) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x7x2x7x32xf32>>
        %4 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%2) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x49x49xf32>>
        %5 = iree_tensor_ext.dispatch.tensor.load %3, offsets = [0, 0, 0, 0, 0], sizes = [8, 7, 2, 7, 32], strides = [1, 1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x7x2x7x32xf32>> -> tensor<8x7x2x7x32xf32>
        %6 = tensor.empty() : tensor<8x49x49xf32>
        %unpack = linalg.unpack %5 outer_dims_perm = [0, 1, 2] inner_dims_pos = [1, 2] inner_tiles = [7, 32] into %6 {lowering_config = #iree_cpu.lowering_config<distribution = [1, 7, 64], vector_common_parallel = [1, 7, 32]>} : tensor<8x7x2x7x32xf32> -> tensor<8x49x49xf32>
        iree_tensor_ext.dispatch.tensor.store %unpack, %4, offsets = [0, 0, 0], sizes = [8, 49, 49], strides = [1, 1, 1] : tensor<8x49x49xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x49x49xf32>>
        return
      }
    }
  }
}
