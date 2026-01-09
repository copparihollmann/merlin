#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_24 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_24_mmt4d_5x98x128x7x32x1_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c49 = arith.constant 49 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c49, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_24_mmt4d_5x98x128x7x32x1_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xf32>
          %2 = llvm.mlir.constant(224 : index) : i64
          %3 = llvm.mlir.constant(21952 : index) : i64
          %4 = llvm.mlir.constant(4096 : index) : i64
          %5 = llvm.mlir.constant(32 : index) : i64
          %6 = llvm.mlir.constant(64 : index) : i64
          %7 = llvm.mlir.constant(true) : i1
          %8 = llvm.mlir.constant(896 : index) : i64
          %9 = llvm.mlir.constant(7 : index) : i64
          %10 = llvm.mlir.constant(8 : i64) : i64
          %11 = llvm.mlir.constant(32 : i64) : i64
          %12 = llvm.mlir.poison : !llvm.array<7 x vector<32xf32>>
          %13 = llvm.mlir.constant(6 : index) : i64
          %14 = llvm.mlir.constant(4 : index) : i64
          %15 = llvm.mlir.constant(3 : index) : i64
          %16 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x32xf32>) : !llvm.array<7 x vector<32xf32>>
          %17 = llvm.mlir.constant(2 : index) : i64
          %18 = llvm.mlir.constant(5 : index) : i64
          %19 = llvm.mlir.constant(1 : index) : i64
          %20 = llvm.mlir.constant(128 : index) : i64
          %21 = llvm.mlir.constant(1204224 : index) : i64
          %22 = llvm.mlir.constant(0 : index) : i64
          %23 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %24 = llvm.extractvalue %23[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %25 = llvm.load %24 : !llvm.ptr -> i32
          %26 = llvm.zext %25 : i32 to i64
          %27 = llvm.extractvalue %23[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %28 = llvm.load %27 : !llvm.ptr -> !llvm.ptr
          %29 = llvm.mul %26, %10 : i64
          %30 = llvm.udiv %29, %11 : i64
          %31 = llvm.getelementptr %28[%30] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%31, %6 : !llvm.ptr, i64)] : i1
          %32 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %33 = llvm.extractvalue %32[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %34 = llvm.getelementptr %33[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %35 = llvm.load %34 : !llvm.ptr -> !llvm.ptr
          %36 = llvm.mul %21, %10 : i64
          %37 = llvm.udiv %36, %11 : i64
          %38 = llvm.getelementptr %35[%37] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%38, %6 : !llvm.ptr, i64)] : i1
          %39 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %40 = llvm.extractvalue %39[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %41 = llvm.getelementptr %40[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %42 = llvm.load %41 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %7 ["align"(%42, %6 : !llvm.ptr, i64)] : i1
          %43 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %44 = llvm.extractvalue %43[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %45 = llvm.zext %44 : i32 to i64
          %46 = llvm.mul %45, %17 overflow<nsw> : i64
          llvm.br ^bb1(%22 : i64)
        ^bb1(%47: i64):  // 2 preds: ^bb0, ^bb7
          %48 = llvm.icmp "slt" %47, %18 : i64
          llvm.cond_br %48, ^bb2(%22 : i64), ^bb8
        ^bb2(%49: i64):  // 2 preds: ^bb1, ^bb6
          %50 = llvm.icmp "slt" %49, %17 : i64
          llvm.cond_br %50, ^bb3, ^bb7
        ^bb3:  // pred: ^bb2
          %51 = llvm.add %49, %46 : i64
          llvm.br ^bb4(%22, %16 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb4(%52: i64, %53: !llvm.array<7 x vector<32xf32>>):  // 2 preds: ^bb3, ^bb5
          %54 = llvm.icmp "slt" %52, %20 : i64
          llvm.cond_br %54, ^bb5, ^bb6
        ^bb5:  // pred: ^bb4
          %55 = llvm.mul %51, %4 : i64
          %56 = llvm.mul %52, %5 : i64
          %57 = llvm.add %55, %56 : i64
          %58 = llvm.add %57, %22 : i64
          %59 = llvm.add %58, %22 : i64
          %60 = llvm.getelementptr %38[%59] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %61 = llvm.load %60 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %62 = llvm.mul %47, %8 overflow<nsw, nuw> : i64
          %63 = llvm.mul %52, %9 overflow<nsw, nuw> : i64
          %64 = llvm.add %62, %63 overflow<nsw, nuw> : i64
          %65 = llvm.add %64, %22 overflow<nsw, nuw> : i64
          %66 = llvm.add %65, %22 overflow<nsw, nuw> : i64
          %67 = llvm.getelementptr inbounds|nuw %31[%66] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %68 = llvm.load %67 : !llvm.ptr -> f32
          %69 = llvm.insertelement %68, %1[%0 : i32] : vector<32xf32>
          %70 = llvm.shufflevector %69, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %71 = llvm.extractvalue %53[0] : !llvm.array<7 x vector<32xf32>> 
          %72 = llvm.intr.fmuladd(%70, %61, %71) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %73 = llvm.add %64, %19 overflow<nsw, nuw> : i64
          %74 = llvm.add %73, %22 overflow<nsw, nuw> : i64
          %75 = llvm.getelementptr inbounds|nuw %31[%74] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %76 = llvm.load %75 : !llvm.ptr -> f32
          %77 = llvm.insertelement %76, %1[%0 : i32] : vector<32xf32>
          %78 = llvm.shufflevector %77, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %79 = llvm.extractvalue %53[1] : !llvm.array<7 x vector<32xf32>> 
          %80 = llvm.intr.fmuladd(%78, %61, %79) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %81 = llvm.add %64, %17 overflow<nsw, nuw> : i64
          %82 = llvm.add %81, %22 overflow<nsw, nuw> : i64
          %83 = llvm.getelementptr inbounds|nuw %31[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %84 = llvm.load %83 : !llvm.ptr -> f32
          %85 = llvm.insertelement %84, %1[%0 : i32] : vector<32xf32>
          %86 = llvm.shufflevector %85, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %87 = llvm.extractvalue %53[2] : !llvm.array<7 x vector<32xf32>> 
          %88 = llvm.intr.fmuladd(%86, %61, %87) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %89 = llvm.add %64, %15 overflow<nsw, nuw> : i64
          %90 = llvm.add %89, %22 overflow<nsw, nuw> : i64
          %91 = llvm.getelementptr inbounds|nuw %31[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %92 = llvm.load %91 : !llvm.ptr -> f32
          %93 = llvm.insertelement %92, %1[%0 : i32] : vector<32xf32>
          %94 = llvm.shufflevector %93, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %95 = llvm.extractvalue %53[3] : !llvm.array<7 x vector<32xf32>> 
          %96 = llvm.intr.fmuladd(%94, %61, %95) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %97 = llvm.add %64, %14 overflow<nsw, nuw> : i64
          %98 = llvm.add %97, %22 overflow<nsw, nuw> : i64
          %99 = llvm.getelementptr inbounds|nuw %31[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %100 = llvm.load %99 : !llvm.ptr -> f32
          %101 = llvm.insertelement %100, %1[%0 : i32] : vector<32xf32>
          %102 = llvm.shufflevector %101, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %103 = llvm.extractvalue %53[4] : !llvm.array<7 x vector<32xf32>> 
          %104 = llvm.intr.fmuladd(%102, %61, %103) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %105 = llvm.add %64, %18 overflow<nsw, nuw> : i64
          %106 = llvm.add %105, %22 overflow<nsw, nuw> : i64
          %107 = llvm.getelementptr inbounds|nuw %31[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %108 = llvm.load %107 : !llvm.ptr -> f32
          %109 = llvm.insertelement %108, %1[%0 : i32] : vector<32xf32>
          %110 = llvm.shufflevector %109, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %111 = llvm.extractvalue %53[5] : !llvm.array<7 x vector<32xf32>> 
          %112 = llvm.intr.fmuladd(%110, %61, %111) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %113 = llvm.add %64, %13 overflow<nsw, nuw> : i64
          %114 = llvm.add %113, %22 overflow<nsw, nuw> : i64
          %115 = llvm.getelementptr inbounds|nuw %31[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %116 = llvm.load %115 : !llvm.ptr -> f32
          %117 = llvm.insertelement %116, %1[%0 : i32] : vector<32xf32>
          %118 = llvm.shufflevector %117, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %119 = llvm.extractvalue %53[6] : !llvm.array<7 x vector<32xf32>> 
          %120 = llvm.intr.fmuladd(%118, %61, %119) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %121 = llvm.insertvalue %72, %12[0] : !llvm.array<7 x vector<32xf32>> 
          %122 = llvm.insertvalue %80, %121[1] : !llvm.array<7 x vector<32xf32>> 
          %123 = llvm.insertvalue %88, %122[2] : !llvm.array<7 x vector<32xf32>> 
          %124 = llvm.insertvalue %96, %123[3] : !llvm.array<7 x vector<32xf32>> 
          %125 = llvm.insertvalue %104, %124[4] : !llvm.array<7 x vector<32xf32>> 
          %126 = llvm.insertvalue %112, %125[5] : !llvm.array<7 x vector<32xf32>> 
          %127 = llvm.insertvalue %120, %126[6] : !llvm.array<7 x vector<32xf32>> 
          %128 = llvm.add %52, %19 : i64
          llvm.br ^bb4(%128, %127 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb6:  // pred: ^bb4
          %129 = llvm.extractvalue %53[0] : !llvm.array<7 x vector<32xf32>> 
          %130 = llvm.mul %47, %3 : i64
          %131 = llvm.mul %51, %2 : i64
          %132 = llvm.add %130, %131 : i64
          %133 = llvm.mul %22, %5 : i64
          %134 = llvm.add %132, %133 : i64
          %135 = llvm.add %134, %22 : i64
          %136 = llvm.getelementptr %42[%135] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %129, %136 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %137 = llvm.extractvalue %53[1] : !llvm.array<7 x vector<32xf32>> 
          %138 = llvm.mul %19, %5 : i64
          %139 = llvm.add %132, %138 : i64
          %140 = llvm.add %139, %22 : i64
          %141 = llvm.getelementptr %42[%140] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %137, %141 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %142 = llvm.extractvalue %53[2] : !llvm.array<7 x vector<32xf32>> 
          %143 = llvm.mul %17, %5 : i64
          %144 = llvm.add %132, %143 : i64
          %145 = llvm.add %144, %22 : i64
          %146 = llvm.getelementptr %42[%145] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %142, %146 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %147 = llvm.extractvalue %53[3] : !llvm.array<7 x vector<32xf32>> 
          %148 = llvm.mul %15, %5 : i64
          %149 = llvm.add %132, %148 : i64
          %150 = llvm.add %149, %22 : i64
          %151 = llvm.getelementptr %42[%150] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %147, %151 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %152 = llvm.extractvalue %53[4] : !llvm.array<7 x vector<32xf32>> 
          %153 = llvm.mul %14, %5 : i64
          %154 = llvm.add %132, %153 : i64
          %155 = llvm.add %154, %22 : i64
          %156 = llvm.getelementptr %42[%155] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %152, %156 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %157 = llvm.extractvalue %53[5] : !llvm.array<7 x vector<32xf32>> 
          %158 = llvm.mul %18, %5 : i64
          %159 = llvm.add %132, %158 : i64
          %160 = llvm.add %159, %22 : i64
          %161 = llvm.getelementptr %42[%160] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %157, %161 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %162 = llvm.extractvalue %53[6] : !llvm.array<7 x vector<32xf32>> 
          %163 = llvm.mul %13, %5 : i64
          %164 = llvm.add %132, %163 : i64
          %165 = llvm.add %164, %22 : i64
          %166 = llvm.getelementptr %42[%165] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %162, %166 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %167 = llvm.add %49, %19 : i64
          llvm.br ^bb2(%167 : i64)
        ^bb7:  // pred: ^bb2
          %168 = llvm.add %47, %19 : i64
          llvm.br ^bb1(%168 : i64)
        ^bb8:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_24_embedded_elf_riscv_64_main_graph$async_dispatch_24_mmt4d_5x98x128x7x32x1_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_24_embedded_elf_riscv_64_main_graph$async_dispatch_24_mmt4d_5x98x128x7x32x1_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_24_embedded_elf_riscv_64_main_graph$async_dispatch_24_mmt4d_5x98x128x7x32x1_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c35840_i32 = arith.constant 35840 : i32
    %c0 = arith.constant 0 : index
    %c14611584 = arith.constant 14611584 : index
    %c14611712 = arith.constant 14611712 : index
    %c32172032 = arith.constant 32172032 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_24_embedded_elf_riscv_64_main_graph$async_dispatch_24_mmt4d_5x98x128x7x32x1_f32_buffer = util.global.load immutable @main_graph$async_dispatch_24_embedded_elf_riscv_64_main_graph$async_dispatch_24_mmt4d_5x98x128x7x32x1_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_24::@embedded_elf_riscv_64::@main_graph$async_dispatch_24_mmt4d_5x98x128x7x32x1_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_24) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_24::@embedded_elf_riscv_64::@main_graph$async_dispatch_24_mmt4d_5x98x128x7x32x1_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c35840_i32]) bindings([
      (%main_graph$async_dispatch_24_embedded_elf_riscv_64_main_graph$async_dispatch_24_mmt4d_5x98x128x7x32x1_f32_buffer : !hal.buffer)[%c0, %c14611584], 
      (%main_graph$async_dispatch_24_embedded_elf_riscv_64_main_graph$async_dispatch_24_mmt4d_5x98x128x7x32x1_f32_buffer : !hal.buffer)[%c14611712, %c32172032], 
      (%main_graph$async_dispatch_24_embedded_elf_riscv_64_main_graph$async_dispatch_24_mmt4d_5x98x128x7x32x1_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
