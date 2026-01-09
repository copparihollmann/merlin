hal.executable public @main_graph$async_dispatch_210 {
  hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>) {
    hal.executable.export public @main_graph$async_dispatch_210_elementwise_broadcast_802816_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      hal.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @main_graph$async_dispatch_210_elementwise_broadcast_802816_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert, {enable_loop_peeling}>} {
        %c0 = arith.constant 0 : index
        %c64 = arith.constant 64 : index
        %c112 = arith.constant 112 : index
        %cst = arith.constant 5.000000e-01 : f32
        %cst_0 = arith.constant 2.000000e+00 : f32
        %cst_1 = arith.constant 0.000000e+00 : f32
        %cst_2 = arith.constant 5.500000e+01 : f32
        %cst_3 = arith.constant 1.000000e+00 : f32
        %c2007040 = arith.constant 2007040 : index
        %c2809856 = arith.constant 2809856 : index
        %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c2007040) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x64x56x56xf32>>
        %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c2809856) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<802816xf32>>
        %2 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0, 0], sizes = [1, 64, 56, 56], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x64x56x56xf32>> -> tensor<1x64x56x56xf32>
        %3 = tensor.empty() : tensor<802816xf32>
        %4 = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]} outs(%3 : tensor<802816xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [4096], vector_common_parallel = [8]>} {
        ^bb0(%out: f32):
          %5 = linalg.index 0 : index
          %6 = arith.remsi %5, %c112 : index
          %7 = arith.divsi %5, %c112 : index
          %8 = arith.remsi %7, %c112 : index
          %9 = arith.divsi %7, %c112 : index
          %10 = arith.remsi %9, %c64 : index
          %11 = arith.index_cast %8 : index to i64
          %12 = arith.sitofp %11 : i64 to f32
          %13 = arith.addf %12, %cst : f32
          %14 = arith.divf %13, %cst_0 : f32
          %15 = arith.subf %14, %cst : f32
          %16 = arith.maximumf %15, %cst_1 : f32
          %17 = arith.minimumf %16, %cst_2 : f32
          %18 = arith.index_cast %6 : index to i64
          %19 = arith.sitofp %18 : i64 to f32
          %20 = arith.addf %19, %cst : f32
          %21 = arith.divf %20, %cst_0 : f32
          %22 = arith.subf %21, %cst : f32
          %23 = arith.maximumf %22, %cst_1 : f32
          %24 = arith.minimumf %23, %cst_2 : f32
          %25 = math.floor %17 : f32
          %26 = arith.addf %17, %cst_3 : f32
          %27 = math.floor %26 : f32
          %28 = arith.fptosi %25 : f32 to i64
          %29 = arith.index_cast %28 : i64 to index
          %30 = arith.minimumf %26, %cst_2 : f32
          %31 = arith.fptosi %30 : f32 to i64
          %32 = arith.index_cast %31 : i64 to index
          %33 = math.floor %24 : f32
          %34 = arith.addf %24, %cst_3 : f32
          %35 = math.floor %34 : f32
          %36 = arith.fptosi %33 : f32 to i64
          %37 = arith.index_cast %36 : i64 to index
          %38 = arith.minimumf %34, %cst_2 : f32
          %39 = arith.fptosi %38 : f32 to i64
          %40 = arith.index_cast %39 : i64 to index
          %extracted = tensor.extract %2[%c0, %10, %29, %37] : tensor<1x64x56x56xf32>
          %extracted_4 = tensor.extract %2[%c0, %10, %29, %40] : tensor<1x64x56x56xf32>
          %extracted_5 = tensor.extract %2[%c0, %10, %32, %37] : tensor<1x64x56x56xf32>
          %extracted_6 = tensor.extract %2[%c0, %10, %32, %40] : tensor<1x64x56x56xf32>
          %41 = arith.subf %27, %17 : f32
          %42 = arith.subf %17, %25 : f32
          %43 = arith.subf %35, %24 : f32
          %44 = arith.subf %24, %33 : f32
          %45 = arith.mulf %43, %extracted : f32
          %46 = arith.mulf %44, %extracted_4 : f32
          %47 = arith.addf %45, %46 : f32
          %48 = arith.mulf %41, %47 : f32
          %49 = arith.mulf %43, %extracted_5 : f32
          %50 = arith.mulf %44, %extracted_6 : f32
          %51 = arith.addf %49, %50 : f32
          %52 = arith.mulf %42, %51 : f32
          %53 = arith.addf %48, %52 : f32
          linalg.yield %53 : f32
        } -> tensor<802816xf32>
        iree_tensor_ext.dispatch.tensor.store %4, %1, offsets = [0], sizes = [802816], strides = [1] : tensor<802816xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<802816xf32>>
        return
      }
    }
  }
}
