#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_64 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_64_batch_mmt4d_2x5x25x49x7x32x1_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c50 = arith.constant 50 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c50, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_64_batch_mmt4d_2x5x25x49x7x32x1_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xf32>
          %2 = llvm.mlir.constant(28000 : index) : i64
          %3 = llvm.mlir.constant(5600 : index) : i64
          %4 = llvm.mlir.constant(224 : index) : i64
          %5 = llvm.mlir.constant(39200 : index) : i64
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
          %20 = llvm.mlir.constant(2 : index) : i64
          %21 = llvm.mlir.constant(25 : index) : i64
          %22 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x32xf32>) : !llvm.array<7 x vector<32xf32>>
          %23 = llvm.mlir.constant(5 : index) : i64
          %24 = llvm.mlir.constant(1 : index) : i64
          %25 = llvm.mlir.constant(49 : index) : i64
          %26 = llvm.mlir.constant(0 : index) : i64
          %27 = llvm.mlir.constant(631296 : index) : i64
          %28 = llvm.mlir.constant(1310848 : index) : i64
          %29 = llvm.mlir.constant(401408 : index) : i64
          %30 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %31 = llvm.extractvalue %30[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %32 = llvm.load %31 : !llvm.ptr -> !llvm.ptr
          %33 = llvm.mul %27, %13 : i64
          %34 = llvm.udiv %33, %14 : i64
          %35 = llvm.getelementptr %32[%34] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %9 ["align"(%35, %8 : !llvm.ptr, i64)] : i1
          %36 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %37 = llvm.extractvalue %36[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %38 = llvm.load %37 : !llvm.ptr -> !llvm.ptr
          %39 = llvm.mul %28, %13 : i64
          %40 = llvm.udiv %39, %14 : i64
          %41 = llvm.getelementptr %38[%40] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %9 ["align"(%41, %8 : !llvm.ptr, i64)] : i1
          %42 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %43 = llvm.extractvalue %42[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %44 = llvm.getelementptr %43[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %45 = llvm.load %44 : !llvm.ptr -> !llvm.ptr
          %46 = llvm.mul %29, %13 : i64
          %47 = llvm.udiv %46, %14 : i64
          %48 = llvm.getelementptr %45[%47] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %9 ["align"(%48, %8 : !llvm.ptr, i64)] : i1
          %49 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %50 = llvm.extractvalue %49[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %51 = llvm.zext %50 : i32 to i64
          %52 = llvm.sdiv %51, %21 : i64
          %53 = llvm.mul %52, %21 : i64
          %54 = llvm.icmp "ne" %51, %53 : i64
          %55 = llvm.icmp "slt" %51, %26 : i64
          %56 = llvm.and %54, %55 : i1
          %57 = llvm.add %52, %16 : i64
          %58 = llvm.select %56, %57, %52 : i1, i64
          %59 = llvm.srem %51, %21 : i64
          %60 = llvm.icmp "slt" %59, %26 : i64
          %61 = llvm.add %59, %21 overflow<nsw> : i64
          %62 = llvm.select %60, %61, %59 : i1, i64
          %63 = llvm.sdiv %62, %23 : i64
          %64 = llvm.srem %51, %23 : i64
          %65 = llvm.icmp "slt" %64, %26 : i64
          %66 = llvm.add %64, %23 overflow<nsw> : i64
          %67 = llvm.select %65, %66, %64 : i1, i64
          %68 = llvm.mul %67, %23 overflow<nsw> : i64
          llvm.br ^bb1(%26 : i64)
        ^bb1(%69: i64):  // 2 preds: ^bb0, ^bb5
          %70 = llvm.icmp "slt" %69, %23 : i64
          llvm.cond_br %70, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %71 = llvm.add %69, %68 : i64
          llvm.br ^bb3(%26, %22 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb3(%72: i64, %73: !llvm.array<7 x vector<32xf32>>):  // 2 preds: ^bb2, ^bb4
          %74 = llvm.icmp "slt" %72, %25 : i64
          llvm.cond_br %74, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %75 = llvm.mul %58, %5 : i64
          %76 = llvm.mul %71, %6 : i64
          %77 = llvm.add %75, %76 : i64
          %78 = llvm.mul %72, %7 : i64
          %79 = llvm.add %77, %78 : i64
          %80 = llvm.add %79, %26 : i64
          %81 = llvm.add %80, %26 : i64
          %82 = llvm.getelementptr %41[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %83 = llvm.load %82 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %84 = llvm.mul %58, %10 overflow<nsw, nuw> : i64
          %85 = llvm.mul %63, %11 overflow<nsw, nuw> : i64
          %86 = llvm.add %84, %85 overflow<nsw, nuw> : i64
          %87 = llvm.mul %72, %12 overflow<nsw, nuw> : i64
          %88 = llvm.add %86, %87 overflow<nsw, nuw> : i64
          %89 = llvm.add %88, %26 overflow<nsw, nuw> : i64
          %90 = llvm.add %89, %26 overflow<nsw, nuw> : i64
          %91 = llvm.getelementptr inbounds|nuw %35[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %92 = llvm.load %91 : !llvm.ptr -> f32
          %93 = llvm.insertelement %92, %1[%0 : i32] : vector<32xf32>
          %94 = llvm.shufflevector %93, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %95 = llvm.extractvalue %73[0] : !llvm.array<7 x vector<32xf32>> 
          %96 = llvm.intr.fmuladd(%94, %83, %95) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %97 = llvm.add %88, %24 overflow<nsw, nuw> : i64
          %98 = llvm.add %97, %26 overflow<nsw, nuw> : i64
          %99 = llvm.getelementptr inbounds|nuw %35[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %100 = llvm.load %99 : !llvm.ptr -> f32
          %101 = llvm.insertelement %100, %1[%0 : i32] : vector<32xf32>
          %102 = llvm.shufflevector %101, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %103 = llvm.extractvalue %73[1] : !llvm.array<7 x vector<32xf32>> 
          %104 = llvm.intr.fmuladd(%102, %83, %103) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %105 = llvm.add %88, %20 overflow<nsw, nuw> : i64
          %106 = llvm.add %105, %26 overflow<nsw, nuw> : i64
          %107 = llvm.getelementptr inbounds|nuw %35[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %108 = llvm.load %107 : !llvm.ptr -> f32
          %109 = llvm.insertelement %108, %1[%0 : i32] : vector<32xf32>
          %110 = llvm.shufflevector %109, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %111 = llvm.extractvalue %73[2] : !llvm.array<7 x vector<32xf32>> 
          %112 = llvm.intr.fmuladd(%110, %83, %111) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %113 = llvm.add %88, %19 overflow<nsw, nuw> : i64
          %114 = llvm.add %113, %26 overflow<nsw, nuw> : i64
          %115 = llvm.getelementptr inbounds|nuw %35[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %116 = llvm.load %115 : !llvm.ptr -> f32
          %117 = llvm.insertelement %116, %1[%0 : i32] : vector<32xf32>
          %118 = llvm.shufflevector %117, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %119 = llvm.extractvalue %73[3] : !llvm.array<7 x vector<32xf32>> 
          %120 = llvm.intr.fmuladd(%118, %83, %119) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %121 = llvm.add %88, %18 overflow<nsw, nuw> : i64
          %122 = llvm.add %121, %26 overflow<nsw, nuw> : i64
          %123 = llvm.getelementptr inbounds|nuw %35[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %124 = llvm.load %123 : !llvm.ptr -> f32
          %125 = llvm.insertelement %124, %1[%0 : i32] : vector<32xf32>
          %126 = llvm.shufflevector %125, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %127 = llvm.extractvalue %73[4] : !llvm.array<7 x vector<32xf32>> 
          %128 = llvm.intr.fmuladd(%126, %83, %127) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %129 = llvm.add %88, %23 overflow<nsw, nuw> : i64
          %130 = llvm.add %129, %26 overflow<nsw, nuw> : i64
          %131 = llvm.getelementptr inbounds|nuw %35[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %132 = llvm.load %131 : !llvm.ptr -> f32
          %133 = llvm.insertelement %132, %1[%0 : i32] : vector<32xf32>
          %134 = llvm.shufflevector %133, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %135 = llvm.extractvalue %73[5] : !llvm.array<7 x vector<32xf32>> 
          %136 = llvm.intr.fmuladd(%134, %83, %135) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %137 = llvm.add %88, %17 overflow<nsw, nuw> : i64
          %138 = llvm.add %137, %26 overflow<nsw, nuw> : i64
          %139 = llvm.getelementptr inbounds|nuw %35[%138] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %140 = llvm.load %139 : !llvm.ptr -> f32
          %141 = llvm.insertelement %140, %1[%0 : i32] : vector<32xf32>
          %142 = llvm.shufflevector %141, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %143 = llvm.extractvalue %73[6] : !llvm.array<7 x vector<32xf32>> 
          %144 = llvm.intr.fmuladd(%142, %83, %143) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %145 = llvm.insertvalue %96, %15[0] : !llvm.array<7 x vector<32xf32>> 
          %146 = llvm.insertvalue %104, %145[1] : !llvm.array<7 x vector<32xf32>> 
          %147 = llvm.insertvalue %112, %146[2] : !llvm.array<7 x vector<32xf32>> 
          %148 = llvm.insertvalue %120, %147[3] : !llvm.array<7 x vector<32xf32>> 
          %149 = llvm.insertvalue %128, %148[4] : !llvm.array<7 x vector<32xf32>> 
          %150 = llvm.insertvalue %136, %149[5] : !llvm.array<7 x vector<32xf32>> 
          %151 = llvm.insertvalue %144, %150[6] : !llvm.array<7 x vector<32xf32>> 
          %152 = llvm.add %72, %24 : i64
          llvm.br ^bb3(%152, %151 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb5:  // pred: ^bb3
          %153 = llvm.extractvalue %73[0] : !llvm.array<7 x vector<32xf32>> 
          %154 = llvm.mul %58, %2 : i64
          %155 = llvm.mul %63, %3 : i64
          %156 = llvm.add %154, %155 : i64
          %157 = llvm.mul %71, %4 : i64
          %158 = llvm.add %156, %157 : i64
          %159 = llvm.mul %26, %7 : i64
          %160 = llvm.add %158, %159 : i64
          %161 = llvm.add %160, %26 : i64
          %162 = llvm.getelementptr %48[%161] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %153, %162 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %163 = llvm.extractvalue %73[1] : !llvm.array<7 x vector<32xf32>> 
          %164 = llvm.mul %24, %7 : i64
          %165 = llvm.add %158, %164 : i64
          %166 = llvm.add %165, %26 : i64
          %167 = llvm.getelementptr %48[%166] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %163, %167 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %168 = llvm.extractvalue %73[2] : !llvm.array<7 x vector<32xf32>> 
          %169 = llvm.mul %20, %7 : i64
          %170 = llvm.add %158, %169 : i64
          %171 = llvm.add %170, %26 : i64
          %172 = llvm.getelementptr %48[%171] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %168, %172 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %173 = llvm.extractvalue %73[3] : !llvm.array<7 x vector<32xf32>> 
          %174 = llvm.mul %19, %7 : i64
          %175 = llvm.add %158, %174 : i64
          %176 = llvm.add %175, %26 : i64
          %177 = llvm.getelementptr %48[%176] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %173, %177 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %178 = llvm.extractvalue %73[4] : !llvm.array<7 x vector<32xf32>> 
          %179 = llvm.mul %18, %7 : i64
          %180 = llvm.add %158, %179 : i64
          %181 = llvm.add %180, %26 : i64
          %182 = llvm.getelementptr %48[%181] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %178, %182 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %183 = llvm.extractvalue %73[5] : !llvm.array<7 x vector<32xf32>> 
          %184 = llvm.mul %23, %7 : i64
          %185 = llvm.add %158, %184 : i64
          %186 = llvm.add %185, %26 : i64
          %187 = llvm.getelementptr %48[%186] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %183, %187 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %188 = llvm.extractvalue %73[6] : !llvm.array<7 x vector<32xf32>> 
          %189 = llvm.mul %17, %7 : i64
          %190 = llvm.add %158, %189 : i64
          %191 = llvm.add %190, %26 : i64
          %192 = llvm.getelementptr %48[%191] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %188, %192 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %193 = llvm.add %69, %24 : i64
          llvm.br ^bb1(%193 : i64)
        ^bb6:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_64_embedded_elf_riscv_64_main_graph$async_dispatch_64_batch_mmt4d_2x5x25x49x7x32x1_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_64_embedded_elf_riscv_64_main_graph$async_dispatch_64_batch_mmt4d_2x5x25x49x7x32x1_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_64_embedded_elf_riscv_64_main_graph$async_dispatch_64_batch_mmt4d_2x5x25x49x7x32x1_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_64_embedded_elf_riscv_64_main_graph$async_dispatch_64_batch_mmt4d_2x5x25x49x7x32x1_f32_buffer = util.global.load immutable @main_graph$async_dispatch_64_embedded_elf_riscv_64_main_graph$async_dispatch_64_batch_mmt4d_2x5x25x49x7x32x1_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_64::@embedded_elf_riscv_64::@main_graph$async_dispatch_64_batch_mmt4d_2x5x25x49x7x32x1_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_64) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_64::@embedded_elf_riscv_64::@main_graph$async_dispatch_64_batch_mmt4d_2x5x25x49x7x32x1_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_64_embedded_elf_riscv_64_main_graph$async_dispatch_64_batch_mmt4d_2x5x25x49x7x32x1_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_64_embedded_elf_riscv_64_main_graph$async_dispatch_64_batch_mmt4d_2x5x25x49x7x32x1_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
