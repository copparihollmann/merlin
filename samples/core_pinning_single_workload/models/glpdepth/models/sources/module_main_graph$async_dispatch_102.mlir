hal.executable public @main_graph$async_dispatch_102 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_102_conv_160x7x7x160x2x2_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_102_conv_160x7x7x160x2x2_f32() {
        %cst = arith.constant 0.000000e+00 : f32
        %c1003520 = arith.constant 1003520 : index
        %0 = hal.interface.constant.load layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = hal.interface.constant.load layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
        %2 = hal.interface.constant.load layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(2) : i32
        %3 = arith.index_castui %0 : i32 to index
        %4 = arith.index_castui %1 : i32 to index
        %5 = arith.index_castui %2 : i32 to index
        %6:3 = util.assume.int 
            %3[<umin = 10174976, umax = 10174976, udiv = 10174976>, <umin = 9765376, umax = 9765376, udiv = 9765376>], 
            %4[<umin = 544768, umax = 544768, udiv = 544768>, <umin = 401408, umax = 401408, udiv = 401408>], 
            %5[<umin = 576128, umax = 576128, udiv = 576128>, <umin = 432768, umax = 432768, udiv = 432768>]
          : index, index, index
        %7 = hal.interface.binding.subspan layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c1003520) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<14x14x160xf32>>
        %8 = hal.interface.binding.subspan layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%6#0) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<160x160x2x2xf32>>
        %9 = hal.interface.binding.subspan layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%6#1) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<160x7x7xf32>>
        %10 = hal.interface.binding.subspan layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(3) alignment(64) offset(%6#2) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7x7x160xf32>>
        %11 = iree_tensor_ext.dispatch.tensor.load %7, offsets = [0, 0, 0], sizes = [14, 14, 160], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<14x14x160xf32>> -> tensor<14x14x160xf32>
        %12 = iree_tensor_ext.dispatch.tensor.load %8, offsets = [0, 0, 0, 0], sizes = [160, 160, 2, 2], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<160x160x2x2xf32>> -> tensor<160x160x2x2xf32>
        %13 = tensor.empty() : tensor<7x7x160xf32>
        %14 = tensor.empty() : tensor<160x7x7xf32>
        %15 = linalg.fill ins(%cst : f32) outs(%14 : tensor<160x7x7xf32>) -> tensor<160x7x7xf32>
        %16 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d1 * 2 + d4, d2 * 2 + d5, d3)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%11, %12 : tensor<14x14x160xf32>, tensor<160x160x2x2xf32>) outs(%15 : tensor<160x7x7xf32>) {
        ^bb0(%in: f32, %in_0: f32, %out: f32):
          %18 = arith.mulf %in, %in_0 : f32
          %19 = arith.addf %out, %18 : f32
          linalg.yield %19 : f32
        } -> tensor<160x7x7xf32>
        %17 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%16 : tensor<160x7x7xf32>) outs(%13 : tensor<7x7x160xf32>) {
        ^bb0(%in: f32, %out: f32):
          linalg.yield %in : f32
        } -> tensor<7x7x160xf32>
        iree_tensor_ext.dispatch.tensor.store %16, %9, offsets = [0, 0, 0], sizes = [160, 7, 7], strides = [1, 1, 1] : tensor<160x7x7xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<160x7x7xf32>>
        iree_tensor_ext.dispatch.tensor.store %17, %10, offsets = [0, 0, 0], sizes = [7, 7, 160], strides = [1, 1, 1] : tensor<7x7x160xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7x7x160xf32>>
        return
      }
    }
  }
}
