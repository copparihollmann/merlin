hal.executable public @main_graph$async_dispatch_21 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_21_matmul_like_128x56x56x32_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_21_matmul_like_128x56x56x32_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
        %cst = arith.constant 0.000000e+00 : f32
        %c1204224 = arith.constant 1204224 : index
        %c1605632 = arith.constant 1605632 : index
        %0 = hal.interface.constant.load layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = arith.index_castui %0 : i32 to index
        %2 = util.assume.int %1[<umin = 8488704, umax = 8488704, udiv = 8488704>, <umin = 8472320, umax = 8472320, udiv = 8472320>] : index
        %3 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c1204224) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<56x56x32xf32>>
        %4 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%2) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x128xf32>>
        %5 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c1605632) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<readwrite:tensor<128x58x58xf32>>
        %6 = iree_tensor_ext.dispatch.tensor.load %3, offsets = [0, 0, 0], sizes = [56, 56, 32], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<56x56x32xf32>> -> tensor<56x56x32xf32>
        %7 = iree_tensor_ext.dispatch.tensor.load %4, offsets = [0, 0], sizes = [32, 128], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x128xf32>> -> tensor<32x128xf32>
        %8 = tensor.empty() : tensor<128x56x56xf32>
        %9 = linalg.fill {lowering_config = #iree_cpu.lowering_config<cache_parallel = [64, 8, 56], vector_common_parallel = [1, 8, 32]>} ins(%cst : f32) outs(%8 : tensor<128x56x56xf32>) -> tensor<128x56x56xf32>
        %10 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%6, %7 : tensor<56x56x32xf32>, tensor<32x128xf32>) outs(%9 : tensor<128x56x56xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [64, 8, 56, 0], distribution = [64, 8, 56, 0], vector_common_parallel = [1, 8, 32, 0], vector_reduction = [0, 0, 0, 1]>} {
        ^bb0(%in: f32, %in_0: f32, %out: f32):
          %12 = arith.mulf %in, %in_0 : f32
          %13 = arith.addf %out, %12 : f32
          linalg.yield %13 : f32
        } -> tensor<128x56x56xf32>
        %11 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%10 : tensor<128x56x56xf32>) outs(%8 : tensor<128x56x56xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<cache_parallel = [64, 8, 56], vector_common_parallel = [1, 8, 32]>} {
        ^bb0(%in: f32, %out: f32):
          %12 = arith.addf %in, %cst : f32
          linalg.yield %12 : f32
        } -> tensor<128x56x56xf32>
        iree_tensor_ext.dispatch.tensor.store %11, %5, offsets = [0, 1, 1], sizes = [128, 56, 56], strides = [1, 1, 1] : tensor<128x56x56xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<128x58x58xf32>>
        return
      }
    }
  }
}
