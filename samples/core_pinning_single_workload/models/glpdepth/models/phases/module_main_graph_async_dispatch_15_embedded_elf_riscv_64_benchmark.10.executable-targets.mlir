#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_15 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_15_mmt4d_5x98x49x7x32x1_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c35 = arith.constant 35 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c35, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_15_mmt4d_5x98x49x7x32x1_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xf32>
          %2 = llvm.mlir.constant(21952 : index) : i64
          %3 = llvm.mlir.constant(224 : index) : i64
          %4 = llvm.mlir.constant(1568 : index) : i64
          %5 = llvm.mlir.constant(32 : index) : i64
          %6 = llvm.mlir.constant(64 : index) : i64
          %7 = llvm.mlir.constant(true) : i1
          %8 = llvm.mlir.constant(343 : index) : i64
          %9 = llvm.mlir.constant(8 : i64) : i64
          %10 = llvm.mlir.constant(32 : i64) : i64
          %11 = llvm.mlir.poison : !llvm.array<7 x vector<32xf32>>
          %12 = llvm.mlir.constant(-1 : index) : i64
          %13 = llvm.mlir.constant(6 : index) : i64
          %14 = llvm.mlir.constant(5 : index) : i64
          %15 = llvm.mlir.constant(4 : index) : i64
          %16 = llvm.mlir.constant(3 : index) : i64
          %17 = llvm.mlir.constant(2 : index) : i64
          %18 = llvm.mlir.constant(7 : index) : i64
          %19 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x32xf32>) : !llvm.array<7 x vector<32xf32>>
          %20 = llvm.mlir.constant(14 : index) : i64
          %21 = llvm.mlir.constant(1 : index) : i64
          %22 = llvm.mlir.constant(49 : index) : i64
          %23 = llvm.mlir.constant(0 : index) : i64
          %24 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %25 = llvm.extractvalue %24[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %26 = llvm.load %25 : !llvm.ptr -> i32
          %27 = llvm.getelementptr %25[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %28 = llvm.load %27 : !llvm.ptr -> i32
          %29 = llvm.getelementptr %25[2] : (!llvm.ptr) -> !llvm.ptr, i32
          %30 = llvm.load %29 : !llvm.ptr -> i32
          %31 = llvm.zext %26 : i32 to i64
          %32 = llvm.zext %28 : i32 to i64
          %33 = llvm.zext %30 : i32 to i64
          %34 = llvm.extractvalue %24[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %35 = llvm.load %34 : !llvm.ptr -> !llvm.ptr
          %36 = llvm.mul %31, %9 : i64
          %37 = llvm.udiv %36, %10 : i64
          %38 = llvm.getelementptr %35[%37] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%38, %6 : !llvm.ptr, i64)] : i1
          %39 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %40 = llvm.extractvalue %39[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %41 = llvm.load %40 : !llvm.ptr -> !llvm.ptr
          %42 = llvm.mul %32, %9 : i64
          %43 = llvm.udiv %42, %10 : i64
          %44 = llvm.getelementptr %41[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%44, %6 : !llvm.ptr, i64)] : i1
          %45 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %46 = llvm.extractvalue %45[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %47 = llvm.getelementptr %46[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %48 = llvm.load %47 : !llvm.ptr -> !llvm.ptr
          %49 = llvm.mul %33, %9 : i64
          %50 = llvm.udiv %49, %10 : i64
          %51 = llvm.getelementptr %48[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%51, %6 : !llvm.ptr, i64)] : i1
          %52 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %53 = llvm.extractvalue %52[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %54 = llvm.zext %53 : i32 to i64
          %55 = llvm.sdiv %54, %18 : i64
          %56 = llvm.mul %55, %18 : i64
          %57 = llvm.icmp "ne" %54, %56 : i64
          %58 = llvm.icmp "slt" %54, %23 : i64
          %59 = llvm.and %57, %58 : i1
          %60 = llvm.add %55, %12 : i64
          %61 = llvm.select %59, %60, %55 : i1, i64
          %62 = llvm.srem %54, %18 : i64
          %63 = llvm.icmp "slt" %62, %23 : i64
          %64 = llvm.add %62, %18 overflow<nsw> : i64
          %65 = llvm.select %63, %64, %62 : i1, i64
          %66 = llvm.mul %65, %20 overflow<nsw> : i64
          llvm.br ^bb1(%23 : i64)
        ^bb1(%67: i64):  // 2 preds: ^bb0, ^bb5
          %68 = llvm.icmp "slt" %67, %20 : i64
          llvm.cond_br %68, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %69 = llvm.add %67, %66 : i64
          llvm.br ^bb3(%23, %19 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb3(%70: i64, %71: !llvm.array<7 x vector<32xf32>>):  // 2 preds: ^bb2, ^bb4
          %72 = llvm.icmp "slt" %70, %22 : i64
          llvm.cond_br %72, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %73 = llvm.mul %69, %4 : i64
          %74 = llvm.mul %70, %5 : i64
          %75 = llvm.add %73, %74 : i64
          %76 = llvm.add %75, %23 : i64
          %77 = llvm.add %76, %23 : i64
          %78 = llvm.getelementptr %44[%77] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %79 = llvm.load %78 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %80 = llvm.mul %61, %8 overflow<nsw, nuw> : i64
          %81 = llvm.mul %70, %18 overflow<nsw, nuw> : i64
          %82 = llvm.add %80, %81 overflow<nsw, nuw> : i64
          %83 = llvm.add %82, %23 overflow<nsw, nuw> : i64
          %84 = llvm.add %83, %23 overflow<nsw, nuw> : i64
          %85 = llvm.getelementptr inbounds|nuw %38[%84] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %86 = llvm.load %85 : !llvm.ptr -> f32
          %87 = llvm.insertelement %86, %1[%0 : i32] : vector<32xf32>
          %88 = llvm.shufflevector %87, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %89 = llvm.extractvalue %71[0] : !llvm.array<7 x vector<32xf32>> 
          %90 = llvm.intr.fmuladd(%88, %79, %89) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %91 = llvm.add %82, %21 overflow<nsw, nuw> : i64
          %92 = llvm.add %91, %23 overflow<nsw, nuw> : i64
          %93 = llvm.getelementptr inbounds|nuw %38[%92] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %94 = llvm.load %93 : !llvm.ptr -> f32
          %95 = llvm.insertelement %94, %1[%0 : i32] : vector<32xf32>
          %96 = llvm.shufflevector %95, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %97 = llvm.extractvalue %71[1] : !llvm.array<7 x vector<32xf32>> 
          %98 = llvm.intr.fmuladd(%96, %79, %97) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %99 = llvm.add %82, %17 overflow<nsw, nuw> : i64
          %100 = llvm.add %99, %23 overflow<nsw, nuw> : i64
          %101 = llvm.getelementptr inbounds|nuw %38[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %102 = llvm.load %101 : !llvm.ptr -> f32
          %103 = llvm.insertelement %102, %1[%0 : i32] : vector<32xf32>
          %104 = llvm.shufflevector %103, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %105 = llvm.extractvalue %71[2] : !llvm.array<7 x vector<32xf32>> 
          %106 = llvm.intr.fmuladd(%104, %79, %105) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %107 = llvm.add %82, %16 overflow<nsw, nuw> : i64
          %108 = llvm.add %107, %23 overflow<nsw, nuw> : i64
          %109 = llvm.getelementptr inbounds|nuw %38[%108] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %110 = llvm.load %109 : !llvm.ptr -> f32
          %111 = llvm.insertelement %110, %1[%0 : i32] : vector<32xf32>
          %112 = llvm.shufflevector %111, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %113 = llvm.extractvalue %71[3] : !llvm.array<7 x vector<32xf32>> 
          %114 = llvm.intr.fmuladd(%112, %79, %113) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %115 = llvm.add %82, %15 overflow<nsw, nuw> : i64
          %116 = llvm.add %115, %23 overflow<nsw, nuw> : i64
          %117 = llvm.getelementptr inbounds|nuw %38[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %118 = llvm.load %117 : !llvm.ptr -> f32
          %119 = llvm.insertelement %118, %1[%0 : i32] : vector<32xf32>
          %120 = llvm.shufflevector %119, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %121 = llvm.extractvalue %71[4] : !llvm.array<7 x vector<32xf32>> 
          %122 = llvm.intr.fmuladd(%120, %79, %121) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %123 = llvm.add %82, %14 overflow<nsw, nuw> : i64
          %124 = llvm.add %123, %23 overflow<nsw, nuw> : i64
          %125 = llvm.getelementptr inbounds|nuw %38[%124] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %126 = llvm.load %125 : !llvm.ptr -> f32
          %127 = llvm.insertelement %126, %1[%0 : i32] : vector<32xf32>
          %128 = llvm.shufflevector %127, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %129 = llvm.extractvalue %71[5] : !llvm.array<7 x vector<32xf32>> 
          %130 = llvm.intr.fmuladd(%128, %79, %129) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %131 = llvm.add %82, %13 overflow<nsw, nuw> : i64
          %132 = llvm.add %131, %23 overflow<nsw, nuw> : i64
          %133 = llvm.getelementptr inbounds|nuw %38[%132] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %134 = llvm.load %133 : !llvm.ptr -> f32
          %135 = llvm.insertelement %134, %1[%0 : i32] : vector<32xf32>
          %136 = llvm.shufflevector %135, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %137 = llvm.extractvalue %71[6] : !llvm.array<7 x vector<32xf32>> 
          %138 = llvm.intr.fmuladd(%136, %79, %137) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %139 = llvm.insertvalue %90, %11[0] : !llvm.array<7 x vector<32xf32>> 
          %140 = llvm.insertvalue %98, %139[1] : !llvm.array<7 x vector<32xf32>> 
          %141 = llvm.insertvalue %106, %140[2] : !llvm.array<7 x vector<32xf32>> 
          %142 = llvm.insertvalue %114, %141[3] : !llvm.array<7 x vector<32xf32>> 
          %143 = llvm.insertvalue %122, %142[4] : !llvm.array<7 x vector<32xf32>> 
          %144 = llvm.insertvalue %130, %143[5] : !llvm.array<7 x vector<32xf32>> 
          %145 = llvm.insertvalue %138, %144[6] : !llvm.array<7 x vector<32xf32>> 
          %146 = llvm.add %70, %21 : i64
          llvm.br ^bb3(%146, %145 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb5:  // pred: ^bb3
          %147 = llvm.extractvalue %71[0] : !llvm.array<7 x vector<32xf32>> 
          %148 = llvm.mul %61, %2 : i64
          %149 = llvm.mul %69, %3 : i64
          %150 = llvm.add %148, %149 : i64
          %151 = llvm.mul %23, %5 : i64
          %152 = llvm.add %150, %151 : i64
          %153 = llvm.add %152, %23 : i64
          %154 = llvm.getelementptr %51[%153] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %147, %154 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %155 = llvm.extractvalue %71[1] : !llvm.array<7 x vector<32xf32>> 
          %156 = llvm.mul %21, %5 : i64
          %157 = llvm.add %150, %156 : i64
          %158 = llvm.add %157, %23 : i64
          %159 = llvm.getelementptr %51[%158] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %155, %159 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %160 = llvm.extractvalue %71[2] : !llvm.array<7 x vector<32xf32>> 
          %161 = llvm.mul %17, %5 : i64
          %162 = llvm.add %150, %161 : i64
          %163 = llvm.add %162, %23 : i64
          %164 = llvm.getelementptr %51[%163] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %160, %164 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %165 = llvm.extractvalue %71[3] : !llvm.array<7 x vector<32xf32>> 
          %166 = llvm.mul %16, %5 : i64
          %167 = llvm.add %150, %166 : i64
          %168 = llvm.add %167, %23 : i64
          %169 = llvm.getelementptr %51[%168] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %165, %169 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %170 = llvm.extractvalue %71[4] : !llvm.array<7 x vector<32xf32>> 
          %171 = llvm.mul %15, %5 : i64
          %172 = llvm.add %150, %171 : i64
          %173 = llvm.add %172, %23 : i64
          %174 = llvm.getelementptr %51[%173] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %170, %174 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %175 = llvm.extractvalue %71[5] : !llvm.array<7 x vector<32xf32>> 
          %176 = llvm.mul %14, %5 : i64
          %177 = llvm.add %150, %176 : i64
          %178 = llvm.add %177, %23 : i64
          %179 = llvm.getelementptr %51[%178] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %175, %179 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %180 = llvm.extractvalue %71[6] : !llvm.array<7 x vector<32xf32>> 
          %181 = llvm.mul %13, %5 : i64
          %182 = llvm.add %150, %181 : i64
          %183 = llvm.add %182, %23 : i64
          %184 = llvm.getelementptr %51[%183] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %180, %184 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %185 = llvm.add %67, %21 : i64
          llvm.br ^bb1(%185 : i64)
        ^bb6:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_15_embedded_elf_riscv_64_main_graph$async_dispatch_15_mmt4d_5x98x49x7x32x1_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_15_embedded_elf_riscv_64_main_graph$async_dispatch_15_mmt4d_5x98x49x7x32x1_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_15_embedded_elf_riscv_64_main_graph$async_dispatch_15_mmt4d_5x98x49x7x32x1_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c1649536_i32 = arith.constant 1649536 : i32
    %c420224_i32 = arith.constant 420224 : i32
    %c1034880_i32 = arith.constant 1034880 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_15_embedded_elf_riscv_64_main_graph$async_dispatch_15_mmt4d_5x98x49x7x32x1_f32_buffer = util.global.load immutable @main_graph$async_dispatch_15_embedded_elf_riscv_64_main_graph$async_dispatch_15_mmt4d_5x98x49x7x32x1_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_15::@embedded_elf_riscv_64::@main_graph$async_dispatch_15_mmt4d_5x98x49x7x32x1_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_15) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_15::@embedded_elf_riscv_64::@main_graph$async_dispatch_15_mmt4d_5x98x49x7x32x1_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c1649536_i32, %c420224_i32, %c1034880_i32]) bindings([
      (%main_graph$async_dispatch_15_embedded_elf_riscv_64_main_graph$async_dispatch_15_mmt4d_5x98x49x7x32x1_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_15_embedded_elf_riscv_64_main_graph$async_dispatch_15_mmt4d_5x98x49x7x32x1_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
