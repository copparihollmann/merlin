hal.executable public @main_graph$async_dispatch_148 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_148_matmul_like_8x49x32x256_f32_pack ordinal(0) layout(#hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_148_matmul_like_8x49x32x256_f32_pack() {
        %cst = arith.constant 0.000000e+00 : f32
        %0 = hal.interface.constant.load layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = hal.interface.constant.load layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
        %2 = hal.interface.constant.load layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(2) : i32
        %3 = arith.index_castui %0 : i32 to index
        %4 = arith.index_castui %1 : i32 to index
        %5 = arith.index_castui %2 : i32 to index
        %6:3 = util.assume.int 
            %3[<umin = 577024, umax = 577024, udiv = 577024>, <umin = 677376, umax = 677376, udiv = 677376>], 
            %4[<umin = 14087296, umax = 14087296, udiv = 14087296>, <umin = 14349440, umax = 14349440, udiv = 14349440>], 
            %5[<umin = 627200, umax = 627200, udiv = 627200>, <umin = 727552, umax = 727552, udiv = 727552>]
          : index, index, index
        %7 = hal.interface.binding.subspan layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%6#0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x256xf32>>
        %8 = hal.interface.binding.subspan layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%6#1) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x8x32xf32>>
        %9 = hal.interface.binding.subspan layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%6#2) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x7x32x7x1xf32>>
        %10 = iree_tensor_ext.dispatch.tensor.load %7, offsets = [0, 0], sizes = [49, 256], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x256xf32>> -> tensor<49x256xf32>
        %11 = iree_tensor_ext.dispatch.tensor.load %8, offsets = [0, 0, 0], sizes = [256, 8, 32], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x8x32xf32>> -> tensor<256x8x32xf32>
        %12 = tensor.empty() : tensor<8x7x32x7x1xf32>
        %13 = tensor.empty() : tensor<8x49x32xf32>
        %14 = linalg.fill ins(%cst : f32) outs(%13 : tensor<8x49x32xf32>) -> tensor<8x49x32xf32>
        %15 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d3, d0, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%10, %11 : tensor<49x256xf32>, tensor<256x8x32xf32>) outs(%14 : tensor<8x49x32xf32>) {
        ^bb0(%in: f32, %in_0: f32, %out: f32):
          %17 = arith.mulf %in, %in_0 : f32
          %18 = arith.addf %out, %17 : f32
          linalg.yield %18 : f32
        } -> tensor<8x49x32xf32>
        %16 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%15 : tensor<8x49x32xf32>) outs(%13 : tensor<8x49x32xf32>) {
        ^bb0(%in: f32, %out: f32):
          %17 = arith.addf %in, %cst : f32
          linalg.yield %17 : f32
        } -> tensor<8x49x32xf32>
        %pack = linalg.pack %16 outer_dims_perm = [0, 1, 2] inner_dims_pos = [1, 2] inner_tiles = [7, 1] into %12 : tensor<8x49x32xf32> -> tensor<8x7x32x7x1xf32>
        iree_tensor_ext.dispatch.tensor.store %pack, %9, offsets = [0, 0, 0, 0, 0], sizes = [8, 7, 32, 7, 1], strides = [1, 1, 1, 1, 1] : tensor<8x7x32x7x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x7x32x7x1xf32>>
        return
      }
    }
  }
}
