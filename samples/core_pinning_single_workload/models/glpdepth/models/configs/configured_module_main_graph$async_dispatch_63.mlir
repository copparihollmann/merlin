hal.executable public @main_graph$async_dispatch_63 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_63_elementwise_broadcast_2x49x32_f32_pack ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_63_elementwise_broadcast_2x49x32_f32_pack() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>} {
        %c0 = arith.constant 0 : index
        %cst = arith.constant 0.000000e+00 : f32
        %c1 = arith.constant 1 : index
        %c606208 = arith.constant 606208 : index
        %c631296 = arith.constant 631296 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c606208) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x1x2x49x32xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c631296) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x5x49x7x1xf32>>
        %2 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0, 0, 0], sizes = [2, 1, 2, 49, 32], strides = [1, 1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x1x2x49x32xf32>> -> tensor<2x1x2x49x32xf32>
        %3 = tensor.empty() : tensor<2x5x49x7x1xf32>
        %4 = tensor.empty() : tensor<2x49x32xf32>
        %5 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<2x49x32xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [2, 49, 35], vector_common_parallel = [1, 1, 7]>} {
        ^bb0(%out: f32):
          %6 = linalg.index 0 : index
          %7 = linalg.index 1 : index
          %8 = linalg.index 2 : index
          %extracted = tensor.extract %2[%c1, %c0, %6, %7, %8] : tensor<2x1x2x49x32xf32>
          linalg.yield %extracted : f32
        } -> tensor<2x49x32xf32>
        %pack = linalg.pack %5 padding_value(%cst : f32) outer_dims_perm = [0, 2, 1] inner_dims_pos = [2, 1] inner_tiles = [7, 1] into %3 {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 1]>} : tensor<2x49x32xf32> -> tensor<2x5x49x7x1xf32>
        iree_tensor_ext.dispatch.tensor.store %pack, %1, offsets = [0, 0, 0, 0, 0], sizes = [2, 5, 49, 7, 1], strides = [1, 1, 1, 1, 1] : tensor<2x5x49x7x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x5x49x7x1xf32>>
        return
      }
    }
  }
}
