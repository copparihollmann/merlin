hal.executable public @main_graph$async_dispatch_101 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_101_matmul_like_5x196x32x160_f32_pack ordinal(0) layout(#hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_101_matmul_like_5x196x32x160_f32_pack() {
        %cst = arith.constant 0.000000e+00 : f32
        %c1003520 = arith.constant 1003520 : index
        %0 = hal.interface.constant.load layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = hal.interface.constant.load layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
        %2 = arith.index_castui %0 : i32 to index
        %3 = arith.index_castui %1 : i32 to index
        %4:2 = util.assume.int 
            %2[<umin = 13882496, umax = 13882496, udiv = 13882496>, <umin = 13984896, umax = 13984896, udiv = 13984896>], 
            %3[<umin = 401408, umax = 401408, udiv = 401408>, <umin = 652288, umax = 652288, udiv = 652288>]
          : index, index
        %5 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c1003520) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<196x160xf32>>
        %6 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%4#0) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<160x5x32xf32>>
        %7 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%4#1) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<5x7x32x32x1xf32>>
        %8 = iree_tensor_ext.dispatch.tensor.load %5, offsets = [0, 0], sizes = [196, 160], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<196x160xf32>> -> tensor<196x160xf32>
        %9 = iree_tensor_ext.dispatch.tensor.load %6, offsets = [0, 0, 0], sizes = [160, 5, 32], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<160x5x32xf32>> -> tensor<160x5x32xf32>
        %10 = tensor.empty() : tensor<5x7x32x32x1xf32>
        %11 = tensor.empty() : tensor<5x196x32xf32>
        %12 = linalg.fill ins(%cst : f32) outs(%11 : tensor<5x196x32xf32>) -> tensor<5x196x32xf32>
        %13 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d3, d0, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%8, %9 : tensor<196x160xf32>, tensor<160x5x32xf32>) outs(%12 : tensor<5x196x32xf32>) {
        ^bb0(%in: f32, %in_0: f32, %out: f32):
          %15 = arith.mulf %in, %in_0 : f32
          %16 = arith.addf %out, %15 : f32
          linalg.yield %16 : f32
        } -> tensor<5x196x32xf32>
        %14 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%13 : tensor<5x196x32xf32>) outs(%11 : tensor<5x196x32xf32>) {
        ^bb0(%in: f32, %out: f32):
          %15 = arith.addf %in, %cst : f32
          linalg.yield %15 : f32
        } -> tensor<5x196x32xf32>
        %pack = linalg.pack %14 padding_value(%cst : f32) outer_dims_perm = [0, 1, 2] inner_dims_pos = [1, 2] inner_tiles = [32, 1] into %10 : tensor<5x196x32xf32> -> tensor<5x7x32x32x1xf32>
        iree_tensor_ext.dispatch.tensor.store %pack, %7, offsets = [0, 0, 0, 0, 0], sizes = [5, 7, 32, 32, 1], strides = [1, 1, 1, 1, 1] : tensor<5x7x32x32x1xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<5x7x32x32x1xf32>>
        return
      }
    }
  }
}
