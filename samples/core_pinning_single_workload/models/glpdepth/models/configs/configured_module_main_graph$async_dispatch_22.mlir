hal.executable public @main_graph$async_dispatch_22 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_22_conv_56x56x128x3x3_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_22_conv_56x56x128x3x3_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>} {
        %cst = arith.constant 5.000000e-01 : f32
        %cst_0 = arith.constant 1.000000e+00 : f32
        %cst_1 = arith.constant 1.41421354 : f32
        %cst_2 = arith.constant 0.000000e+00 : f32
        %c1605632 = arith.constant 1605632 : index
        %c3328000 = arith.constant 3328000 : index
        %0 = hal.interface.constant.load layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = arith.index_castui %0 : i32 to index
        %2 = util.assume.int %1[<umin = 13568896, umax = 13568896, udiv = 13568896>, <umin = 13573504, umax = 13573504, udiv = 13573504>] : index
        %3 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c1605632) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x58x58xf32>>
        %4 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%2) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x3x3xf32>>
        %5 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c3328000) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<56x56x128xf32>>
        %6 = iree_tensor_ext.dispatch.tensor.load %3, offsets = [0, 0, 0], sizes = [128, 58, 58], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x58x58xf32>> -> tensor<128x58x58xf32>
        %7 = iree_tensor_ext.dispatch.tensor.load %4, offsets = [0, 0, 0], sizes = [128, 3, 3], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x3x3xf32>> -> tensor<128x3x3xf32>
        %8 = tensor.empty() : tensor<56x56x128xf32>
        %9 = tensor.empty() : tensor<128x56x56xf32>
        %10 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 8, 1]>} ins(%cst_2 : f32) outs(%9 : tensor<128x56x56xf32>) -> tensor<128x56x56xf32>
        %11 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d2, d0 + d3, d1 + d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d0, d1)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%6, %7 : tensor<128x58x58xf32>, tensor<128x3x3xf32>) outs(%10 : tensor<128x56x56xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [28, 28, 32, 0, 0], vector_common_parallel = [1, 8, 1, 0, 0], vector_reduction = [0, 0, 0, 1, 8]>} {
        ^bb0(%in: f32, %in_3: f32, %out: f32):
          %13 = arith.mulf %in, %in_3 : f32
          %14 = arith.addf %out, %13 : f32
          linalg.yield %14 : f32
        } -> tensor<128x56x56xf32>
        %12 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%11 : tensor<128x56x56xf32>) outs(%8 : tensor<56x56x128xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 8, 1]>} {
        ^bb0(%in: f32, %out: f32):
          %13 = arith.divf %in, %cst_1 : f32
          %14 = math.erf %13 : f32
          %15 = arith.addf %14, %cst_0 : f32
          %16 = arith.mulf %15, %cst : f32
          %17 = arith.mulf %in, %16 : f32
          linalg.yield %17 : f32
        } -> tensor<56x56x128xf32>
        iree_tensor_ext.dispatch.tensor.store %12, %5, offsets = [0, 0, 0], sizes = [56, 56, 128], strides = [1, 1, 1] : tensor<56x56x128xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<56x56x128xf32>>
        return
      }
    }
  }
}
