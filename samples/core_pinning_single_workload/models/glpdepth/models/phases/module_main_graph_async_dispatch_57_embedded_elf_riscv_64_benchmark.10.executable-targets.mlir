#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_57 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_57_matmul_like_4x49x32x64_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c28 = arith.constant 28 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c28, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_57_matmul_like_4x49x32x64_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<16xf32>
          %2 = llvm.mlir.constant(1568 : index) : i64
          %3 = llvm.mlir.constant(128 : index) : i64
          %4 = llvm.mlir.constant(true) : i1
          %5 = llvm.mlir.constant(8 : i64) : i64
          %6 = llvm.mlir.constant(32 : i64) : i64
          %7 = llvm.mlir.poison : !llvm.array<7 x vector<16xf32>>
          %8 = llvm.mlir.constant(-1 : index) : i64
          %9 = llvm.mlir.constant(7 : index) : i64
          %10 = llvm.mlir.constant(6 : index) : i64
          %11 = llvm.mlir.constant(5 : index) : i64
          %12 = llvm.mlir.constant(4 : index) : i64
          %13 = llvm.mlir.constant(3 : index) : i64
          %14 = llvm.mlir.constant(2 : index) : i64
          %15 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x16xf32>) : !llvm.array<7 x vector<16xf32>>
          %16 = llvm.mlir.constant(16 : index) : i64
          %17 = llvm.mlir.constant(32 : index) : i64
          %18 = llvm.mlir.constant(1 : index) : i64
          %19 = llvm.mlir.constant(64 : index) : i64
          %20 = llvm.mlir.constant(0 : index) : i64
          %21 = llvm.mlir.constant(631296 : index) : i64
          %22 = llvm.mlir.constant(606208 : index) : i64
          %23 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %24 = llvm.extractvalue %23[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %25 = llvm.load %24 : !llvm.ptr -> i32
          %26 = llvm.zext %25 : i32 to i64
          %27 = llvm.extractvalue %23[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %28 = llvm.load %27 : !llvm.ptr -> !llvm.ptr
          %29 = llvm.mul %21, %5 : i64
          %30 = llvm.udiv %29, %6 : i64
          %31 = llvm.getelementptr %28[%30] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%31, %19 : !llvm.ptr, i64)] : i1
          %32 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %33 = llvm.extractvalue %32[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %34 = llvm.getelementptr %33[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %35 = llvm.load %34 : !llvm.ptr -> !llvm.ptr
          %36 = llvm.mul %26, %5 : i64
          %37 = llvm.udiv %36, %6 : i64
          %38 = llvm.getelementptr %35[%37] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%38, %19 : !llvm.ptr, i64)] : i1
          %39 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %40 = llvm.extractvalue %39[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %41 = llvm.getelementptr %40[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %42 = llvm.load %41 : !llvm.ptr -> !llvm.ptr
          %43 = llvm.mul %22, %5 : i64
          %44 = llvm.udiv %43, %6 : i64
          %45 = llvm.getelementptr %42[%44] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%45, %19 : !llvm.ptr, i64)] : i1
          %46 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %47 = llvm.extractvalue %46[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %48 = llvm.zext %47 : i32 to i64
          %49 = llvm.sdiv %48, %9 : i64
          %50 = llvm.mul %49, %9 : i64
          %51 = llvm.icmp "ne" %48, %50 : i64
          %52 = llvm.icmp "slt" %48, %20 : i64
          %53 = llvm.and %51, %52 : i1
          %54 = llvm.add %49, %8 : i64
          %55 = llvm.select %53, %54, %49 : i1, i64
          %56 = llvm.srem %48, %9 : i64
          %57 = llvm.icmp "slt" %56, %20 : i64
          %58 = llvm.add %56, %9 overflow<nsw> : i64
          %59 = llvm.select %57, %58, %56 : i1, i64
          %60 = llvm.mul %59, %9 overflow<nsw> : i64
          llvm.br ^bb1(%20 : i64)
        ^bb1(%61: i64):  // 2 preds: ^bb0, ^bb4
          %62 = llvm.icmp "slt" %61, %17 : i64
          llvm.cond_br %62, ^bb2(%20, %15 : i64, !llvm.array<7 x vector<16xf32>>), ^bb5
        ^bb2(%63: i64, %64: !llvm.array<7 x vector<16xf32>>):  // 2 preds: ^bb1, ^bb3
          %65 = llvm.icmp "slt" %63, %19 : i64
          llvm.cond_br %65, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %66 = llvm.mul %63, %3 : i64
          %67 = llvm.mul %55, %17 : i64
          %68 = llvm.add %66, %67 : i64
          %69 = llvm.add %68, %61 : i64
          %70 = llvm.getelementptr %38[%69] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %71 = llvm.load %70 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %72 = llvm.mul %60, %19 overflow<nsw, nuw> : i64
          %73 = llvm.add %72, %63 overflow<nsw, nuw> : i64
          %74 = llvm.getelementptr inbounds|nuw %31[%73] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %75 = llvm.load %74 : !llvm.ptr -> f32
          %76 = llvm.insertelement %75, %1[%0 : i32] : vector<16xf32>
          %77 = llvm.shufflevector %76, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %78 = llvm.extractvalue %64[0] : !llvm.array<7 x vector<16xf32>> 
          %79 = llvm.intr.fmuladd(%77, %71, %78) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %80 = llvm.add %60, %18 : i64
          %81 = llvm.mul %80, %19 overflow<nsw, nuw> : i64
          %82 = llvm.add %81, %63 overflow<nsw, nuw> : i64
          %83 = llvm.getelementptr inbounds|nuw %31[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %84 = llvm.load %83 : !llvm.ptr -> f32
          %85 = llvm.insertelement %84, %1[%0 : i32] : vector<16xf32>
          %86 = llvm.shufflevector %85, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %87 = llvm.extractvalue %64[1] : !llvm.array<7 x vector<16xf32>> 
          %88 = llvm.intr.fmuladd(%86, %71, %87) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %89 = llvm.add %60, %14 : i64
          %90 = llvm.mul %89, %19 overflow<nsw, nuw> : i64
          %91 = llvm.add %90, %63 overflow<nsw, nuw> : i64
          %92 = llvm.getelementptr inbounds|nuw %31[%91] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %93 = llvm.load %92 : !llvm.ptr -> f32
          %94 = llvm.insertelement %93, %1[%0 : i32] : vector<16xf32>
          %95 = llvm.shufflevector %94, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %96 = llvm.extractvalue %64[2] : !llvm.array<7 x vector<16xf32>> 
          %97 = llvm.intr.fmuladd(%95, %71, %96) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %98 = llvm.add %60, %13 : i64
          %99 = llvm.mul %98, %19 overflow<nsw, nuw> : i64
          %100 = llvm.add %99, %63 overflow<nsw, nuw> : i64
          %101 = llvm.getelementptr inbounds|nuw %31[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %102 = llvm.load %101 : !llvm.ptr -> f32
          %103 = llvm.insertelement %102, %1[%0 : i32] : vector<16xf32>
          %104 = llvm.shufflevector %103, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %105 = llvm.extractvalue %64[3] : !llvm.array<7 x vector<16xf32>> 
          %106 = llvm.intr.fmuladd(%104, %71, %105) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %107 = llvm.add %60, %12 : i64
          %108 = llvm.mul %107, %19 overflow<nsw, nuw> : i64
          %109 = llvm.add %108, %63 overflow<nsw, nuw> : i64
          %110 = llvm.getelementptr inbounds|nuw %31[%109] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %111 = llvm.load %110 : !llvm.ptr -> f32
          %112 = llvm.insertelement %111, %1[%0 : i32] : vector<16xf32>
          %113 = llvm.shufflevector %112, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %114 = llvm.extractvalue %64[4] : !llvm.array<7 x vector<16xf32>> 
          %115 = llvm.intr.fmuladd(%113, %71, %114) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %116 = llvm.add %60, %11 : i64
          %117 = llvm.mul %116, %19 overflow<nsw, nuw> : i64
          %118 = llvm.add %117, %63 overflow<nsw, nuw> : i64
          %119 = llvm.getelementptr inbounds|nuw %31[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %120 = llvm.load %119 : !llvm.ptr -> f32
          %121 = llvm.insertelement %120, %1[%0 : i32] : vector<16xf32>
          %122 = llvm.shufflevector %121, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %123 = llvm.extractvalue %64[5] : !llvm.array<7 x vector<16xf32>> 
          %124 = llvm.intr.fmuladd(%122, %71, %123) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %125 = llvm.add %60, %10 : i64
          %126 = llvm.mul %125, %19 overflow<nsw, nuw> : i64
          %127 = llvm.add %126, %63 overflow<nsw, nuw> : i64
          %128 = llvm.getelementptr inbounds|nuw %31[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %129 = llvm.load %128 : !llvm.ptr -> f32
          %130 = llvm.insertelement %129, %1[%0 : i32] : vector<16xf32>
          %131 = llvm.shufflevector %130, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %132 = llvm.extractvalue %64[6] : !llvm.array<7 x vector<16xf32>> 
          %133 = llvm.intr.fmuladd(%131, %71, %132) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %134 = llvm.insertvalue %79, %7[0] : !llvm.array<7 x vector<16xf32>> 
          %135 = llvm.insertvalue %88, %134[1] : !llvm.array<7 x vector<16xf32>> 
          %136 = llvm.insertvalue %97, %135[2] : !llvm.array<7 x vector<16xf32>> 
          %137 = llvm.insertvalue %106, %136[3] : !llvm.array<7 x vector<16xf32>> 
          %138 = llvm.insertvalue %115, %137[4] : !llvm.array<7 x vector<16xf32>> 
          %139 = llvm.insertvalue %124, %138[5] : !llvm.array<7 x vector<16xf32>> 
          %140 = llvm.insertvalue %133, %139[6] : !llvm.array<7 x vector<16xf32>> 
          %141 = llvm.add %63, %18 : i64
          llvm.br ^bb2(%141, %140 : i64, !llvm.array<7 x vector<16xf32>>)
        ^bb4:  // pred: ^bb2
          %142 = llvm.extractvalue %64[0] : !llvm.array<7 x vector<16xf32>> 
          %143 = llvm.extractvalue %15[0] : !llvm.array<7 x vector<16xf32>> 
          %144 = llvm.fadd %142, %143 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %145 = llvm.extractvalue %64[1] : !llvm.array<7 x vector<16xf32>> 
          %146 = llvm.extractvalue %15[1] : !llvm.array<7 x vector<16xf32>> 
          %147 = llvm.fadd %145, %146 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %148 = llvm.extractvalue %64[2] : !llvm.array<7 x vector<16xf32>> 
          %149 = llvm.extractvalue %15[2] : !llvm.array<7 x vector<16xf32>> 
          %150 = llvm.fadd %148, %149 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %151 = llvm.extractvalue %64[3] : !llvm.array<7 x vector<16xf32>> 
          %152 = llvm.extractvalue %15[3] : !llvm.array<7 x vector<16xf32>> 
          %153 = llvm.fadd %151, %152 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %154 = llvm.extractvalue %64[4] : !llvm.array<7 x vector<16xf32>> 
          %155 = llvm.extractvalue %15[4] : !llvm.array<7 x vector<16xf32>> 
          %156 = llvm.fadd %154, %155 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %157 = llvm.extractvalue %64[5] : !llvm.array<7 x vector<16xf32>> 
          %158 = llvm.extractvalue %15[5] : !llvm.array<7 x vector<16xf32>> 
          %159 = llvm.fadd %157, %158 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %160 = llvm.extractvalue %64[6] : !llvm.array<7 x vector<16xf32>> 
          %161 = llvm.extractvalue %15[6] : !llvm.array<7 x vector<16xf32>> 
          %162 = llvm.fadd %160, %161 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %163 = llvm.mul %55, %2 : i64
          %164 = llvm.mul %60, %17 : i64
          %165 = llvm.add %163, %164 : i64
          %166 = llvm.add %165, %61 : i64
          %167 = llvm.getelementptr %45[%166] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %144, %167 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %168 = llvm.add %60, %18 : i64
          %169 = llvm.mul %168, %17 : i64
          %170 = llvm.add %163, %169 : i64
          %171 = llvm.add %170, %61 : i64
          %172 = llvm.getelementptr %45[%171] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %147, %172 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %173 = llvm.add %60, %14 : i64
          %174 = llvm.mul %173, %17 : i64
          %175 = llvm.add %163, %174 : i64
          %176 = llvm.add %175, %61 : i64
          %177 = llvm.getelementptr %45[%176] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %150, %177 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %178 = llvm.add %60, %13 : i64
          %179 = llvm.mul %178, %17 : i64
          %180 = llvm.add %163, %179 : i64
          %181 = llvm.add %180, %61 : i64
          %182 = llvm.getelementptr %45[%181] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %153, %182 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %183 = llvm.add %60, %12 : i64
          %184 = llvm.mul %183, %17 : i64
          %185 = llvm.add %163, %184 : i64
          %186 = llvm.add %185, %61 : i64
          %187 = llvm.getelementptr %45[%186] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %156, %187 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %188 = llvm.add %60, %11 : i64
          %189 = llvm.mul %188, %17 : i64
          %190 = llvm.add %163, %189 : i64
          %191 = llvm.add %190, %61 : i64
          %192 = llvm.getelementptr %45[%191] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %159, %192 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %193 = llvm.add %60, %10 : i64
          %194 = llvm.mul %193, %17 : i64
          %195 = llvm.add %163, %194 : i64
          %196 = llvm.add %195, %61 : i64
          %197 = llvm.getelementptr %45[%196] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %162, %197 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %198 = llvm.add %61, %16 : i64
          llvm.br ^bb1(%198 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_57_embedded_elf_riscv_64_main_graph$async_dispatch_57_matmul_like_4x49x32x64_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_57_embedded_elf_riscv_64_main_graph$async_dispatch_57_matmul_like_4x49x32x64_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_57_embedded_elf_riscv_64_main_graph$async_dispatch_57_matmul_like_4x49x32x64_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c5342976_i32 = arith.constant 5342976 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_57_embedded_elf_riscv_64_main_graph$async_dispatch_57_matmul_like_4x49x32x64_f32_buffer = util.global.load immutable @main_graph$async_dispatch_57_embedded_elf_riscv_64_main_graph$async_dispatch_57_matmul_like_4x49x32x64_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_57::@embedded_elf_riscv_64::@main_graph$async_dispatch_57_matmul_like_4x49x32x64_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_57) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_57::@embedded_elf_riscv_64::@main_graph$async_dispatch_57_matmul_like_4x49x32x64_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c5342976_i32]) bindings([
      (%main_graph$async_dispatch_57_embedded_elf_riscv_64_main_graph$async_dispatch_57_matmul_like_4x49x32x64_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_57_embedded_elf_riscv_64_main_graph$async_dispatch_57_matmul_like_4x49x32x64_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_57_embedded_elf_riscv_64_main_graph$async_dispatch_57_matmul_like_4x49x32x64_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
