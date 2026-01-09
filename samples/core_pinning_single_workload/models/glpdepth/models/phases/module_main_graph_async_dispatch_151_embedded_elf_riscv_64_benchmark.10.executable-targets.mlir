#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_151 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_151_batch_mmt4d_8x7x2x32x7x32x1_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c56 = arith.constant 56 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c56, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_151_batch_mmt4d_8x7x2x32x7x32x1_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xf32>
          %2 = llvm.mlir.constant(3136 : index) : i64
          %3 = llvm.mlir.constant(448 : index) : i64
          %4 = llvm.mlir.constant(2048 : index) : i64
          %5 = llvm.mlir.constant(1024 : index) : i64
          %6 = llvm.mlir.constant(64 : index) : i64
          %7 = llvm.mlir.constant(true) : i1
          %8 = llvm.mlir.constant(1568 : index) : i64
          %9 = llvm.mlir.constant(224 : index) : i64
          %10 = llvm.mlir.constant(8 : i64) : i64
          %11 = llvm.mlir.constant(32 : i64) : i64
          %12 = llvm.mlir.poison : !llvm.array<7 x vector<32xf32>>
          %13 = llvm.mlir.constant(-1 : index) : i64
          %14 = llvm.mlir.constant(6 : index) : i64
          %15 = llvm.mlir.constant(5 : index) : i64
          %16 = llvm.mlir.constant(4 : index) : i64
          %17 = llvm.mlir.constant(3 : index) : i64
          %18 = llvm.mlir.constant(7 : index) : i64
          %19 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x32xf32>) : !llvm.array<7 x vector<32xf32>>
          %20 = llvm.mlir.constant(2 : index) : i64
          %21 = llvm.mlir.constant(1 : index) : i64
          %22 = llvm.mlir.constant(32 : index) : i64
          %23 = llvm.mlir.constant(0 : index) : i64
          %24 = llvm.mlir.constant(1003520 : index) : i64
          %25 = llvm.mlir.constant(1069056 : index) : i64
          %26 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %27 = llvm.extractvalue %26[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %28 = llvm.load %27 : !llvm.ptr -> i32
          %29 = llvm.zext %28 : i32 to i64
          %30 = llvm.extractvalue %26[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %31 = llvm.load %30 : !llvm.ptr -> !llvm.ptr
          %32 = llvm.mul %29, %10 : i64
          %33 = llvm.udiv %32, %11 : i64
          %34 = llvm.getelementptr %31[%33] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%34, %6 : !llvm.ptr, i64)] : i1
          %35 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %36 = llvm.extractvalue %35[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %37 = llvm.load %36 : !llvm.ptr -> !llvm.ptr
          %38 = llvm.mul %24, %10 : i64
          %39 = llvm.udiv %38, %11 : i64
          %40 = llvm.getelementptr %37[%39] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%40, %6 : !llvm.ptr, i64)] : i1
          %41 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %42 = llvm.extractvalue %41[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %43 = llvm.getelementptr %42[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %44 = llvm.load %43 : !llvm.ptr -> !llvm.ptr
          %45 = llvm.mul %25, %10 : i64
          %46 = llvm.udiv %45, %11 : i64
          %47 = llvm.getelementptr %44[%46] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%47, %6 : !llvm.ptr, i64)] : i1
          %48 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %49 = llvm.extractvalue %48[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %50 = llvm.zext %49 : i32 to i64
          %51 = llvm.sdiv %50, %18 : i64
          %52 = llvm.mul %51, %18 : i64
          %53 = llvm.icmp "ne" %50, %52 : i64
          %54 = llvm.icmp "slt" %50, %23 : i64
          %55 = llvm.and %53, %54 : i1
          %56 = llvm.add %51, %13 : i64
          %57 = llvm.select %55, %56, %51 : i1, i64
          %58 = llvm.srem %50, %18 : i64
          %59 = llvm.icmp "slt" %58, %23 : i64
          %60 = llvm.add %58, %18 overflow<nsw> : i64
          %61 = llvm.select %59, %60, %58 : i1, i64
          llvm.br ^bb1(%23 : i64)
        ^bb1(%62: i64):  // 2 preds: ^bb0, ^bb4
          %63 = llvm.icmp "slt" %62, %20 : i64
          llvm.cond_br %63, ^bb2(%23, %19 : i64, !llvm.array<7 x vector<32xf32>>), ^bb5
        ^bb2(%64: i64, %65: !llvm.array<7 x vector<32xf32>>):  // 2 preds: ^bb1, ^bb3
          %66 = llvm.icmp "slt" %64, %22 : i64
          llvm.cond_br %66, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %67 = llvm.mul %57, %4 : i64
          %68 = llvm.mul %62, %5 : i64
          %69 = llvm.add %67, %68 : i64
          %70 = llvm.mul %64, %22 : i64
          %71 = llvm.add %69, %70 : i64
          %72 = llvm.add %71, %23 : i64
          %73 = llvm.add %72, %23 : i64
          %74 = llvm.getelementptr %40[%73] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %75 = llvm.load %74 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %76 = llvm.mul %57, %8 overflow<nsw, nuw> : i64
          %77 = llvm.mul %61, %9 overflow<nsw, nuw> : i64
          %78 = llvm.add %76, %77 overflow<nsw, nuw> : i64
          %79 = llvm.mul %64, %18 overflow<nsw, nuw> : i64
          %80 = llvm.add %78, %79 overflow<nsw, nuw> : i64
          %81 = llvm.add %80, %23 overflow<nsw, nuw> : i64
          %82 = llvm.add %81, %23 overflow<nsw, nuw> : i64
          %83 = llvm.getelementptr inbounds|nuw %34[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %84 = llvm.load %83 : !llvm.ptr -> f32
          %85 = llvm.insertelement %84, %1[%0 : i32] : vector<32xf32>
          %86 = llvm.shufflevector %85, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %87 = llvm.extractvalue %65[0] : !llvm.array<7 x vector<32xf32>> 
          %88 = llvm.intr.fmuladd(%86, %75, %87) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %89 = llvm.add %80, %21 overflow<nsw, nuw> : i64
          %90 = llvm.add %89, %23 overflow<nsw, nuw> : i64
          %91 = llvm.getelementptr inbounds|nuw %34[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %92 = llvm.load %91 : !llvm.ptr -> f32
          %93 = llvm.insertelement %92, %1[%0 : i32] : vector<32xf32>
          %94 = llvm.shufflevector %93, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %95 = llvm.extractvalue %65[1] : !llvm.array<7 x vector<32xf32>> 
          %96 = llvm.intr.fmuladd(%94, %75, %95) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %97 = llvm.add %80, %20 overflow<nsw, nuw> : i64
          %98 = llvm.add %97, %23 overflow<nsw, nuw> : i64
          %99 = llvm.getelementptr inbounds|nuw %34[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %100 = llvm.load %99 : !llvm.ptr -> f32
          %101 = llvm.insertelement %100, %1[%0 : i32] : vector<32xf32>
          %102 = llvm.shufflevector %101, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %103 = llvm.extractvalue %65[2] : !llvm.array<7 x vector<32xf32>> 
          %104 = llvm.intr.fmuladd(%102, %75, %103) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %105 = llvm.add %80, %17 overflow<nsw, nuw> : i64
          %106 = llvm.add %105, %23 overflow<nsw, nuw> : i64
          %107 = llvm.getelementptr inbounds|nuw %34[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %108 = llvm.load %107 : !llvm.ptr -> f32
          %109 = llvm.insertelement %108, %1[%0 : i32] : vector<32xf32>
          %110 = llvm.shufflevector %109, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %111 = llvm.extractvalue %65[3] : !llvm.array<7 x vector<32xf32>> 
          %112 = llvm.intr.fmuladd(%110, %75, %111) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %113 = llvm.add %80, %16 overflow<nsw, nuw> : i64
          %114 = llvm.add %113, %23 overflow<nsw, nuw> : i64
          %115 = llvm.getelementptr inbounds|nuw %34[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %116 = llvm.load %115 : !llvm.ptr -> f32
          %117 = llvm.insertelement %116, %1[%0 : i32] : vector<32xf32>
          %118 = llvm.shufflevector %117, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %119 = llvm.extractvalue %65[4] : !llvm.array<7 x vector<32xf32>> 
          %120 = llvm.intr.fmuladd(%118, %75, %119) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %121 = llvm.add %80, %15 overflow<nsw, nuw> : i64
          %122 = llvm.add %121, %23 overflow<nsw, nuw> : i64
          %123 = llvm.getelementptr inbounds|nuw %34[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %124 = llvm.load %123 : !llvm.ptr -> f32
          %125 = llvm.insertelement %124, %1[%0 : i32] : vector<32xf32>
          %126 = llvm.shufflevector %125, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %127 = llvm.extractvalue %65[5] : !llvm.array<7 x vector<32xf32>> 
          %128 = llvm.intr.fmuladd(%126, %75, %127) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %129 = llvm.add %80, %14 overflow<nsw, nuw> : i64
          %130 = llvm.add %129, %23 overflow<nsw, nuw> : i64
          %131 = llvm.getelementptr inbounds|nuw %34[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %132 = llvm.load %131 : !llvm.ptr -> f32
          %133 = llvm.insertelement %132, %1[%0 : i32] : vector<32xf32>
          %134 = llvm.shufflevector %133, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %135 = llvm.extractvalue %65[6] : !llvm.array<7 x vector<32xf32>> 
          %136 = llvm.intr.fmuladd(%134, %75, %135) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %137 = llvm.insertvalue %88, %12[0] : !llvm.array<7 x vector<32xf32>> 
          %138 = llvm.insertvalue %96, %137[1] : !llvm.array<7 x vector<32xf32>> 
          %139 = llvm.insertvalue %104, %138[2] : !llvm.array<7 x vector<32xf32>> 
          %140 = llvm.insertvalue %112, %139[3] : !llvm.array<7 x vector<32xf32>> 
          %141 = llvm.insertvalue %120, %140[4] : !llvm.array<7 x vector<32xf32>> 
          %142 = llvm.insertvalue %128, %141[5] : !llvm.array<7 x vector<32xf32>> 
          %143 = llvm.insertvalue %136, %142[6] : !llvm.array<7 x vector<32xf32>> 
          %144 = llvm.add %64, %21 : i64
          llvm.br ^bb2(%144, %143 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb4:  // pred: ^bb2
          %145 = llvm.extractvalue %65[0] : !llvm.array<7 x vector<32xf32>> 
          %146 = llvm.mul %57, %2 : i64
          %147 = llvm.mul %61, %3 : i64
          %148 = llvm.add %146, %147 : i64
          %149 = llvm.mul %62, %9 : i64
          %150 = llvm.add %148, %149 : i64
          %151 = llvm.mul %23, %22 : i64
          %152 = llvm.add %150, %151 : i64
          %153 = llvm.add %152, %23 : i64
          %154 = llvm.getelementptr %47[%153] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %145, %154 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %155 = llvm.extractvalue %65[1] : !llvm.array<7 x vector<32xf32>> 
          %156 = llvm.mul %21, %22 : i64
          %157 = llvm.add %150, %156 : i64
          %158 = llvm.add %157, %23 : i64
          %159 = llvm.getelementptr %47[%158] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %155, %159 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %160 = llvm.extractvalue %65[2] : !llvm.array<7 x vector<32xf32>> 
          %161 = llvm.mul %20, %22 : i64
          %162 = llvm.add %150, %161 : i64
          %163 = llvm.add %162, %23 : i64
          %164 = llvm.getelementptr %47[%163] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %160, %164 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %165 = llvm.extractvalue %65[3] : !llvm.array<7 x vector<32xf32>> 
          %166 = llvm.mul %17, %22 : i64
          %167 = llvm.add %150, %166 : i64
          %168 = llvm.add %167, %23 : i64
          %169 = llvm.getelementptr %47[%168] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %165, %169 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %170 = llvm.extractvalue %65[4] : !llvm.array<7 x vector<32xf32>> 
          %171 = llvm.mul %16, %22 : i64
          %172 = llvm.add %150, %171 : i64
          %173 = llvm.add %172, %23 : i64
          %174 = llvm.getelementptr %47[%173] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %170, %174 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %175 = llvm.extractvalue %65[5] : !llvm.array<7 x vector<32xf32>> 
          %176 = llvm.mul %15, %22 : i64
          %177 = llvm.add %150, %176 : i64
          %178 = llvm.add %177, %23 : i64
          %179 = llvm.getelementptr %47[%178] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %175, %179 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %180 = llvm.extractvalue %65[6] : !llvm.array<7 x vector<32xf32>> 
          %181 = llvm.mul %14, %22 : i64
          %182 = llvm.add %150, %181 : i64
          %183 = llvm.add %182, %23 : i64
          %184 = llvm.getelementptr %47[%183] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %180, %184 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %185 = llvm.add %62, %21 : i64
          llvm.br ^bb1(%185 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_151_embedded_elf_riscv_64_main_graph$async_dispatch_151_batch_mmt4d_8x7x2x32x7x32x1_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_151_embedded_elf_riscv_64_main_graph$async_dispatch_151_batch_mmt4d_8x7x2x32x7x32x1_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_151_embedded_elf_riscv_64_main_graph$async_dispatch_151_batch_mmt4d_8x7x2x32x7x32x1_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c727552_i32 = arith.constant 727552 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_151_embedded_elf_riscv_64_main_graph$async_dispatch_151_batch_mmt4d_8x7x2x32x7x32x1_f32_buffer = util.global.load immutable @main_graph$async_dispatch_151_embedded_elf_riscv_64_main_graph$async_dispatch_151_batch_mmt4d_8x7x2x32x7x32x1_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_151::@embedded_elf_riscv_64::@main_graph$async_dispatch_151_batch_mmt4d_8x7x2x32x7x32x1_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_151) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_151::@embedded_elf_riscv_64::@main_graph$async_dispatch_151_batch_mmt4d_8x7x2x32x7x32x1_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c727552_i32]) bindings([
      (%main_graph$async_dispatch_151_embedded_elf_riscv_64_main_graph$async_dispatch_151_batch_mmt4d_8x7x2x32x7x32x1_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_151_embedded_elf_riscv_64_main_graph$async_dispatch_151_batch_mmt4d_8x7x2x32x7x32x1_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
