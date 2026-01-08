#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_159 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_159_mmt4d_7x8x256x7x32x1_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c28 = arith.constant 28 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c28, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_159_mmt4d_7x8x256x7x32x1_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xf32>
          %2 = llvm.mlir.constant(224 : index) : i64
          %3 = llvm.mlir.constant(8192 : index) : i64
          %4 = llvm.mlir.constant(32 : index) : i64
          %5 = llvm.mlir.constant(64 : index) : i64
          %6 = llvm.mlir.constant(true) : i1
          %7 = llvm.mlir.constant(1792 : index) : i64
          %8 = llvm.mlir.constant(7 : index) : i64
          %9 = llvm.mlir.constant(8 : i64) : i64
          %10 = llvm.mlir.constant(32 : i64) : i64
          %11 = llvm.mlir.poison : !llvm.array<7 x vector<32xf32>>
          %12 = llvm.mlir.constant(-1 : index) : i64
          %13 = llvm.mlir.constant(6 : index) : i64
          %14 = llvm.mlir.constant(5 : index) : i64
          %15 = llvm.mlir.constant(3 : index) : i64
          %16 = llvm.mlir.constant(4 : index) : i64
          %17 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x32xf32>) : !llvm.array<7 x vector<32xf32>>
          %18 = llvm.mlir.constant(2 : index) : i64
          %19 = llvm.mlir.constant(1 : index) : i64
          %20 = llvm.mlir.constant(256 : index) : i64
          %21 = llvm.mlir.constant(0 : index) : i64
          %22 = llvm.mlir.constant(627200 : index) : i64
          %23 = llvm.mlir.constant(577024 : index) : i64
          %24 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %25 = llvm.extractvalue %24[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %26 = llvm.load %25 : !llvm.ptr -> i32
          %27 = llvm.zext %26 : i32 to i64
          %28 = llvm.extractvalue %24[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %29 = llvm.load %28 : !llvm.ptr -> !llvm.ptr
          %30 = llvm.mul %22, %9 : i64
          %31 = llvm.udiv %30, %10 : i64
          %32 = llvm.getelementptr %29[%31] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
          %33 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %34 = llvm.extractvalue %33[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %35 = llvm.getelementptr %34[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %36 = llvm.load %35 : !llvm.ptr -> !llvm.ptr
          %37 = llvm.mul %27, %9 : i64
          %38 = llvm.udiv %37, %10 : i64
          %39 = llvm.getelementptr %36[%38] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%39, %5 : !llvm.ptr, i64)] : i1
          %40 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %41 = llvm.extractvalue %40[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %42 = llvm.getelementptr %41[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %43 = llvm.load %42 : !llvm.ptr -> !llvm.ptr
          %44 = llvm.mul %23, %9 : i64
          %45 = llvm.udiv %44, %10 : i64
          %46 = llvm.getelementptr %43[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%46, %5 : !llvm.ptr, i64)] : i1
          %47 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %48 = llvm.extractvalue %47[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %49 = llvm.zext %48 : i32 to i64
          %50 = llvm.sdiv %49, %16 : i64
          %51 = llvm.mul %50, %16 : i64
          %52 = llvm.icmp "ne" %49, %51 : i64
          %53 = llvm.icmp "slt" %49, %21 : i64
          %54 = llvm.and %52, %53 : i1
          %55 = llvm.add %50, %12 : i64
          %56 = llvm.select %54, %55, %50 : i1, i64
          %57 = llvm.srem %49, %16 : i64
          %58 = llvm.icmp "slt" %57, %21 : i64
          %59 = llvm.add %57, %16 overflow<nsw> : i64
          %60 = llvm.select %58, %59, %57 : i1, i64
          %61 = llvm.mul %60, %18 overflow<nsw> : i64
          llvm.br ^bb1(%21 : i64)
        ^bb1(%62: i64):  // 2 preds: ^bb0, ^bb5
          %63 = llvm.icmp "slt" %62, %18 : i64
          llvm.cond_br %63, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %64 = llvm.add %62, %61 : i64
          llvm.br ^bb3(%21, %17 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb3(%65: i64, %66: !llvm.array<7 x vector<32xf32>>):  // 2 preds: ^bb2, ^bb4
          %67 = llvm.icmp "slt" %65, %20 : i64
          llvm.cond_br %67, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %68 = llvm.mul %64, %3 : i64
          %69 = llvm.mul %65, %4 : i64
          %70 = llvm.add %68, %69 : i64
          %71 = llvm.add %70, %21 : i64
          %72 = llvm.add %71, %21 : i64
          %73 = llvm.getelementptr %39[%72] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %74 = llvm.load %73 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %75 = llvm.mul %56, %7 overflow<nsw, nuw> : i64
          %76 = llvm.mul %65, %8 overflow<nsw, nuw> : i64
          %77 = llvm.add %75, %76 overflow<nsw, nuw> : i64
          %78 = llvm.add %77, %21 overflow<nsw, nuw> : i64
          %79 = llvm.add %78, %21 overflow<nsw, nuw> : i64
          %80 = llvm.getelementptr inbounds|nuw %32[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %81 = llvm.load %80 : !llvm.ptr -> f32
          %82 = llvm.insertelement %81, %1[%0 : i32] : vector<32xf32>
          %83 = llvm.shufflevector %82, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %84 = llvm.extractvalue %66[0] : !llvm.array<7 x vector<32xf32>> 
          %85 = llvm.intr.fmuladd(%83, %74, %84) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %86 = llvm.add %77, %19 overflow<nsw, nuw> : i64
          %87 = llvm.add %86, %21 overflow<nsw, nuw> : i64
          %88 = llvm.getelementptr inbounds|nuw %32[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %89 = llvm.load %88 : !llvm.ptr -> f32
          %90 = llvm.insertelement %89, %1[%0 : i32] : vector<32xf32>
          %91 = llvm.shufflevector %90, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %92 = llvm.extractvalue %66[1] : !llvm.array<7 x vector<32xf32>> 
          %93 = llvm.intr.fmuladd(%91, %74, %92) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %94 = llvm.add %77, %18 overflow<nsw, nuw> : i64
          %95 = llvm.add %94, %21 overflow<nsw, nuw> : i64
          %96 = llvm.getelementptr inbounds|nuw %32[%95] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %97 = llvm.load %96 : !llvm.ptr -> f32
          %98 = llvm.insertelement %97, %1[%0 : i32] : vector<32xf32>
          %99 = llvm.shufflevector %98, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %100 = llvm.extractvalue %66[2] : !llvm.array<7 x vector<32xf32>> 
          %101 = llvm.intr.fmuladd(%99, %74, %100) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %102 = llvm.add %77, %15 overflow<nsw, nuw> : i64
          %103 = llvm.add %102, %21 overflow<nsw, nuw> : i64
          %104 = llvm.getelementptr inbounds|nuw %32[%103] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %105 = llvm.load %104 : !llvm.ptr -> f32
          %106 = llvm.insertelement %105, %1[%0 : i32] : vector<32xf32>
          %107 = llvm.shufflevector %106, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %108 = llvm.extractvalue %66[3] : !llvm.array<7 x vector<32xf32>> 
          %109 = llvm.intr.fmuladd(%107, %74, %108) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %110 = llvm.add %77, %16 overflow<nsw, nuw> : i64
          %111 = llvm.add %110, %21 overflow<nsw, nuw> : i64
          %112 = llvm.getelementptr inbounds|nuw %32[%111] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %113 = llvm.load %112 : !llvm.ptr -> f32
          %114 = llvm.insertelement %113, %1[%0 : i32] : vector<32xf32>
          %115 = llvm.shufflevector %114, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %116 = llvm.extractvalue %66[4] : !llvm.array<7 x vector<32xf32>> 
          %117 = llvm.intr.fmuladd(%115, %74, %116) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %118 = llvm.add %77, %14 overflow<nsw, nuw> : i64
          %119 = llvm.add %118, %21 overflow<nsw, nuw> : i64
          %120 = llvm.getelementptr inbounds|nuw %32[%119] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %121 = llvm.load %120 : !llvm.ptr -> f32
          %122 = llvm.insertelement %121, %1[%0 : i32] : vector<32xf32>
          %123 = llvm.shufflevector %122, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %124 = llvm.extractvalue %66[5] : !llvm.array<7 x vector<32xf32>> 
          %125 = llvm.intr.fmuladd(%123, %74, %124) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %126 = llvm.add %77, %13 overflow<nsw, nuw> : i64
          %127 = llvm.add %126, %21 overflow<nsw, nuw> : i64
          %128 = llvm.getelementptr inbounds|nuw %32[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %129 = llvm.load %128 : !llvm.ptr -> f32
          %130 = llvm.insertelement %129, %1[%0 : i32] : vector<32xf32>
          %131 = llvm.shufflevector %130, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %132 = llvm.extractvalue %66[6] : !llvm.array<7 x vector<32xf32>> 
          %133 = llvm.intr.fmuladd(%131, %74, %132) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %134 = llvm.insertvalue %85, %11[0] : !llvm.array<7 x vector<32xf32>> 
          %135 = llvm.insertvalue %93, %134[1] : !llvm.array<7 x vector<32xf32>> 
          %136 = llvm.insertvalue %101, %135[2] : !llvm.array<7 x vector<32xf32>> 
          %137 = llvm.insertvalue %109, %136[3] : !llvm.array<7 x vector<32xf32>> 
          %138 = llvm.insertvalue %117, %137[4] : !llvm.array<7 x vector<32xf32>> 
          %139 = llvm.insertvalue %125, %138[5] : !llvm.array<7 x vector<32xf32>> 
          %140 = llvm.insertvalue %133, %139[6] : !llvm.array<7 x vector<32xf32>> 
          %141 = llvm.add %65, %19 : i64
          llvm.br ^bb3(%141, %140 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb5:  // pred: ^bb3
          %142 = llvm.extractvalue %66[0] : !llvm.array<7 x vector<32xf32>> 
          %143 = llvm.mul %56, %7 : i64
          %144 = llvm.mul %64, %2 : i64
          %145 = llvm.add %143, %144 : i64
          %146 = llvm.mul %21, %4 : i64
          %147 = llvm.add %145, %146 : i64
          %148 = llvm.add %147, %21 : i64
          %149 = llvm.getelementptr %46[%148] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %142, %149 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %150 = llvm.extractvalue %66[1] : !llvm.array<7 x vector<32xf32>> 
          %151 = llvm.mul %19, %4 : i64
          %152 = llvm.add %145, %151 : i64
          %153 = llvm.add %152, %21 : i64
          %154 = llvm.getelementptr %46[%153] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %150, %154 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %155 = llvm.extractvalue %66[2] : !llvm.array<7 x vector<32xf32>> 
          %156 = llvm.mul %18, %4 : i64
          %157 = llvm.add %145, %156 : i64
          %158 = llvm.add %157, %21 : i64
          %159 = llvm.getelementptr %46[%158] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %155, %159 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %160 = llvm.extractvalue %66[3] : !llvm.array<7 x vector<32xf32>> 
          %161 = llvm.mul %15, %4 : i64
          %162 = llvm.add %145, %161 : i64
          %163 = llvm.add %162, %21 : i64
          %164 = llvm.getelementptr %46[%163] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %160, %164 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %165 = llvm.extractvalue %66[4] : !llvm.array<7 x vector<32xf32>> 
          %166 = llvm.mul %16, %4 : i64
          %167 = llvm.add %145, %166 : i64
          %168 = llvm.add %167, %21 : i64
          %169 = llvm.getelementptr %46[%168] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %165, %169 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %170 = llvm.extractvalue %66[5] : !llvm.array<7 x vector<32xf32>> 
          %171 = llvm.mul %14, %4 : i64
          %172 = llvm.add %145, %171 : i64
          %173 = llvm.add %172, %21 : i64
          %174 = llvm.getelementptr %46[%173] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %170, %174 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %175 = llvm.extractvalue %66[6] : !llvm.array<7 x vector<32xf32>> 
          %176 = llvm.mul %13, %4 : i64
          %177 = llvm.add %145, %176 : i64
          %178 = llvm.add %177, %21 : i64
          %179 = llvm.getelementptr %46[%178] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %175, %179 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %180 = llvm.add %62, %19 : i64
          llvm.br ^bb1(%180 : i64)
        ^bb6:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_159_embedded_elf_riscv_64_main_graph$async_dispatch_159_mmt4d_7x8x256x7x32x1_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_159_embedded_elf_riscv_64_main_graph$async_dispatch_159_mmt4d_7x8x256x7x32x1_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_159_embedded_elf_riscv_64_main_graph$async_dispatch_159_mmt4d_7x8x256x7x32x1_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c2574080_i32 = arith.constant 2574080 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_159_embedded_elf_riscv_64_main_graph$async_dispatch_159_mmt4d_7x8x256x7x32x1_f32_buffer = util.global.load immutable @main_graph$async_dispatch_159_embedded_elf_riscv_64_main_graph$async_dispatch_159_mmt4d_7x8x256x7x32x1_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_159::@embedded_elf_riscv_64::@main_graph$async_dispatch_159_mmt4d_7x8x256x7x32x1_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_159) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_159::@embedded_elf_riscv_64::@main_graph$async_dispatch_159_mmt4d_7x8x256x7x32x1_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c2574080_i32]) bindings([
      (%main_graph$async_dispatch_159_embedded_elf_riscv_64_main_graph$async_dispatch_159_mmt4d_7x8x256x7x32x1_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_159_embedded_elf_riscv_64_main_graph$async_dispatch_159_mmt4d_7x8x256x7x32x1_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_159_embedded_elf_riscv_64_main_graph$async_dispatch_159_mmt4d_7x8x256x7x32x1_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
