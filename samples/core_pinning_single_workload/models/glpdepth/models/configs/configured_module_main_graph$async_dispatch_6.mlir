hal.executable public @main_graph$async_dispatch_6 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_6_conv_32x7x7x32x8x8_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_6_conv_32x7x7x32x8x8_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>} {
        %cst = arith.constant 0.000000e+00 : f32
        %0 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
        %2 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(2) : i32
        %3 = hal.interface.constant.load layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(3) : i32
        %4 = arith.index_castui %0 : i32 to index
        %5 = arith.index_castui %1 : i32 to index
        %6 = arith.index_castui %2 : i32 to index
        %7 = arith.index_castui %3 : i32 to index
        %8:4 = util.assume.int 
            %4[<umin = 1437632, umax = 1437632, udiv = 1437632>, <umin = 401408, umax = 401408, udiv = 401408>], 
            %5[<umin = 11371008, umax = 11371008, udiv = 11371008>, <umin = 11108864, umax = 11108864, udiv = 11108864>], 
            %6[<umin = 1241856, umax = 1241856, udiv = 1241856>, <umin = 1643264, umax = 1643264, udiv = 1643264>], 
            %7[<umin = 1248128, umax = 1248128, udiv = 1248128>, <umin = 1649536, umax = 1649536, udiv = 1649536>]
          : index, index, index, index
        %9 = hal.interface.binding.subspan layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%8#0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<56x56x32xf32>>
        %10 = hal.interface.binding.subspan layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%8#1) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x32x8x8xf32>>
        %11 = hal.interface.binding.subspan layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%8#2) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x7x7xf32>>
        %12 = hal.interface.binding.subspan layout(<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(3) alignment(64) offset(%8#3) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7x7x32xf32>>
        %13 = iree_tensor_ext.dispatch.tensor.load %9, offsets = [0, 0, 0], sizes = [56, 56, 32], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<56x56x32xf32>> -> tensor<56x56x32xf32>
        %14 = iree_tensor_ext.dispatch.tensor.load %10, offsets = [0, 0, 0, 0], sizes = [32, 32, 8, 8], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x32x8x8xf32>> -> tensor<32x32x8x8xf32>
        %15 = tensor.empty() : tensor<7x7x32xf32>
        %16 = tensor.empty() : tensor<32x7x7xf32>
        %17 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 1]>} ins(%cst : f32) outs(%16 : tensor<32x7x7xf32>) -> tensor<32x7x7xf32>
        %18 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d1 * 8 + d4, d2 * 8 + d5, d3)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%13, %14 : tensor<56x56x32xf32>, tensor<32x32x8x8xf32>) outs(%17 : tensor<32x7x7xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [4, 1, 7, 0, 0, 0], vector_common_parallel = [1, 1, 1, 0, 0, 0], vector_reduction = [0, 0, 0, 8, 1, 8]>} {
        ^bb0(%in: f32, %in_0: f32, %out: f32):
          %20 = arith.mulf %in, %in_0 : f32
          %21 = arith.addf %out, %20 : f32
          linalg.yield %21 : f32
        } -> tensor<32x7x7xf32>
        %19 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%18 : tensor<32x7x7xf32>) outs(%15 : tensor<7x7x32xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 1]>} {
        ^bb0(%in: f32, %out: f32):
          linalg.yield %in : f32
        } -> tensor<7x7x32xf32>
        iree_tensor_ext.dispatch.tensor.store %18, %11, offsets = [0, 0, 0], sizes = [32, 7, 7], strides = [1, 1, 1] : tensor<32x7x7xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x7x7xf32>>
        iree_tensor_ext.dispatch.tensor.store %19, %12, offsets = [0, 0, 0], sizes = [7, 7, 32], strides = [1, 1, 1] : tensor<7x7x32xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7x7x32xf32>>
        return
      }
    }
  }
}
