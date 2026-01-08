hal.executable public @main_graph$async_dispatch_187 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_187_reduction_49x256_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_187_reduction_49x256_f32() {
        %cst = arith.constant 0.000000e+00 : f32
        %cst_0 = arith.constant 2.560000e+02 : f32
        %cst_1 = arith.constant 9.99999997E-7 : f32
        %c577024 = arith.constant 577024 : index
        %c627200 = arith.constant 627200 : index
        %c526848 = arith.constant 526848 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c577024) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x256xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c627200) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x256xf32>>
        %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c526848) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<256x49xf32>>
        %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0], sizes = [49, 256], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x256xf32>> -> tensor<49x256xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0], sizes = [49, 256], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x256xf32>> -> tensor<49x256xf32>
        %5 = tensor.empty() : tensor<256x49xf32>
        %6 = tensor.empty() : tensor<49xf32>
        %7 = tensor.empty() : tensor<49x256xf32>
        %8 = linalg.fill ins(%cst : f32) outs(%6 : tensor<49xf32>) -> tensor<49xf32>
        %9 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%3, %4 : tensor<49x256xf32>, tensor<49x256xf32>) outs(%7 : tensor<49x256xf32>) {
        ^bb0(%in: f32, %in_2: f32, %out: f32):
          %14 = arith.addf %in_2, %cst : f32
          %15 = arith.addf %in, %14 : f32
          linalg.yield %15 : f32
        } -> tensor<49x256xf32>
        %10 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%9 : tensor<49x256xf32>) outs(%8 : tensor<49xf32>) {
        ^bb0(%in: f32, %out: f32):
          %14 = arith.addf %in, %out : f32
          linalg.yield %14 : f32
        } -> tensor<49xf32>
        %11 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%9, %10 : tensor<49x256xf32>, tensor<49xf32>) outs(%7 : tensor<49x256xf32>) {
        ^bb0(%in: f32, %in_2: f32, %out: f32):
          %14 = arith.divf %in_2, %cst_0 : f32
          %15 = arith.subf %in, %14 : f32
          linalg.yield %15 : f32
        } -> tensor<49x256xf32>
        %12 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%11 : tensor<49x256xf32>) outs(%8 : tensor<49xf32>) {
        ^bb0(%in: f32, %out: f32):
          %14 = arith.mulf %in, %in : f32
          %15 = arith.addf %14, %out : f32
          linalg.yield %15 : f32
        } -> tensor<49xf32>
        %13 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%11, %12 : tensor<49x256xf32>, tensor<49xf32>) outs(%5 : tensor<256x49xf32>) {
        ^bb0(%in: f32, %in_2: f32, %out: f32):
          %14 = arith.divf %in_2, %cst_0 : f32
          %15 = arith.addf %14, %cst_1 : f32
          %16 = math.rsqrt %15 : f32
          %17 = arith.mulf %in, %16 : f32
          %18 = arith.addf %17, %cst : f32
          linalg.yield %18 : f32
        } -> tensor<256x49xf32>
        iree_tensor_ext.dispatch.tensor.store %13, %2, offsets = [0, 0], sizes = [256, 49], strides = [1, 1] : tensor<256x49xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<256x49xf32>>
        return
      }
    }
  }
}
