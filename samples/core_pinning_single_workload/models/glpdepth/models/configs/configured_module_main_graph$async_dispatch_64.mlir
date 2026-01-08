hal.executable public @main_graph$async_dispatch_64 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_64_batch_mmt4d_2x5x25x49x7x32x1_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_64_batch_mmt4d_2x5x25x49x7x32x1_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = Mmt4dTilingExpert>} {
        %cst = arith.constant 0.000000e+00 : f32
        %c631296 = arith.constant 631296 : index
        %c1310848 = arith.constant 1310848 : index
        %c401408 = arith.constant 401408 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c631296) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x5x49x7x1xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c1310848) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x25x49x32x1xf32>>
        %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c401408) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x5x25x7x32xf32>>
        %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0, 0, 0], sizes = [2, 5, 49, 7, 1], strides = [1, 1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x5x49x7x1xf32>> -> tensor<2x5x49x7x1xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0, 0, 0, 0], sizes = [2, 25, 49, 32, 1], strides = [1, 1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x25x49x32x1xf32>> -> tensor<2x25x49x32x1xf32>
        %5 = tensor.empty() : tensor<2x5x25x7x32xf32>
        %6 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 1, 0, 7]>} ins(%cst : f32) outs(%5 : tensor<2x5x25x7x32xf32>) -> tensor<2x5x25x7x32xf32>
        %7 = linalg.batch_mmt4d {lowering_config = #iree_cpu.lowering_config<distribution = [1, 1, 5, 0, 0, 0, 0], vector_common_parallel = [1, 1, 1, 0, 7, 32, 0], vector_reduction = [0, 0, 0, 1, 0, 0, 1]>} ins(%3, %4 : tensor<2x5x49x7x1xf32>, tensor<2x25x49x32x1xf32>) outs(%6 : tensor<2x5x25x7x32xf32>) -> tensor<2x5x25x7x32xf32>
        iree_tensor_ext.dispatch.tensor.store %7, %2, offsets = [0, 0, 0, 0, 0], sizes = [2, 5, 25, 7, 32], strides = [1, 1, 1, 1, 1] : tensor<2x5x25x7x32xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x5x25x7x32xf32>>
        return
      }
    }
  }
}
