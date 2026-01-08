#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_10 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_10_mmt4d_7x98x32x7x32x1_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c49 = arith.constant 49 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c49, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_10_mmt4d_7x98x32x7x32x1_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xf32>
          %2 = llvm.mlir.constant(21952 : index) : i64
          %3 = llvm.mlir.constant(1024 : index) : i64
          %4 = llvm.mlir.constant(64 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(224 : index) : i64
          %7 = llvm.mlir.constant(8 : i64) : i64
          %8 = llvm.mlir.constant(32 : i64) : i64
          %9 = llvm.mlir.poison : !llvm.array<7 x vector<32xf32>>
          %10 = llvm.mlir.constant(-1 : index) : i64
          %11 = llvm.mlir.constant(6 : index) : i64
          %12 = llvm.mlir.constant(5 : index) : i64
          %13 = llvm.mlir.constant(4 : index) : i64
          %14 = llvm.mlir.constant(3 : index) : i64
          %15 = llvm.mlir.constant(2 : index) : i64
          %16 = llvm.mlir.constant(7 : index) : i64
          %17 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x32xf32>) : !llvm.array<7 x vector<32xf32>>
          %18 = llvm.mlir.constant(14 : index) : i64
          %19 = llvm.mlir.constant(1 : index) : i64
          %20 = llvm.mlir.constant(32 : index) : i64
          %21 = llvm.mlir.constant(0 : index) : i64
          %22 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %23 = llvm.extractvalue %22[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %24 = llvm.load %23 : !llvm.ptr -> i32
          %25 = llvm.getelementptr %23[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %26 = llvm.load %25 : !llvm.ptr -> i32
          %27 = llvm.getelementptr %23[2] : (!llvm.ptr) -> !llvm.ptr, i32
          %28 = llvm.load %27 : !llvm.ptr -> i32
          %29 = llvm.zext %24 : i32 to i64
          %30 = llvm.zext %26 : i32 to i64
          %31 = llvm.zext %28 : i32 to i64
          %32 = llvm.extractvalue %22[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %33 = llvm.load %32 : !llvm.ptr -> !llvm.ptr
          %34 = llvm.mul %29, %7 : i64
          %35 = llvm.udiv %34, %8 : i64
          %36 = llvm.getelementptr %33[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%36, %4 : !llvm.ptr, i64)] : i1
          %37 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %38 = llvm.extractvalue %37[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %39 = llvm.load %38 : !llvm.ptr -> !llvm.ptr
          %40 = llvm.mul %30, %7 : i64
          %41 = llvm.udiv %40, %8 : i64
          %42 = llvm.getelementptr %39[%41] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%42, %4 : !llvm.ptr, i64)] : i1
          %43 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %44 = llvm.extractvalue %43[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %45 = llvm.getelementptr %44[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %46 = llvm.load %45 : !llvm.ptr -> !llvm.ptr
          %47 = llvm.mul %31, %7 : i64
          %48 = llvm.udiv %47, %8 : i64
          %49 = llvm.getelementptr %46[%48] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%49, %4 : !llvm.ptr, i64)] : i1
          %50 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %51 = llvm.extractvalue %50[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %52 = llvm.zext %51 : i32 to i64
          %53 = llvm.sdiv %52, %16 : i64
          %54 = llvm.mul %53, %16 : i64
          %55 = llvm.icmp "ne" %52, %54 : i64
          %56 = llvm.icmp "slt" %52, %21 : i64
          %57 = llvm.and %55, %56 : i1
          %58 = llvm.add %53, %10 : i64
          %59 = llvm.select %57, %58, %53 : i1, i64
          %60 = llvm.srem %52, %16 : i64
          %61 = llvm.icmp "slt" %60, %21 : i64
          %62 = llvm.add %60, %16 overflow<nsw> : i64
          %63 = llvm.select %61, %62, %60 : i1, i64
          %64 = llvm.mul %63, %18 overflow<nsw> : i64
          llvm.br ^bb1(%21 : i64)
        ^bb1(%65: i64):  // 2 preds: ^bb0, ^bb5
          %66 = llvm.icmp "slt" %65, %18 : i64
          llvm.cond_br %66, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %67 = llvm.add %65, %64 : i64
          llvm.br ^bb3(%21, %17 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb3(%68: i64, %69: !llvm.array<7 x vector<32xf32>>):  // 2 preds: ^bb2, ^bb4
          %70 = llvm.icmp "slt" %68, %20 : i64
          llvm.cond_br %70, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %71 = llvm.mul %67, %3 : i64
          %72 = llvm.mul %68, %20 : i64
          %73 = llvm.add %71, %72 : i64
          %74 = llvm.add %73, %21 : i64
          %75 = llvm.add %74, %21 : i64
          %76 = llvm.getelementptr %42[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %77 = llvm.load %76 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %78 = llvm.mul %59, %6 overflow<nsw, nuw> : i64
          %79 = llvm.mul %68, %16 overflow<nsw, nuw> : i64
          %80 = llvm.add %78, %79 overflow<nsw, nuw> : i64
          %81 = llvm.add %80, %21 overflow<nsw, nuw> : i64
          %82 = llvm.add %81, %21 overflow<nsw, nuw> : i64
          %83 = llvm.getelementptr inbounds|nuw %36[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %84 = llvm.load %83 : !llvm.ptr -> f32
          %85 = llvm.insertelement %84, %1[%0 : i32] : vector<32xf32>
          %86 = llvm.shufflevector %85, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %87 = llvm.extractvalue %69[0] : !llvm.array<7 x vector<32xf32>> 
          %88 = llvm.intr.fmuladd(%86, %77, %87) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %89 = llvm.add %80, %19 overflow<nsw, nuw> : i64
          %90 = llvm.add %89, %21 overflow<nsw, nuw> : i64
          %91 = llvm.getelementptr inbounds|nuw %36[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %92 = llvm.load %91 : !llvm.ptr -> f32
          %93 = llvm.insertelement %92, %1[%0 : i32] : vector<32xf32>
          %94 = llvm.shufflevector %93, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %95 = llvm.extractvalue %69[1] : !llvm.array<7 x vector<32xf32>> 
          %96 = llvm.intr.fmuladd(%94, %77, %95) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %97 = llvm.add %80, %15 overflow<nsw, nuw> : i64
          %98 = llvm.add %97, %21 overflow<nsw, nuw> : i64
          %99 = llvm.getelementptr inbounds|nuw %36[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %100 = llvm.load %99 : !llvm.ptr -> f32
          %101 = llvm.insertelement %100, %1[%0 : i32] : vector<32xf32>
          %102 = llvm.shufflevector %101, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %103 = llvm.extractvalue %69[2] : !llvm.array<7 x vector<32xf32>> 
          %104 = llvm.intr.fmuladd(%102, %77, %103) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %105 = llvm.add %80, %14 overflow<nsw, nuw> : i64
          %106 = llvm.add %105, %21 overflow<nsw, nuw> : i64
          %107 = llvm.getelementptr inbounds|nuw %36[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %108 = llvm.load %107 : !llvm.ptr -> f32
          %109 = llvm.insertelement %108, %1[%0 : i32] : vector<32xf32>
          %110 = llvm.shufflevector %109, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %111 = llvm.extractvalue %69[3] : !llvm.array<7 x vector<32xf32>> 
          %112 = llvm.intr.fmuladd(%110, %77, %111) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %113 = llvm.add %80, %13 overflow<nsw, nuw> : i64
          %114 = llvm.add %113, %21 overflow<nsw, nuw> : i64
          %115 = llvm.getelementptr inbounds|nuw %36[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %116 = llvm.load %115 : !llvm.ptr -> f32
          %117 = llvm.insertelement %116, %1[%0 : i32] : vector<32xf32>
          %118 = llvm.shufflevector %117, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %119 = llvm.extractvalue %69[4] : !llvm.array<7 x vector<32xf32>> 
          %120 = llvm.intr.fmuladd(%118, %77, %119) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %121 = llvm.add %80, %12 overflow<nsw, nuw> : i64
          %122 = llvm.add %121, %21 overflow<nsw, nuw> : i64
          %123 = llvm.getelementptr inbounds|nuw %36[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %124 = llvm.load %123 : !llvm.ptr -> f32
          %125 = llvm.insertelement %124, %1[%0 : i32] : vector<32xf32>
          %126 = llvm.shufflevector %125, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %127 = llvm.extractvalue %69[5] : !llvm.array<7 x vector<32xf32>> 
          %128 = llvm.intr.fmuladd(%126, %77, %127) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %129 = llvm.add %80, %11 overflow<nsw, nuw> : i64
          %130 = llvm.add %129, %21 overflow<nsw, nuw> : i64
          %131 = llvm.getelementptr inbounds|nuw %36[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %132 = llvm.load %131 : !llvm.ptr -> f32
          %133 = llvm.insertelement %132, %1[%0 : i32] : vector<32xf32>
          %134 = llvm.shufflevector %133, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %135 = llvm.extractvalue %69[6] : !llvm.array<7 x vector<32xf32>> 
          %136 = llvm.intr.fmuladd(%134, %77, %135) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %137 = llvm.insertvalue %88, %9[0] : !llvm.array<7 x vector<32xf32>> 
          %138 = llvm.insertvalue %96, %137[1] : !llvm.array<7 x vector<32xf32>> 
          %139 = llvm.insertvalue %104, %138[2] : !llvm.array<7 x vector<32xf32>> 
          %140 = llvm.insertvalue %112, %139[3] : !llvm.array<7 x vector<32xf32>> 
          %141 = llvm.insertvalue %120, %140[4] : !llvm.array<7 x vector<32xf32>> 
          %142 = llvm.insertvalue %128, %141[5] : !llvm.array<7 x vector<32xf32>> 
          %143 = llvm.insertvalue %136, %142[6] : !llvm.array<7 x vector<32xf32>> 
          %144 = llvm.add %68, %19 : i64
          llvm.br ^bb3(%144, %143 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb5:  // pred: ^bb3
          %145 = llvm.extractvalue %69[0] : !llvm.array<7 x vector<32xf32>> 
          %146 = llvm.mul %59, %2 : i64
          %147 = llvm.mul %67, %6 : i64
          %148 = llvm.add %146, %147 : i64
          %149 = llvm.mul %21, %20 : i64
          %150 = llvm.add %148, %149 : i64
          %151 = llvm.add %150, %21 : i64
          %152 = llvm.getelementptr %49[%151] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %145, %152 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %153 = llvm.extractvalue %69[1] : !llvm.array<7 x vector<32xf32>> 
          %154 = llvm.mul %19, %20 : i64
          %155 = llvm.add %148, %154 : i64
          %156 = llvm.add %155, %21 : i64
          %157 = llvm.getelementptr %49[%156] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %153, %157 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %158 = llvm.extractvalue %69[2] : !llvm.array<7 x vector<32xf32>> 
          %159 = llvm.mul %15, %20 : i64
          %160 = llvm.add %148, %159 : i64
          %161 = llvm.add %160, %21 : i64
          %162 = llvm.getelementptr %49[%161] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %158, %162 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %163 = llvm.extractvalue %69[3] : !llvm.array<7 x vector<32xf32>> 
          %164 = llvm.mul %14, %20 : i64
          %165 = llvm.add %148, %164 : i64
          %166 = llvm.add %165, %21 : i64
          %167 = llvm.getelementptr %49[%166] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %163, %167 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %168 = llvm.extractvalue %69[4] : !llvm.array<7 x vector<32xf32>> 
          %169 = llvm.mul %13, %20 : i64
          %170 = llvm.add %148, %169 : i64
          %171 = llvm.add %170, %21 : i64
          %172 = llvm.getelementptr %49[%171] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %168, %172 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %173 = llvm.extractvalue %69[5] : !llvm.array<7 x vector<32xf32>> 
          %174 = llvm.mul %12, %20 : i64
          %175 = llvm.add %148, %174 : i64
          %176 = llvm.add %175, %21 : i64
          %177 = llvm.getelementptr %49[%176] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %173, %177 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %178 = llvm.extractvalue %69[6] : !llvm.array<7 x vector<32xf32>> 
          %179 = llvm.mul %11, %20 : i64
          %180 = llvm.add %148, %179 : i64
          %181 = llvm.add %180, %21 : i64
          %182 = llvm.getelementptr %49[%181] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %178, %182 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %183 = llvm.add %65, %19 : i64
          llvm.br ^bb1(%183 : i64)
        ^bb6:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_10_embedded_elf_riscv_64_main_graph$async_dispatch_10_mmt4d_7x98x32x7x32x1_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_10_embedded_elf_riscv_64_main_graph$async_dispatch_10_mmt4d_7x98x32x7x32x1_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_10_embedded_elf_riscv_64_main_graph$async_dispatch_10_mmt4d_7x98x32x7x32x1_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c401408_i32 = arith.constant 401408 : i32
    %c802816_i32 = arith.constant 802816 : i32
    %c1204224_i32 = arith.constant 1204224 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_10_embedded_elf_riscv_64_main_graph$async_dispatch_10_mmt4d_7x98x32x7x32x1_f32_buffer = util.global.load immutable @main_graph$async_dispatch_10_embedded_elf_riscv_64_main_graph$async_dispatch_10_mmt4d_7x98x32x7x32x1_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_10::@embedded_elf_riscv_64::@main_graph$async_dispatch_10_mmt4d_7x98x32x7x32x1_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_10) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_10::@embedded_elf_riscv_64::@main_graph$async_dispatch_10_mmt4d_7x98x32x7x32x1_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c401408_i32, %c802816_i32, %c1204224_i32]) bindings([
      (%main_graph$async_dispatch_10_embedded_elf_riscv_64_main_graph$async_dispatch_10_mmt4d_7x98x32x7x32x1_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_10_embedded_elf_riscv_64_main_graph$async_dispatch_10_mmt4d_7x98x32x7x32x1_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
