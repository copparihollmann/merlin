hal.executable public @main_graph$async_dispatch_161 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_161_reduction_49x256_f32 ordinal(0) layout(#hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_161_reduction_49x256_f32() {
        %cst = arith.constant 9.99999997E-7 : f32
        %cst_0 = arith.constant 2.560000e+02 : f32
        %cst_1 = arith.constant 0.000000e+00 : f32
        %c627200 = arith.constant 627200 : index
        %c677376 = arith.constant 677376 : index
        %0 = hal.interface.constant.load layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(0) : i32
        %1 = hal.interface.constant.load layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) ordinal(1) : i32
        %2 = arith.index_castui %0 : i32 to index
        %3 = arith.index_castui %1 : i32 to index
        %4:2 = util.assume.int 
            %2[<umin = 526848, umax = 526848, udiv = 526848>, <umin = 577024, umax = 577024, udiv = 577024>, <umin = 526848, umax = 526848, udiv = 526848>], 
            %3[<umin = 577024, umax = 577024, udiv = 577024>, <umin = 526848, umax = 526848, udiv = 526848>, <umin = 577024, umax = 577024, udiv = 577024>]
          : index, index
        %5 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%4#0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x256xf32>>
        %6 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c627200) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x256xf32>>
        %7 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%4#1) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<49x256xf32>>
        %8 = hal.interface.binding.subspan layout(<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c677376) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<49x256xf32>>
        %9 = iree_tensor_ext.dispatch.tensor.load %5, offsets = [0, 0], sizes = [49, 256], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x256xf32>> -> tensor<49x256xf32>
        %10 = iree_tensor_ext.dispatch.tensor.load %6, offsets = [0, 0], sizes = [49, 256], strides = [1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<49x256xf32>> -> tensor<49x256xf32>
        %11 = tensor.empty() : tensor<49xf32>
        %12 = tensor.empty() : tensor<49x256xf32>
        %13 = linalg.fill ins(%cst_1 : f32) outs(%11 : tensor<49xf32>) -> tensor<49xf32>
        %14 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%9, %10 : tensor<49x256xf32>, tensor<49x256xf32>) outs(%12 : tensor<49x256xf32>) {
        ^bb0(%in: f32, %in_2: f32, %out: f32):
          %19 = arith.addf %in_2, %cst_1 : f32
          %20 = arith.addf %in, %19 : f32
          linalg.yield %20 : f32
        } -> tensor<49x256xf32>
        %15 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%14 : tensor<49x256xf32>) outs(%13 : tensor<49xf32>) {
        ^bb0(%in: f32, %out: f32):
          %19 = arith.addf %in, %out : f32
          linalg.yield %19 : f32
        } -> tensor<49xf32>
        %16 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%14, %15 : tensor<49x256xf32>, tensor<49xf32>) outs(%12 : tensor<49x256xf32>) {
        ^bb0(%in: f32, %in_2: f32, %out: f32):
          %19 = arith.divf %in_2, %cst_0 : f32
          %20 = arith.subf %in, %19 : f32
          linalg.yield %20 : f32
        } -> tensor<49x256xf32>
        %17 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"]} ins(%16 : tensor<49x256xf32>) outs(%13 : tensor<49xf32>) {
        ^bb0(%in: f32, %out: f32):
          %19 = arith.mulf %in, %in : f32
          %20 = arith.addf %19, %out : f32
          linalg.yield %20 : f32
        } -> tensor<49xf32>
        %18 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%16, %17 : tensor<49x256xf32>, tensor<49xf32>) outs(%12 : tensor<49x256xf32>) {
        ^bb0(%in: f32, %in_2: f32, %out: f32):
          %19 = arith.divf %in_2, %cst_0 : f32
          %20 = arith.addf %19, %cst : f32
          %21 = math.rsqrt %20 : f32
          %22 = arith.mulf %in, %21 : f32
          %23 = arith.addf %22, %cst_1 : f32
          linalg.yield %23 : f32
        } -> tensor<49x256xf32>
        iree_tensor_ext.dispatch.tensor.store %14, %7, offsets = [0, 0], sizes = [49, 256], strides = [1, 1] : tensor<49x256xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<49x256xf32>>
        iree_tensor_ext.dispatch.tensor.store %18, %8, offsets = [0, 0], sizes = [49, 256], strides = [1, 1] : tensor<49x256xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<49x256xf32>>
        return
      }
    }
  }
}
