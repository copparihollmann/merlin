#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_165 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_165_mmt4d_7x8x1024x7x32x1_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c56 = arith.constant 56 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c56, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_165_mmt4d_7x8x1024x7x32x1_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xf32>
          %2 = llvm.mlir.constant(1792 : index) : i64
          %3 = llvm.mlir.constant(224 : index) : i64
          %4 = llvm.mlir.constant(32768 : index) : i64
          %5 = llvm.mlir.constant(32 : index) : i64
          %6 = llvm.mlir.constant(64 : index) : i64
          %7 = llvm.mlir.constant(true) : i1
          %8 = llvm.mlir.constant(7168 : index) : i64
          %9 = llvm.mlir.constant(7 : index) : i64
          %10 = llvm.mlir.constant(8 : i64) : i64
          %11 = llvm.mlir.constant(32 : i64) : i64
          %12 = llvm.mlir.poison : !llvm.array<7 x vector<32xf32>>
          %13 = llvm.mlir.constant(-1 : index) : i64
          %14 = llvm.mlir.constant(6 : index) : i64
          %15 = llvm.mlir.constant(5 : index) : i64
          %16 = llvm.mlir.constant(4 : index) : i64
          %17 = llvm.mlir.constant(3 : index) : i64
          %18 = llvm.mlir.constant(2 : index) : i64
          %19 = llvm.mlir.constant(8 : index) : i64
          %20 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x32xf32>) : !llvm.array<7 x vector<32xf32>>
          %21 = llvm.mlir.constant(1 : index) : i64
          %22 = llvm.mlir.constant(1024 : index) : i64
          %23 = llvm.mlir.constant(0 : index) : i64
          %24 = llvm.mlir.constant(1003520 : index) : i64
          %25 = llvm.mlir.constant(526848 : index) : i64
          %26 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %27 = llvm.extractvalue %26[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %28 = llvm.load %27 : !llvm.ptr -> i32
          %29 = llvm.zext %28 : i32 to i64
          %30 = llvm.extractvalue %26[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %31 = llvm.load %30 : !llvm.ptr -> !llvm.ptr
          %32 = llvm.mul %24, %10 : i64
          %33 = llvm.udiv %32, %11 : i64
          %34 = llvm.getelementptr %31[%33] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%34, %6 : !llvm.ptr, i64)] : i1
          %35 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %36 = llvm.extractvalue %35[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %37 = llvm.getelementptr %36[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %38 = llvm.load %37 : !llvm.ptr -> !llvm.ptr
          %39 = llvm.mul %29, %10 : i64
          %40 = llvm.udiv %39, %11 : i64
          %41 = llvm.getelementptr %38[%40] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%41, %6 : !llvm.ptr, i64)] : i1
          %42 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %43 = llvm.extractvalue %42[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %44 = llvm.getelementptr %43[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %45 = llvm.load %44 : !llvm.ptr -> !llvm.ptr
          %46 = llvm.mul %25, %10 : i64
          %47 = llvm.udiv %46, %11 : i64
          %48 = llvm.getelementptr %45[%47] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%48, %6 : !llvm.ptr, i64)] : i1
          %49 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %50 = llvm.extractvalue %49[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %51 = llvm.zext %50 : i32 to i64
          %52 = llvm.sdiv %51, %19 : i64
          %53 = llvm.mul %52, %19 : i64
          %54 = llvm.icmp "ne" %51, %53 : i64
          %55 = llvm.icmp "slt" %51, %23 : i64
          %56 = llvm.and %54, %55 : i1
          %57 = llvm.add %52, %13 : i64
          %58 = llvm.select %56, %57, %52 : i1, i64
          %59 = llvm.srem %51, %19 : i64
          %60 = llvm.icmp "slt" %59, %23 : i64
          %61 = llvm.add %59, %19 overflow<nsw> : i64
          %62 = llvm.select %60, %61, %59 : i1, i64
          llvm.br ^bb1(%23, %20 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb1(%63: i64, %64: !llvm.array<7 x vector<32xf32>>):  // 2 preds: ^bb0, ^bb2
          %65 = llvm.icmp "slt" %63, %22 : i64
          llvm.cond_br %65, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %66 = llvm.mul %62, %4 : i64
          %67 = llvm.mul %63, %5 : i64
          %68 = llvm.add %66, %67 : i64
          %69 = llvm.add %68, %23 : i64
          %70 = llvm.add %69, %23 : i64
          %71 = llvm.getelementptr %41[%70] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %72 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %73 = llvm.mul %58, %8 overflow<nsw, nuw> : i64
          %74 = llvm.mul %63, %9 overflow<nsw, nuw> : i64
          %75 = llvm.add %73, %74 overflow<nsw, nuw> : i64
          %76 = llvm.add %75, %23 overflow<nsw, nuw> : i64
          %77 = llvm.add %76, %23 overflow<nsw, nuw> : i64
          %78 = llvm.getelementptr inbounds|nuw %34[%77] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %79 = llvm.load %78 : !llvm.ptr -> f32
          %80 = llvm.insertelement %79, %1[%0 : i32] : vector<32xf32>
          %81 = llvm.shufflevector %80, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %82 = llvm.extractvalue %64[0] : !llvm.array<7 x vector<32xf32>> 
          %83 = llvm.intr.fmuladd(%81, %72, %82) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %84 = llvm.add %75, %21 overflow<nsw, nuw> : i64
          %85 = llvm.add %84, %23 overflow<nsw, nuw> : i64
          %86 = llvm.getelementptr inbounds|nuw %34[%85] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %87 = llvm.load %86 : !llvm.ptr -> f32
          %88 = llvm.insertelement %87, %1[%0 : i32] : vector<32xf32>
          %89 = llvm.shufflevector %88, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %90 = llvm.extractvalue %64[1] : !llvm.array<7 x vector<32xf32>> 
          %91 = llvm.intr.fmuladd(%89, %72, %90) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %92 = llvm.add %75, %18 overflow<nsw, nuw> : i64
          %93 = llvm.add %92, %23 overflow<nsw, nuw> : i64
          %94 = llvm.getelementptr inbounds|nuw %34[%93] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %95 = llvm.load %94 : !llvm.ptr -> f32
          %96 = llvm.insertelement %95, %1[%0 : i32] : vector<32xf32>
          %97 = llvm.shufflevector %96, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %98 = llvm.extractvalue %64[2] : !llvm.array<7 x vector<32xf32>> 
          %99 = llvm.intr.fmuladd(%97, %72, %98) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %100 = llvm.add %75, %17 overflow<nsw, nuw> : i64
          %101 = llvm.add %100, %23 overflow<nsw, nuw> : i64
          %102 = llvm.getelementptr inbounds|nuw %34[%101] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %103 = llvm.load %102 : !llvm.ptr -> f32
          %104 = llvm.insertelement %103, %1[%0 : i32] : vector<32xf32>
          %105 = llvm.shufflevector %104, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %106 = llvm.extractvalue %64[3] : !llvm.array<7 x vector<32xf32>> 
          %107 = llvm.intr.fmuladd(%105, %72, %106) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %108 = llvm.add %75, %16 overflow<nsw, nuw> : i64
          %109 = llvm.add %108, %23 overflow<nsw, nuw> : i64
          %110 = llvm.getelementptr inbounds|nuw %34[%109] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %111 = llvm.load %110 : !llvm.ptr -> f32
          %112 = llvm.insertelement %111, %1[%0 : i32] : vector<32xf32>
          %113 = llvm.shufflevector %112, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %114 = llvm.extractvalue %64[4] : !llvm.array<7 x vector<32xf32>> 
          %115 = llvm.intr.fmuladd(%113, %72, %114) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %116 = llvm.add %75, %15 overflow<nsw, nuw> : i64
          %117 = llvm.add %116, %23 overflow<nsw, nuw> : i64
          %118 = llvm.getelementptr inbounds|nuw %34[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %119 = llvm.load %118 : !llvm.ptr -> f32
          %120 = llvm.insertelement %119, %1[%0 : i32] : vector<32xf32>
          %121 = llvm.shufflevector %120, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %122 = llvm.extractvalue %64[5] : !llvm.array<7 x vector<32xf32>> 
          %123 = llvm.intr.fmuladd(%121, %72, %122) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %124 = llvm.add %75, %14 overflow<nsw, nuw> : i64
          %125 = llvm.add %124, %23 overflow<nsw, nuw> : i64
          %126 = llvm.getelementptr inbounds|nuw %34[%125] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %127 = llvm.load %126 : !llvm.ptr -> f32
          %128 = llvm.insertelement %127, %1[%0 : i32] : vector<32xf32>
          %129 = llvm.shufflevector %128, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %130 = llvm.extractvalue %64[6] : !llvm.array<7 x vector<32xf32>> 
          %131 = llvm.intr.fmuladd(%129, %72, %130) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %132 = llvm.insertvalue %83, %12[0] : !llvm.array<7 x vector<32xf32>> 
          %133 = llvm.insertvalue %91, %132[1] : !llvm.array<7 x vector<32xf32>> 
          %134 = llvm.insertvalue %99, %133[2] : !llvm.array<7 x vector<32xf32>> 
          %135 = llvm.insertvalue %107, %134[3] : !llvm.array<7 x vector<32xf32>> 
          %136 = llvm.insertvalue %115, %135[4] : !llvm.array<7 x vector<32xf32>> 
          %137 = llvm.insertvalue %123, %136[5] : !llvm.array<7 x vector<32xf32>> 
          %138 = llvm.insertvalue %131, %137[6] : !llvm.array<7 x vector<32xf32>> 
          %139 = llvm.add %63, %21 : i64
          llvm.br ^bb1(%139, %138 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb3:  // pred: ^bb1
          %140 = llvm.extractvalue %64[0] : !llvm.array<7 x vector<32xf32>> 
          %141 = llvm.mul %58, %2 : i64
          %142 = llvm.mul %62, %3 : i64
          %143 = llvm.add %141, %142 : i64
          %144 = llvm.mul %23, %5 : i64
          %145 = llvm.add %143, %144 : i64
          %146 = llvm.add %145, %23 : i64
          %147 = llvm.getelementptr %48[%146] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %140, %147 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %148 = llvm.extractvalue %64[1] : !llvm.array<7 x vector<32xf32>> 
          %149 = llvm.mul %21, %5 : i64
          %150 = llvm.add %143, %149 : i64
          %151 = llvm.add %150, %23 : i64
          %152 = llvm.getelementptr %48[%151] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %148, %152 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %153 = llvm.extractvalue %64[2] : !llvm.array<7 x vector<32xf32>> 
          %154 = llvm.mul %18, %5 : i64
          %155 = llvm.add %143, %154 : i64
          %156 = llvm.add %155, %23 : i64
          %157 = llvm.getelementptr %48[%156] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %153, %157 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %158 = llvm.extractvalue %64[3] : !llvm.array<7 x vector<32xf32>> 
          %159 = llvm.mul %17, %5 : i64
          %160 = llvm.add %143, %159 : i64
          %161 = llvm.add %160, %23 : i64
          %162 = llvm.getelementptr %48[%161] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %158, %162 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %163 = llvm.extractvalue %64[4] : !llvm.array<7 x vector<32xf32>> 
          %164 = llvm.mul %16, %5 : i64
          %165 = llvm.add %143, %164 : i64
          %166 = llvm.add %165, %23 : i64
          %167 = llvm.getelementptr %48[%166] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %163, %167 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %168 = llvm.extractvalue %64[5] : !llvm.array<7 x vector<32xf32>> 
          %169 = llvm.mul %15, %5 : i64
          %170 = llvm.add %143, %169 : i64
          %171 = llvm.add %170, %23 : i64
          %172 = llvm.getelementptr %48[%171] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %168, %172 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %173 = llvm.extractvalue %64[6] : !llvm.array<7 x vector<32xf32>> 
          %174 = llvm.mul %14, %5 : i64
          %175 = llvm.add %143, %174 : i64
          %176 = llvm.add %175, %23 : i64
          %177 = llvm.getelementptr %48[%176] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %173, %177 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_165_embedded_elf_riscv_64_main_graph$async_dispatch_165_mmt4d_7x8x1024x7x32x1_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_165_embedded_elf_riscv_64_main_graph$async_dispatch_165_mmt4d_7x8x1024x7x32x1_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_165_embedded_elf_riscv_64_main_graph$async_dispatch_165_mmt4d_7x8x1024x7x32x1_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c2836224_i32 = arith.constant 2836224 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_165_embedded_elf_riscv_64_main_graph$async_dispatch_165_mmt4d_7x8x1024x7x32x1_f32_buffer = util.global.load immutable @main_graph$async_dispatch_165_embedded_elf_riscv_64_main_graph$async_dispatch_165_mmt4d_7x8x1024x7x32x1_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_165::@embedded_elf_riscv_64::@main_graph$async_dispatch_165_mmt4d_7x8x1024x7x32x1_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_165) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_165::@embedded_elf_riscv_64::@main_graph$async_dispatch_165_mmt4d_7x8x1024x7x32x1_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c2836224_i32]) bindings([
      (%main_graph$async_dispatch_165_embedded_elf_riscv_64_main_graph$async_dispatch_165_mmt4d_7x8x1024x7x32x1_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_165_embedded_elf_riscv_64_main_graph$async_dispatch_165_mmt4d_7x8x1024x7x32x1_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_165_embedded_elf_riscv_64_main_graph$async_dispatch_165_mmt4d_7x8x1024x7x32x1_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
