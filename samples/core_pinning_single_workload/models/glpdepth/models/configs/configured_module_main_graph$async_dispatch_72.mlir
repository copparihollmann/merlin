hal.executable public @main_graph$async_dispatch_72 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_72_pack_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_72_pack_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDataTiling>} {
        %cst = arith.constant 0.000000e+00 : f32
        %c2125824 = arith.constant 2125824 : index
        %c802816 = arith.constant 802816 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c2125824) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<784x256xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c802816) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<25x256x32x1xf32>>
        %2 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [784, 256], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<784x256xf32>> -> tensor<784x256xf32>
        %3 = tensor.empty() : tensor<25x256x32x1xf32>
        %pack = linalg.pack %2 padding_value(%cst : f32) outer_dims_perm = [0, 1] inner_dims_pos = [0, 1] inner_tiles = [32, 1] into %3 {lowering_config = #iree_cpu.lowering_config<distribution = [1, 64], vector_common_parallel = [1, 1]>} : tensor<784x256xf32> -> tensor<25x256x32x1xf32>
        iree_tensor_ext.dispatch.tensor.store %pack, %1, offsets = [0, 0, 0, 0], sizes = [25, 256, 32, 1], strides = [1, 1, 1, 1] : tensor<25x256x32x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<25x256x32x1xf32>>
        return
      }
    }
  }
}
