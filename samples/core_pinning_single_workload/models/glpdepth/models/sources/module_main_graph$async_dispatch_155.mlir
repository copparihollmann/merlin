hal.executable public @main_graph$async_dispatch_155 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack ordinal(0) layout(#hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_155_elementwise_broadcast_8x49x32_f32_pack() {
        %c1 = arith.constant 1 : index
        %cst = arith.constant 0.000000e+00 : f32
        %c0 = arith.constant 0 : index
        %c1080384 = arith.constant 1080384 : index
        %0 = hal.interface.constant.load layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = arith.index_castui %0 : i32 to index
        %2 = util.assume.int %1[<umin = 677376, umax = 677376, udiv = 677376>, <umin = 577024, umax = 577024, udiv = 577024>] : index
        %3 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%2) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x1x8x49x32xf32>>
        %4 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c1080384) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x5x49x7x1xf32>>
        %5 = iree_tensor_ext.dispatch.tensor.load %3, offsets = [0, 0, 0, 0, 0], sizes = [2, 1, 8, 49, 32], strides = [1, 1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x1x8x49x32xf32>> -> tensor<2x1x8x49x32xf32>
        %6 = tensor.empty() : tensor<8x5x49x7x1xf32>
        %7 = tensor.empty() : tensor<8x49x32xf32>
        %8 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%7 : tensor<8x49x32xf32>) {
        ^bb0(%out: f32):
          %9 = linalg.index 0 : index
          %10 = linalg.index 1 : index
          %11 = linalg.index 2 : index
          %extracted = tensor.extract %5[%c1, %c0, %9, %10, %11] : tensor<2x1x8x49x32xf32>
          linalg.yield %extracted : f32
        } -> tensor<8x49x32xf32>
        %pack = linalg.pack %8 padding_value(%cst : f32) outer_dims_perm = [0, 2, 1] inner_dims_pos = [2, 1] inner_tiles = [7, 1] into %6 : tensor<8x49x32xf32> -> tensor<8x5x49x7x1xf32>
        iree_tensor_ext.dispatch.tensor.store %pack, %4, offsets = [0, 0, 0, 0, 0], sizes = [8, 5, 49, 7, 1], strides = [1, 1, 1, 1, 1] : tensor<8x5x49x7x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x5x49x7x1xf32>>
        return
      }
    }
  }
}
