#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_156 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_156_batch_mmt4d_8x5x2x49x7x32x1_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c40 = arith.constant 40 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c40, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_156_batch_mmt4d_8x5x2x49x7x32x1_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xf32>
          %2 = llvm.mlir.constant(2240 : index) : i64
          %3 = llvm.mlir.constant(448 : index) : i64
          %4 = llvm.mlir.constant(224 : index) : i64
          %5 = llvm.mlir.constant(3136 : index) : i64
          %6 = llvm.mlir.constant(1568 : index) : i64
          %7 = llvm.mlir.constant(32 : index) : i64
          %8 = llvm.mlir.constant(64 : index) : i64
          %9 = llvm.mlir.constant(true) : i1
          %10 = llvm.mlir.constant(1715 : index) : i64
          %11 = llvm.mlir.constant(343 : index) : i64
          %12 = llvm.mlir.constant(7 : index) : i64
          %13 = llvm.mlir.constant(8 : i64) : i64
          %14 = llvm.mlir.constant(32 : i64) : i64
          %15 = llvm.mlir.poison : !llvm.array<7 x vector<32xf32>>
          %16 = llvm.mlir.constant(-1 : index) : i64
          %17 = llvm.mlir.constant(6 : index) : i64
          %18 = llvm.mlir.constant(4 : index) : i64
          %19 = llvm.mlir.constant(3 : index) : i64
          %20 = llvm.mlir.constant(5 : index) : i64
          %21 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x32xf32>) : !llvm.array<7 x vector<32xf32>>
          %22 = llvm.mlir.constant(2 : index) : i64
          %23 = llvm.mlir.constant(1 : index) : i64
          %24 = llvm.mlir.constant(49 : index) : i64
          %25 = llvm.mlir.constant(0 : index) : i64
          %26 = llvm.mlir.constant(1080384 : index) : i64
          %27 = llvm.mlir.constant(1003520 : index) : i64
          %28 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %29 = llvm.extractvalue %28[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %30 = llvm.load %29 : !llvm.ptr -> i32
          %31 = llvm.zext %30 : i32 to i64
          %32 = llvm.extractvalue %28[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %33 = llvm.load %32 : !llvm.ptr -> !llvm.ptr
          %34 = llvm.mul %26, %13 : i64
          %35 = llvm.udiv %34, %14 : i64
          %36 = llvm.getelementptr %33[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %9 ["align"(%36, %8 : !llvm.ptr, i64)] : i1
          %37 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %38 = llvm.extractvalue %37[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %39 = llvm.load %38 : !llvm.ptr -> !llvm.ptr
          %40 = llvm.mul %31, %13 : i64
          %41 = llvm.udiv %40, %14 : i64
          %42 = llvm.getelementptr %39[%41] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %9 ["align"(%42, %8 : !llvm.ptr, i64)] : i1
          %43 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %44 = llvm.extractvalue %43[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %45 = llvm.getelementptr %44[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %46 = llvm.load %45 : !llvm.ptr -> !llvm.ptr
          %47 = llvm.mul %27, %13 : i64
          %48 = llvm.udiv %47, %14 : i64
          %49 = llvm.getelementptr %46[%48] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %9 ["align"(%49, %8 : !llvm.ptr, i64)] : i1
          %50 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %51 = llvm.extractvalue %50[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %52 = llvm.zext %51 : i32 to i64
          %53 = llvm.sdiv %52, %20 : i64
          %54 = llvm.mul %53, %20 : i64
          %55 = llvm.icmp "ne" %52, %54 : i64
          %56 = llvm.icmp "slt" %52, %25 : i64
          %57 = llvm.and %55, %56 : i1
          %58 = llvm.add %53, %16 : i64
          %59 = llvm.select %57, %58, %53 : i1, i64
          %60 = llvm.srem %52, %20 : i64
          %61 = llvm.icmp "slt" %60, %25 : i64
          %62 = llvm.add %60, %20 overflow<nsw> : i64
          %63 = llvm.select %61, %62, %60 : i1, i64
          llvm.br ^bb1(%25 : i64)
        ^bb1(%64: i64):  // 2 preds: ^bb0, ^bb4
          %65 = llvm.icmp "slt" %64, %22 : i64
          llvm.cond_br %65, ^bb2(%25, %21 : i64, !llvm.array<7 x vector<32xf32>>), ^bb5
        ^bb2(%66: i64, %67: !llvm.array<7 x vector<32xf32>>):  // 2 preds: ^bb1, ^bb3
          %68 = llvm.icmp "slt" %66, %24 : i64
          llvm.cond_br %68, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %69 = llvm.mul %59, %5 : i64
          %70 = llvm.mul %64, %6 : i64
          %71 = llvm.add %69, %70 : i64
          %72 = llvm.mul %66, %7 : i64
          %73 = llvm.add %71, %72 : i64
          %74 = llvm.add %73, %25 : i64
          %75 = llvm.add %74, %25 : i64
          %76 = llvm.getelementptr %42[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %77 = llvm.load %76 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %78 = llvm.mul %59, %10 overflow<nsw, nuw> : i64
          %79 = llvm.mul %63, %11 overflow<nsw, nuw> : i64
          %80 = llvm.add %78, %79 overflow<nsw, nuw> : i64
          %81 = llvm.mul %66, %12 overflow<nsw, nuw> : i64
          %82 = llvm.add %80, %81 overflow<nsw, nuw> : i64
          %83 = llvm.add %82, %25 overflow<nsw, nuw> : i64
          %84 = llvm.add %83, %25 overflow<nsw, nuw> : i64
          %85 = llvm.getelementptr inbounds|nuw %36[%84] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %86 = llvm.load %85 : !llvm.ptr -> f32
          %87 = llvm.insertelement %86, %1[%0 : i32] : vector<32xf32>
          %88 = llvm.shufflevector %87, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %89 = llvm.extractvalue %67[0] : !llvm.array<7 x vector<32xf32>> 
          %90 = llvm.intr.fmuladd(%88, %77, %89) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %91 = llvm.add %82, %23 overflow<nsw, nuw> : i64
          %92 = llvm.add %91, %25 overflow<nsw, nuw> : i64
          %93 = llvm.getelementptr inbounds|nuw %36[%92] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %94 = llvm.load %93 : !llvm.ptr -> f32
          %95 = llvm.insertelement %94, %1[%0 : i32] : vector<32xf32>
          %96 = llvm.shufflevector %95, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %97 = llvm.extractvalue %67[1] : !llvm.array<7 x vector<32xf32>> 
          %98 = llvm.intr.fmuladd(%96, %77, %97) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %99 = llvm.add %82, %22 overflow<nsw, nuw> : i64
          %100 = llvm.add %99, %25 overflow<nsw, nuw> : i64
          %101 = llvm.getelementptr inbounds|nuw %36[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %102 = llvm.load %101 : !llvm.ptr -> f32
          %103 = llvm.insertelement %102, %1[%0 : i32] : vector<32xf32>
          %104 = llvm.shufflevector %103, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %105 = llvm.extractvalue %67[2] : !llvm.array<7 x vector<32xf32>> 
          %106 = llvm.intr.fmuladd(%104, %77, %105) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %107 = llvm.add %82, %19 overflow<nsw, nuw> : i64
          %108 = llvm.add %107, %25 overflow<nsw, nuw> : i64
          %109 = llvm.getelementptr inbounds|nuw %36[%108] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %110 = llvm.load %109 : !llvm.ptr -> f32
          %111 = llvm.insertelement %110, %1[%0 : i32] : vector<32xf32>
          %112 = llvm.shufflevector %111, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %113 = llvm.extractvalue %67[3] : !llvm.array<7 x vector<32xf32>> 
          %114 = llvm.intr.fmuladd(%112, %77, %113) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %115 = llvm.add %82, %18 overflow<nsw, nuw> : i64
          %116 = llvm.add %115, %25 overflow<nsw, nuw> : i64
          %117 = llvm.getelementptr inbounds|nuw %36[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %118 = llvm.load %117 : !llvm.ptr -> f32
          %119 = llvm.insertelement %118, %1[%0 : i32] : vector<32xf32>
          %120 = llvm.shufflevector %119, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %121 = llvm.extractvalue %67[4] : !llvm.array<7 x vector<32xf32>> 
          %122 = llvm.intr.fmuladd(%120, %77, %121) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %123 = llvm.add %82, %20 overflow<nsw, nuw> : i64
          %124 = llvm.add %123, %25 overflow<nsw, nuw> : i64
          %125 = llvm.getelementptr inbounds|nuw %36[%124] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %126 = llvm.load %125 : !llvm.ptr -> f32
          %127 = llvm.insertelement %126, %1[%0 : i32] : vector<32xf32>
          %128 = llvm.shufflevector %127, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %129 = llvm.extractvalue %67[5] : !llvm.array<7 x vector<32xf32>> 
          %130 = llvm.intr.fmuladd(%128, %77, %129) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %131 = llvm.add %82, %17 overflow<nsw, nuw> : i64
          %132 = llvm.add %131, %25 overflow<nsw, nuw> : i64
          %133 = llvm.getelementptr inbounds|nuw %36[%132] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %134 = llvm.load %133 : !llvm.ptr -> f32
          %135 = llvm.insertelement %134, %1[%0 : i32] : vector<32xf32>
          %136 = llvm.shufflevector %135, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %137 = llvm.extractvalue %67[6] : !llvm.array<7 x vector<32xf32>> 
          %138 = llvm.intr.fmuladd(%136, %77, %137) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %139 = llvm.insertvalue %90, %15[0] : !llvm.array<7 x vector<32xf32>> 
          %140 = llvm.insertvalue %98, %139[1] : !llvm.array<7 x vector<32xf32>> 
          %141 = llvm.insertvalue %106, %140[2] : !llvm.array<7 x vector<32xf32>> 
          %142 = llvm.insertvalue %114, %141[3] : !llvm.array<7 x vector<32xf32>> 
          %143 = llvm.insertvalue %122, %142[4] : !llvm.array<7 x vector<32xf32>> 
          %144 = llvm.insertvalue %130, %143[5] : !llvm.array<7 x vector<32xf32>> 
          %145 = llvm.insertvalue %138, %144[6] : !llvm.array<7 x vector<32xf32>> 
          %146 = llvm.add %66, %23 : i64
          llvm.br ^bb2(%146, %145 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb4:  // pred: ^bb2
          %147 = llvm.extractvalue %67[0] : !llvm.array<7 x vector<32xf32>> 
          %148 = llvm.mul %59, %2 : i64
          %149 = llvm.mul %63, %3 : i64
          %150 = llvm.add %148, %149 : i64
          %151 = llvm.mul %64, %4 : i64
          %152 = llvm.add %150, %151 : i64
          %153 = llvm.mul %25, %7 : i64
          %154 = llvm.add %152, %153 : i64
          %155 = llvm.add %154, %25 : i64
          %156 = llvm.getelementptr %49[%155] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %147, %156 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %157 = llvm.extractvalue %67[1] : !llvm.array<7 x vector<32xf32>> 
          %158 = llvm.mul %23, %7 : i64
          %159 = llvm.add %152, %158 : i64
          %160 = llvm.add %159, %25 : i64
          %161 = llvm.getelementptr %49[%160] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %157, %161 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %162 = llvm.extractvalue %67[2] : !llvm.array<7 x vector<32xf32>> 
          %163 = llvm.mul %22, %7 : i64
          %164 = llvm.add %152, %163 : i64
          %165 = llvm.add %164, %25 : i64
          %166 = llvm.getelementptr %49[%165] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %162, %166 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %167 = llvm.extractvalue %67[3] : !llvm.array<7 x vector<32xf32>> 
          %168 = llvm.mul %19, %7 : i64
          %169 = llvm.add %152, %168 : i64
          %170 = llvm.add %169, %25 : i64
          %171 = llvm.getelementptr %49[%170] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %167, %171 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %172 = llvm.extractvalue %67[4] : !llvm.array<7 x vector<32xf32>> 
          %173 = llvm.mul %18, %7 : i64
          %174 = llvm.add %152, %173 : i64
          %175 = llvm.add %174, %25 : i64
          %176 = llvm.getelementptr %49[%175] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %172, %176 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %177 = llvm.extractvalue %67[5] : !llvm.array<7 x vector<32xf32>> 
          %178 = llvm.mul %20, %7 : i64
          %179 = llvm.add %152, %178 : i64
          %180 = llvm.add %179, %25 : i64
          %181 = llvm.getelementptr %49[%180] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %177, %181 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %182 = llvm.extractvalue %67[6] : !llvm.array<7 x vector<32xf32>> 
          %183 = llvm.mul %17, %7 : i64
          %184 = llvm.add %152, %183 : i64
          %185 = llvm.add %184, %25 : i64
          %186 = llvm.getelementptr %49[%185] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %182, %186 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %187 = llvm.add %64, %23 : i64
          llvm.br ^bb1(%187 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_156_embedded_elf_riscv_64_main_graph$async_dispatch_156_batch_mmt4d_8x5x2x49x7x32x1_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_156_embedded_elf_riscv_64_main_graph$async_dispatch_156_batch_mmt4d_8x5x2x49x7x32x1_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_156_embedded_elf_riscv_64_main_graph$async_dispatch_156_batch_mmt4d_8x5x2x49x7x32x1_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c677376_i32 = arith.constant 677376 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_156_embedded_elf_riscv_64_main_graph$async_dispatch_156_batch_mmt4d_8x5x2x49x7x32x1_f32_buffer = util.global.load immutable @main_graph$async_dispatch_156_embedded_elf_riscv_64_main_graph$async_dispatch_156_batch_mmt4d_8x5x2x49x7x32x1_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_156::@embedded_elf_riscv_64::@main_graph$async_dispatch_156_batch_mmt4d_8x5x2x49x7x32x1_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_156) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_156::@embedded_elf_riscv_64::@main_graph$async_dispatch_156_batch_mmt4d_8x5x2x49x7x32x1_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c677376_i32]) bindings([
      (%main_graph$async_dispatch_156_embedded_elf_riscv_64_main_graph$async_dispatch_156_batch_mmt4d_8x5x2x49x7x32x1_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_156_embedded_elf_riscv_64_main_graph$async_dispatch_156_batch_mmt4d_8x5x2x49x7x32x1_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
