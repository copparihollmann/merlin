#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_73 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_73_mmt4d_10x25x256x7x32x1_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c25 = arith.constant 25 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c25, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_73_mmt4d_10x25x256x7x32x1_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xf32>
          %2 = llvm.mlir.constant(5600 : index) : i64
          %3 = llvm.mlir.constant(224 : index) : i64
          %4 = llvm.mlir.constant(8192 : index) : i64
          %5 = llvm.mlir.constant(32 : index) : i64
          %6 = llvm.mlir.constant(64 : index) : i64
          %7 = llvm.mlir.constant(true) : i1
          %8 = llvm.mlir.constant(1792 : index) : i64
          %9 = llvm.mlir.constant(7 : index) : i64
          %10 = llvm.mlir.constant(8 : i64) : i64
          %11 = llvm.mlir.constant(32 : i64) : i64
          %12 = llvm.mlir.poison : !llvm.array<7 x vector<32xf32>>
          %13 = llvm.mlir.constant(6 : index) : i64
          %14 = llvm.mlir.constant(5 : index) : i64
          %15 = llvm.mlir.constant(4 : index) : i64
          %16 = llvm.mlir.constant(3 : index) : i64
          %17 = llvm.mlir.constant(2 : index) : i64
          %18 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x32xf32>) : !llvm.array<7 x vector<32xf32>>
          %19 = llvm.mlir.constant(10 : index) : i64
          %20 = llvm.mlir.constant(1 : index) : i64
          %21 = llvm.mlir.constant(256 : index) : i64
          %22 = llvm.mlir.constant(0 : index) : i64
          %23 = llvm.mlir.constant(802816 : index) : i64
          %24 = llvm.mlir.constant(1622016 : index) : i64
          %25 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %26 = llvm.extractvalue %25[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %27 = llvm.load %26 : !llvm.ptr -> i32
          %28 = llvm.zext %27 : i32 to i64
          %29 = llvm.extractvalue %25[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %30 = llvm.load %29 : !llvm.ptr -> !llvm.ptr
          %31 = llvm.mul %28, %10 : i64
          %32 = llvm.udiv %31, %11 : i64
          %33 = llvm.getelementptr %30[%32] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%33, %6 : !llvm.ptr, i64)] : i1
          %34 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %35 = llvm.extractvalue %34[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %36 = llvm.getelementptr %35[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %37 = llvm.load %36 : !llvm.ptr -> !llvm.ptr
          %38 = llvm.mul %23, %10 : i64
          %39 = llvm.udiv %38, %11 : i64
          %40 = llvm.getelementptr %37[%39] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%40, %6 : !llvm.ptr, i64)] : i1
          %41 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %42 = llvm.extractvalue %41[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %43 = llvm.getelementptr %42[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %44 = llvm.load %43 : !llvm.ptr -> !llvm.ptr
          %45 = llvm.mul %24, %10 : i64
          %46 = llvm.udiv %45, %11 : i64
          %47 = llvm.getelementptr %44[%46] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%47, %6 : !llvm.ptr, i64)] : i1
          %48 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %49 = llvm.extractvalue %48[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %50 = llvm.zext %49 : i32 to i64
          llvm.br ^bb1(%22 : i64)
        ^bb1(%51: i64):  // 2 preds: ^bb0, ^bb4
          %52 = llvm.icmp "slt" %51, %19 : i64
          llvm.cond_br %52, ^bb2(%22, %18 : i64, !llvm.array<7 x vector<32xf32>>), ^bb5
        ^bb2(%53: i64, %54: !llvm.array<7 x vector<32xf32>>):  // 2 preds: ^bb1, ^bb3
          %55 = llvm.icmp "slt" %53, %21 : i64
          llvm.cond_br %55, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %56 = llvm.mul %50, %4 : i64
          %57 = llvm.mul %53, %5 : i64
          %58 = llvm.add %56, %57 : i64
          %59 = llvm.add %58, %22 : i64
          %60 = llvm.add %59, %22 : i64
          %61 = llvm.getelementptr %40[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %62 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %63 = llvm.mul %51, %8 overflow<nsw, nuw> : i64
          %64 = llvm.mul %53, %9 overflow<nsw, nuw> : i64
          %65 = llvm.add %63, %64 overflow<nsw, nuw> : i64
          %66 = llvm.add %65, %22 overflow<nsw, nuw> : i64
          %67 = llvm.add %66, %22 overflow<nsw, nuw> : i64
          %68 = llvm.getelementptr inbounds|nuw %33[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %69 = llvm.load %68 : !llvm.ptr -> f32
          %70 = llvm.insertelement %69, %1[%0 : i32] : vector<32xf32>
          %71 = llvm.shufflevector %70, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %72 = llvm.extractvalue %54[0] : !llvm.array<7 x vector<32xf32>> 
          %73 = llvm.intr.fmuladd(%71, %62, %72) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %74 = llvm.add %65, %20 overflow<nsw, nuw> : i64
          %75 = llvm.add %74, %22 overflow<nsw, nuw> : i64
          %76 = llvm.getelementptr inbounds|nuw %33[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %77 = llvm.load %76 : !llvm.ptr -> f32
          %78 = llvm.insertelement %77, %1[%0 : i32] : vector<32xf32>
          %79 = llvm.shufflevector %78, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %80 = llvm.extractvalue %54[1] : !llvm.array<7 x vector<32xf32>> 
          %81 = llvm.intr.fmuladd(%79, %62, %80) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %82 = llvm.add %65, %17 overflow<nsw, nuw> : i64
          %83 = llvm.add %82, %22 overflow<nsw, nuw> : i64
          %84 = llvm.getelementptr inbounds|nuw %33[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %85 = llvm.load %84 : !llvm.ptr -> f32
          %86 = llvm.insertelement %85, %1[%0 : i32] : vector<32xf32>
          %87 = llvm.shufflevector %86, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %88 = llvm.extractvalue %54[2] : !llvm.array<7 x vector<32xf32>> 
          %89 = llvm.intr.fmuladd(%87, %62, %88) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %90 = llvm.add %65, %16 overflow<nsw, nuw> : i64
          %91 = llvm.add %90, %22 overflow<nsw, nuw> : i64
          %92 = llvm.getelementptr inbounds|nuw %33[%91] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %93 = llvm.load %92 : !llvm.ptr -> f32
          %94 = llvm.insertelement %93, %1[%0 : i32] : vector<32xf32>
          %95 = llvm.shufflevector %94, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %96 = llvm.extractvalue %54[3] : !llvm.array<7 x vector<32xf32>> 
          %97 = llvm.intr.fmuladd(%95, %62, %96) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %98 = llvm.add %65, %15 overflow<nsw, nuw> : i64
          %99 = llvm.add %98, %22 overflow<nsw, nuw> : i64
          %100 = llvm.getelementptr inbounds|nuw %33[%99] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %101 = llvm.load %100 : !llvm.ptr -> f32
          %102 = llvm.insertelement %101, %1[%0 : i32] : vector<32xf32>
          %103 = llvm.shufflevector %102, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %104 = llvm.extractvalue %54[4] : !llvm.array<7 x vector<32xf32>> 
          %105 = llvm.intr.fmuladd(%103, %62, %104) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %106 = llvm.add %65, %14 overflow<nsw, nuw> : i64
          %107 = llvm.add %106, %22 overflow<nsw, nuw> : i64
          %108 = llvm.getelementptr inbounds|nuw %33[%107] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %109 = llvm.load %108 : !llvm.ptr -> f32
          %110 = llvm.insertelement %109, %1[%0 : i32] : vector<32xf32>
          %111 = llvm.shufflevector %110, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %112 = llvm.extractvalue %54[5] : !llvm.array<7 x vector<32xf32>> 
          %113 = llvm.intr.fmuladd(%111, %62, %112) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %114 = llvm.add %65, %13 overflow<nsw, nuw> : i64
          %115 = llvm.add %114, %22 overflow<nsw, nuw> : i64
          %116 = llvm.getelementptr inbounds|nuw %33[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %117 = llvm.load %116 : !llvm.ptr -> f32
          %118 = llvm.insertelement %117, %1[%0 : i32] : vector<32xf32>
          %119 = llvm.shufflevector %118, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %120 = llvm.extractvalue %54[6] : !llvm.array<7 x vector<32xf32>> 
          %121 = llvm.intr.fmuladd(%119, %62, %120) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %122 = llvm.insertvalue %73, %12[0] : !llvm.array<7 x vector<32xf32>> 
          %123 = llvm.insertvalue %81, %122[1] : !llvm.array<7 x vector<32xf32>> 
          %124 = llvm.insertvalue %89, %123[2] : !llvm.array<7 x vector<32xf32>> 
          %125 = llvm.insertvalue %97, %124[3] : !llvm.array<7 x vector<32xf32>> 
          %126 = llvm.insertvalue %105, %125[4] : !llvm.array<7 x vector<32xf32>> 
          %127 = llvm.insertvalue %113, %126[5] : !llvm.array<7 x vector<32xf32>> 
          %128 = llvm.insertvalue %121, %127[6] : !llvm.array<7 x vector<32xf32>> 
          %129 = llvm.add %53, %20 : i64
          llvm.br ^bb2(%129, %128 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb4:  // pred: ^bb2
          %130 = llvm.extractvalue %54[0] : !llvm.array<7 x vector<32xf32>> 
          %131 = llvm.mul %51, %2 : i64
          %132 = llvm.mul %50, %3 : i64
          %133 = llvm.add %131, %132 : i64
          %134 = llvm.mul %22, %5 : i64
          %135 = llvm.add %133, %134 : i64
          %136 = llvm.add %135, %22 : i64
          %137 = llvm.getelementptr %47[%136] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %130, %137 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %138 = llvm.extractvalue %54[1] : !llvm.array<7 x vector<32xf32>> 
          %139 = llvm.mul %20, %5 : i64
          %140 = llvm.add %133, %139 : i64
          %141 = llvm.add %140, %22 : i64
          %142 = llvm.getelementptr %47[%141] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %138, %142 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %143 = llvm.extractvalue %54[2] : !llvm.array<7 x vector<32xf32>> 
          %144 = llvm.mul %17, %5 : i64
          %145 = llvm.add %133, %144 : i64
          %146 = llvm.add %145, %22 : i64
          %147 = llvm.getelementptr %47[%146] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %143, %147 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %148 = llvm.extractvalue %54[3] : !llvm.array<7 x vector<32xf32>> 
          %149 = llvm.mul %16, %5 : i64
          %150 = llvm.add %133, %149 : i64
          %151 = llvm.add %150, %22 : i64
          %152 = llvm.getelementptr %47[%151] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %148, %152 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %153 = llvm.extractvalue %54[4] : !llvm.array<7 x vector<32xf32>> 
          %154 = llvm.mul %15, %5 : i64
          %155 = llvm.add %133, %154 : i64
          %156 = llvm.add %155, %22 : i64
          %157 = llvm.getelementptr %47[%156] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %153, %157 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %158 = llvm.extractvalue %54[5] : !llvm.array<7 x vector<32xf32>> 
          %159 = llvm.mul %14, %5 : i64
          %160 = llvm.add %133, %159 : i64
          %161 = llvm.add %160, %22 : i64
          %162 = llvm.getelementptr %47[%161] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %158, %162 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %163 = llvm.extractvalue %54[6] : !llvm.array<7 x vector<32xf32>> 
          %164 = llvm.mul %13, %5 : i64
          %165 = llvm.add %133, %164 : i64
          %166 = llvm.add %165, %22 : i64
          %167 = llvm.getelementptr %47[%166] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %163, %167 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %168 = llvm.add %51, %20 : i64
          llvm.br ^bb1(%168 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_73_embedded_elf_riscv_64_main_graph$async_dispatch_73_mmt4d_10x25x256x7x32x1_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_73_embedded_elf_riscv_64_main_graph$async_dispatch_73_mmt4d_10x25x256x7x32x1_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_73_embedded_elf_riscv_64_main_graph$async_dispatch_73_mmt4d_10x25x256x7x32x1_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c161280_i32 = arith.constant 161280 : i32
    %c0 = arith.constant 0 : index
    %c14611584 = arith.constant 14611584 : index
    %c14611712 = arith.constant 14611712 : index
    %c32172032 = arith.constant 32172032 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_73_embedded_elf_riscv_64_main_graph$async_dispatch_73_mmt4d_10x25x256x7x32x1_f32_buffer = util.global.load immutable @main_graph$async_dispatch_73_embedded_elf_riscv_64_main_graph$async_dispatch_73_mmt4d_10x25x256x7x32x1_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_73::@embedded_elf_riscv_64::@main_graph$async_dispatch_73_mmt4d_10x25x256x7x32x1_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_73) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_73::@embedded_elf_riscv_64::@main_graph$async_dispatch_73_mmt4d_10x25x256x7x32x1_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c161280_i32]) bindings([
      (%main_graph$async_dispatch_73_embedded_elf_riscv_64_main_graph$async_dispatch_73_mmt4d_10x25x256x7x32x1_f32_buffer : !hal.buffer)[%c0, %c14611584], 
      (%main_graph$async_dispatch_73_embedded_elf_riscv_64_main_graph$async_dispatch_73_mmt4d_10x25x256x7x32x1_f32_buffer : !hal.buffer)[%c14611712, %c32172032], 
      (%main_graph$async_dispatch_73_embedded_elf_riscv_64_main_graph$async_dispatch_73_mmt4d_10x25x256x7x32x1_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
    ]) flags("None")
    hal.command_buffer.execution_barrier<%cmd : !hal.command_buffer> source("Dispatch|CommandRetire") target("CommandIssue|Dispatch") flags("None")
    %4 = arith.addi %2, %c1 : index
    cf.br ^bb1(%4 : index)
  ^bb3:  // pred: ^bb1
    hal.command_buffer.finalize<%cmd : !hal.command_buffer>
    %fence = hal.fence.create device(%device : !hal.device) flags("None") : !hal.fence
    hal.device.queue.execute<%device : !hal.device> affinity(%queue_affinity) wait(%0) signal(%fence) commands(%cmd) flags("None")
    %status = hal.fence.await until([%fence]) timeout_millis(%c-1_i32) flags("None") : i32
    util.status.check_ok %status, "failed to wait on timepoint"
    util.return
  }
}
