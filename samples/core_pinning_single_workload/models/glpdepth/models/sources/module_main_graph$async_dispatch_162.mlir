hal.executable public @main_graph$async_dispatch_162 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_162_matmul_like_1024x7x7x256_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_162_matmul_like_1024x7x7x256_f32() {
        %cst = arith.constant 0.000000e+00 : f32
        %c677376 = arith.constant 677376 : index
        %c1003520 = arith.constant 1003520 : index
        %0 = hal.interface.constant.load layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = arith.index_castui %0 : i32 to index
        %2 = util.assume.int %1[<umin = 6473472, umax = 6473472, udiv = 6473472>, <umin = 5424896, umax = 5424896, udiv = 5424896>] : index
        %3 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c677376) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<7x7x256xf32>>
        %4 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%2) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x1024xf32>>
        %5 = hal.interface.binding.subspan layout(<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c1003520) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<readwrite:tensor<1024x9x9xf32>>
        %6 = iree_tensor_ext.dispatch.tensor.load %3, offsets = [0, 0, 0], sizes = [7, 7, 256], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<7x7x256xf32>> -> tensor<7x7x256xf32>
        %7 = iree_tensor_ext.dispatch.tensor.load %4, offsets = [0, 0], sizes = [256, 1024], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x1024xf32>> -> tensor<256x1024xf32>
        %8 = tensor.empty() : tensor<1024x7x7xf32>
        %9 = linalg.fill ins(%cst : f32) outs(%8 : tensor<1024x7x7xf32>) -> tensor<1024x7x7xf32>
        %10 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%6, %7 : tensor<7x7x256xf32>, tensor<256x1024xf32>) outs(%9 : tensor<1024x7x7xf32>) {
        ^bb0(%in: f32, %in_0: f32, %out: f32):
          %12 = arith.mulf %in, %in_0 : f32
          %13 = arith.addf %out, %12 : f32
          linalg.yield %13 : f32
        } -> tensor<1024x7x7xf32>
        %11 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%10 : tensor<1024x7x7xf32>) outs(%8 : tensor<1024x7x7xf32>) {
        ^bb0(%in: f32, %out: f32):
          %12 = arith.addf %in, %cst : f32
          linalg.yield %12 : f32
        } -> tensor<1024x7x7xf32>
        iree_tensor_ext.dispatch.tensor.store %11, %5, offsets = [0, 1, 1], sizes = [1024, 7, 7], strides = [1, 1, 1] : tensor<1024x7x7xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<1024x9x9xf32>>
        return
      }
    }
  }
}
