hal.executable public @main_graph$async_dispatch_211 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_211_elementwise_broadcast_64x224x224_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_211_elementwise_broadcast_64x224x224_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
        %c0 = arith.constant 0 : index
        %cst = arith.constant 5.000000e-01 : f32
        %cst_0 = arith.constant 2.000000e+00 : f32
        %cst_1 = arith.constant 0.000000e+00 : f32
        %cst_2 = arith.constant 1.110000e+02 : f32
        %cst_3 = arith.constant 1.000000e+00 : f32
        %c2809856 = arith.constant 2809856 : index
        %c6021120 = arith.constant 6021120 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c2809856) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x64x112x112xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c6021120) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<readwrite:tensor<64x226x226xf32>>
        %2 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0, 0], sizes = [1, 64, 112, 112], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x64x112x112xf32>> -> tensor<1x64x112x112xf32>
        %3 = tensor.empty() : tensor<64x224x224xf32>
        %4 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%3 : tensor<64x224x224xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [64, 56, 56], vector_common_parallel = [1, 1, 8]>} {
        ^bb0(%out: f32):
          %5 = linalg.index 0 : index
          %6 = linalg.index 1 : index
          %7 = linalg.index 2 : index
          %8 = arith.index_cast %6 : index to i64
          %9 = arith.sitofp %8 : i64 to f32
          %10 = arith.addf %9, %cst : f32
          %11 = arith.divf %10, %cst_0 : f32
          %12 = arith.subf %11, %cst : f32
          %13 = arith.maximumf %12, %cst_1 : f32
          %14 = arith.minimumf %13, %cst_2 : f32
          %15 = arith.index_cast %7 : index to i64
          %16 = arith.sitofp %15 : i64 to f32
          %17 = arith.addf %16, %cst : f32
          %18 = arith.divf %17, %cst_0 : f32
          %19 = arith.subf %18, %cst : f32
          %20 = arith.maximumf %19, %cst_1 : f32
          %21 = arith.minimumf %20, %cst_2 : f32
          %22 = math.floor %14 : f32
          %23 = arith.addf %14, %cst_3 : f32
          %24 = math.floor %23 : f32
          %25 = arith.fptosi %22 : f32 to i64
          %26 = arith.index_cast %25 : i64 to index
          %27 = arith.minimumf %23, %cst_2 : f32
          %28 = arith.fptosi %27 : f32 to i64
          %29 = arith.index_cast %28 : i64 to index
          %30 = math.floor %21 : f32
          %31 = arith.addf %21, %cst_3 : f32
          %32 = math.floor %31 : f32
          %33 = arith.fptosi %30 : f32 to i64
          %34 = arith.index_cast %33 : i64 to index
          %35 = arith.minimumf %31, %cst_2 : f32
          %36 = arith.fptosi %35 : f32 to i64
          %37 = arith.index_cast %36 : i64 to index
          %extracted = tensor.extract %2[%c0, %5, %26, %34] : tensor<1x64x112x112xf32>
          %extracted_4 = tensor.extract %2[%c0, %5, %26, %37] : tensor<1x64x112x112xf32>
          %extracted_5 = tensor.extract %2[%c0, %5, %29, %34] : tensor<1x64x112x112xf32>
          %extracted_6 = tensor.extract %2[%c0, %5, %29, %37] : tensor<1x64x112x112xf32>
          %38 = arith.subf %24, %14 : f32
          %39 = arith.subf %14, %22 : f32
          %40 = arith.subf %32, %21 : f32
          %41 = arith.subf %21, %30 : f32
          %42 = arith.mulf %40, %extracted : f32
          %43 = arith.mulf %41, %extracted_4 : f32
          %44 = arith.addf %42, %43 : f32
          %45 = arith.mulf %38, %44 : f32
          %46 = arith.mulf %40, %extracted_5 : f32
          %47 = arith.mulf %41, %extracted_6 : f32
          %48 = arith.addf %46, %47 : f32
          %49 = arith.mulf %39, %48 : f32
          %50 = arith.addf %45, %49 : f32
          linalg.yield %50 : f32
        } -> tensor<64x224x224xf32>
        iree_tensor_ext.dispatch.tensor.store %4, %1, offsets = [0, 1, 1], sizes = [64, 224, 224], strides = [1, 1, 1] : tensor<64x224x224xf32> -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<64x226x226xf32>>
        return
      }
    }
  }
}
