hal.executable public @main_graph$async_dispatch_103 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_103_reduction_49x160_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_103_reduction_49x160_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
        %cst = arith.constant 0.000000e+00 : f32
        %cst_0 = arith.constant 9.99999974E-6 : f32
        %cst_1 = arith.constant 1.600000e+02 : f32
        %0 = hal.interface.constant.load layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = hal.interface.constant.load layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
        %2 = hal.interface.constant.load layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(2) : i32
        %3 = arith.index_castui %0 : i32 to index
        %4 = arith.index_castui %1 : i32 to index
        %5 = arith.index_castui %2 : i32 to index
        %6:3 = util.assume.int 
            %3[<umin = 576128, umax = 576128, udiv = 576128>, <umin = 432768, umax = 432768, udiv = 432768>], 
            %4[<umin = 544768, umax = 544768, udiv = 544768>, <umin = 401408, umax = 401408, udiv = 401408>], 
            %5[<umin = 607488, umax = 607488, udiv = 607488>, <umin = 464128, umax = 464128, udiv = 464128>]
          : index, index, index
        %7 = hal.interface.binding.subspan layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%6#0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x160xf32>>
        %8 = hal.interface.binding.subspan layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%6#1) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<160x49xf32>>
        %9 = hal.interface.binding.subspan layout(<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%6#2) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<49x160xf32>>
        %10 = iree_tensor_ext.dispatch.tensor.load %7, offsets = [0, 0], sizes = [49, 160], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x160xf32>> -> tensor<49x160xf32>
        %11 = iree_tensor_ext.dispatch.tensor.load %8, offsets = [0, 0], sizes = [160, 49], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<160x49xf32>> -> tensor<160x49xf32>
        %12 = tensor.empty() : tensor<49x160xf32>
        %13 = tensor.empty() : tensor<49xf32>
        %14 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1]>} ins(%cst : f32) outs(%13 : tensor<49xf32>) -> tensor<49xf32>
        %15 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%10 : tensor<49x160xf32>) outs(%14 : tensor<49xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 0], vector_reduction = [0, 8]>} {
        ^bb0(%in: f32, %out: f32):
          %18 = arith.addf %in, %out : f32
          linalg.yield %18 : f32
        } -> tensor<49xf32>
        %16 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%11, %15 : tensor<160x49xf32>, tensor<49xf32>) outs(%14 : tensor<49xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [1, 0], vector_common_parallel = [1, 0], vector_reduction = [0, 1]>} {
        ^bb0(%in: f32, %in_2: f32, %out: f32):
          %18 = arith.divf %in_2, %cst_1 : f32
          %19 = arith.subf %in, %18 : f32
          %20 = arith.mulf %19, %19 : f32
          %21 = arith.addf %20, %out : f32
          linalg.yield %21 : f32
        } -> tensor<49xf32>
        %17 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%11, %15, %16 : tensor<160x49xf32>, tensor<49xf32>, tensor<49xf32>) outs(%12 : tensor<49x160xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 0], vector_inner_parallel = [0, 8]>} {
        ^bb0(%in: f32, %in_2: f32, %in_3: f32, %out: f32):
          %18 = arith.divf %in_2, %cst_1 : f32
          %19 = arith.subf %in, %18 : f32
          %20 = arith.divf %in_3, %cst_1 : f32
          %21 = arith.addf %20, %cst_0 : f32
          %22 = math.rsqrt %21 : f32
          %23 = arith.mulf %19, %22 : f32
          %24 = arith.addf %23, %cst : f32
          linalg.yield %24 : f32
        } -> tensor<49x160xf32>
        iree_tensor_ext.dispatch.tensor.store %17, %9, offsets = [0, 0], sizes = [49, 160], strides = [1, 1] : tensor<49x160xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<49x160xf32>>
        return
      }
    }
  }
}
