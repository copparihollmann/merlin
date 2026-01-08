hal.executable public @main_graph$async_dispatch_163 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_163_conv_7x7x1024x3x3_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_163_conv_7x7x1024x3x3_f32() {
        %cst = arith.constant 5.000000e-01 : f32
        %cst_0 = arith.constant 1.000000e+00 : f32
        %cst_1 = arith.constant 1.41421354 : f32
        %cst_2 = arith.constant 0.000000e+00 : f32
        %c1003520 = arith.constant 1003520 : index
        %c1335296 = arith.constant 1335296 : index
        %0 = hal.interface.constant.load layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = arith.index_castui %0 : i32 to index
        %2 = util.assume.int %1[<umin = 13642624, umax = 13642624, udiv = 13642624>, <umin = 13679488, umax = 13679488, udiv = 13679488>] : index
        %3 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c1003520) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x9x9xf32>>
        %4 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%2) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x3x3xf32>>
        %5 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c1335296) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7x7x1024xf32>>
        %6 = iree_tensor_ext.dispatch.tensor.load %3, offsets = [0, 0, 0], sizes = [1024, 9, 9], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x9x9xf32>> -> tensor<1024x9x9xf32>
        %7 = iree_tensor_ext.dispatch.tensor.load %4, offsets = [0, 0, 0], sizes = [1024, 3, 3], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x3x3xf32>> -> tensor<1024x3x3xf32>
        %8 = tensor.empty() : tensor<7x7x1024xf32>
        %9 = tensor.empty() : tensor<1024x7x7xf32>
        %10 = linalg.fill ins(%cst_2 : f32) outs(%9 : tensor<1024x7x7xf32>) -> tensor<1024x7x7xf32>
        %11 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d2, d0 + d3, d1 + d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d0, d1)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%6, %7 : tensor<1024x9x9xf32>, tensor<1024x3x3xf32>) outs(%10 : tensor<1024x7x7xf32>) {
        ^bb0(%in: f32, %in_3: f32, %out: f32):
          %13 = arith.mulf %in, %in_3 : f32
          %14 = arith.addf %out, %13 : f32
          linalg.yield %14 : f32
        } -> tensor<1024x7x7xf32>
        %12 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%11 : tensor<1024x7x7xf32>) outs(%8 : tensor<7x7x1024xf32>) {
        ^bb0(%in: f32, %out: f32):
          %13 = arith.divf %in, %cst_1 : f32
          %14 = math.erf %13 : f32
          %15 = arith.addf %14, %cst_0 : f32
          %16 = arith.mulf %15, %cst : f32
          %17 = arith.mulf %in, %16 : f32
          linalg.yield %17 : f32
        } -> tensor<7x7x1024xf32>
        iree_tensor_ext.dispatch.tensor.store %12, %5, offsets = [0, 0, 0], sizes = [7, 7, 1024], strides = [1, 1, 1] : tensor<7x7x1024xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7x7x1024xf32>>
        return
      }
    }
  }
}
