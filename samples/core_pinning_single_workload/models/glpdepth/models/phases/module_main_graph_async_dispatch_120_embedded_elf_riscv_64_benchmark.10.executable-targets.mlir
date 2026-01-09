#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_120 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_120_mmt4d_23x7x640x7x32x1_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c161 = arith.constant 161 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c161, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_120_mmt4d_23x7x640x7x32x1_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xf32>
          %2 = llvm.mlir.constant(1568 : index) : i64
          %3 = llvm.mlir.constant(224 : index) : i64
          %4 = llvm.mlir.constant(20480 : index) : i64
          %5 = llvm.mlir.constant(32 : index) : i64
          %6 = llvm.mlir.constant(64 : index) : i64
          %7 = llvm.mlir.constant(true) : i1
          %8 = llvm.mlir.constant(4480 : index) : i64
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
          %20 = llvm.mlir.constant(1 : index) : i64
          %21 = llvm.mlir.constant(640 : index) : i64
          %22 = llvm.mlir.constant(0 : index) : i64
          %23 = llvm.mlir.constant(1003520 : index) : i64
          %24 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %25 = llvm.extractvalue %24[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %26 = llvm.load %25 : !llvm.ptr -> i32
          %27 = llvm.getelementptr %25[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %28 = llvm.load %27 : !llvm.ptr -> i32
          %29 = llvm.zext %26 : i32 to i64
          %30 = llvm.zext %28 : i32 to i64
          %31 = llvm.extractvalue %24[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %32 = llvm.load %31 : !llvm.ptr -> !llvm.ptr
          %33 = llvm.mul %29, %9 : i64
          %34 = llvm.udiv %33, %10 : i64
          %35 = llvm.getelementptr %32[%34] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%35, %6 : !llvm.ptr, i64)] : i1
          %36 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %37 = llvm.extractvalue %36[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %38 = llvm.getelementptr %37[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %39 = llvm.load %38 : !llvm.ptr -> !llvm.ptr
          %40 = llvm.mul %23, %9 : i64
          %41 = llvm.udiv %40, %10 : i64
          %42 = llvm.getelementptr %39[%41] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%42, %6 : !llvm.ptr, i64)] : i1
          %43 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %44 = llvm.extractvalue %43[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %45 = llvm.getelementptr %44[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %46 = llvm.load %45 : !llvm.ptr -> !llvm.ptr
          %47 = llvm.mul %30, %9 : i64
          %48 = llvm.udiv %47, %10 : i64
          %49 = llvm.getelementptr %46[%48] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%49, %6 : !llvm.ptr, i64)] : i1
          %50 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %51 = llvm.extractvalue %50[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %52 = llvm.zext %51 : i32 to i64
          %53 = llvm.sdiv %52, %18 : i64
          %54 = llvm.mul %53, %18 : i64
          %55 = llvm.icmp "ne" %52, %54 : i64
          %56 = llvm.icmp "slt" %52, %22 : i64
          %57 = llvm.and %55, %56 : i1
          %58 = llvm.add %53, %12 : i64
          %59 = llvm.select %57, %58, %53 : i1, i64
          %60 = llvm.srem %52, %18 : i64
          %61 = llvm.icmp "slt" %60, %22 : i64
          %62 = llvm.add %60, %18 overflow<nsw> : i64
          %63 = llvm.select %61, %62, %60 : i1, i64
          llvm.br ^bb1(%22, %19 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb1(%64: i64, %65: !llvm.array<7 x vector<32xf32>>):  // 2 preds: ^bb0, ^bb2
          %66 = llvm.icmp "slt" %64, %21 : i64
          llvm.cond_br %66, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %67 = llvm.mul %63, %4 : i64
          %68 = llvm.mul %64, %5 : i64
          %69 = llvm.add %67, %68 : i64
          %70 = llvm.add %69, %22 : i64
          %71 = llvm.add %70, %22 : i64
          %72 = llvm.getelementptr %42[%71] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %73 = llvm.load %72 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %74 = llvm.mul %59, %8 overflow<nsw, nuw> : i64
          %75 = llvm.mul %64, %18 overflow<nsw, nuw> : i64
          %76 = llvm.add %74, %75 overflow<nsw, nuw> : i64
          %77 = llvm.add %76, %22 overflow<nsw, nuw> : i64
          %78 = llvm.add %77, %22 overflow<nsw, nuw> : i64
          %79 = llvm.getelementptr inbounds|nuw %35[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %80 = llvm.load %79 : !llvm.ptr -> f32
          %81 = llvm.insertelement %80, %1[%0 : i32] : vector<32xf32>
          %82 = llvm.shufflevector %81, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %83 = llvm.extractvalue %65[0] : !llvm.array<7 x vector<32xf32>> 
          %84 = llvm.intr.fmuladd(%82, %73, %83) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %85 = llvm.add %76, %20 overflow<nsw, nuw> : i64
          %86 = llvm.add %85, %22 overflow<nsw, nuw> : i64
          %87 = llvm.getelementptr inbounds|nuw %35[%86] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %88 = llvm.load %87 : !llvm.ptr -> f32
          %89 = llvm.insertelement %88, %1[%0 : i32] : vector<32xf32>
          %90 = llvm.shufflevector %89, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %91 = llvm.extractvalue %65[1] : !llvm.array<7 x vector<32xf32>> 
          %92 = llvm.intr.fmuladd(%90, %73, %91) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %93 = llvm.add %76, %17 overflow<nsw, nuw> : i64
          %94 = llvm.add %93, %22 overflow<nsw, nuw> : i64
          %95 = llvm.getelementptr inbounds|nuw %35[%94] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %96 = llvm.load %95 : !llvm.ptr -> f32
          %97 = llvm.insertelement %96, %1[%0 : i32] : vector<32xf32>
          %98 = llvm.shufflevector %97, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %99 = llvm.extractvalue %65[2] : !llvm.array<7 x vector<32xf32>> 
          %100 = llvm.intr.fmuladd(%98, %73, %99) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %101 = llvm.add %76, %16 overflow<nsw, nuw> : i64
          %102 = llvm.add %101, %22 overflow<nsw, nuw> : i64
          %103 = llvm.getelementptr inbounds|nuw %35[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %104 = llvm.load %103 : !llvm.ptr -> f32
          %105 = llvm.insertelement %104, %1[%0 : i32] : vector<32xf32>
          %106 = llvm.shufflevector %105, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %107 = llvm.extractvalue %65[3] : !llvm.array<7 x vector<32xf32>> 
          %108 = llvm.intr.fmuladd(%106, %73, %107) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %109 = llvm.add %76, %15 overflow<nsw, nuw> : i64
          %110 = llvm.add %109, %22 overflow<nsw, nuw> : i64
          %111 = llvm.getelementptr inbounds|nuw %35[%110] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %112 = llvm.load %111 : !llvm.ptr -> f32
          %113 = llvm.insertelement %112, %1[%0 : i32] : vector<32xf32>
          %114 = llvm.shufflevector %113, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %115 = llvm.extractvalue %65[4] : !llvm.array<7 x vector<32xf32>> 
          %116 = llvm.intr.fmuladd(%114, %73, %115) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %117 = llvm.add %76, %14 overflow<nsw, nuw> : i64
          %118 = llvm.add %117, %22 overflow<nsw, nuw> : i64
          %119 = llvm.getelementptr inbounds|nuw %35[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %120 = llvm.load %119 : !llvm.ptr -> f32
          %121 = llvm.insertelement %120, %1[%0 : i32] : vector<32xf32>
          %122 = llvm.shufflevector %121, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %123 = llvm.extractvalue %65[5] : !llvm.array<7 x vector<32xf32>> 
          %124 = llvm.intr.fmuladd(%122, %73, %123) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %125 = llvm.add %76, %13 overflow<nsw, nuw> : i64
          %126 = llvm.add %125, %22 overflow<nsw, nuw> : i64
          %127 = llvm.getelementptr inbounds|nuw %35[%126] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %128 = llvm.load %127 : !llvm.ptr -> f32
          %129 = llvm.insertelement %128, %1[%0 : i32] : vector<32xf32>
          %130 = llvm.shufflevector %129, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %131 = llvm.extractvalue %65[6] : !llvm.array<7 x vector<32xf32>> 
          %132 = llvm.intr.fmuladd(%130, %73, %131) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %133 = llvm.insertvalue %84, %11[0] : !llvm.array<7 x vector<32xf32>> 
          %134 = llvm.insertvalue %92, %133[1] : !llvm.array<7 x vector<32xf32>> 
          %135 = llvm.insertvalue %100, %134[2] : !llvm.array<7 x vector<32xf32>> 
          %136 = llvm.insertvalue %108, %135[3] : !llvm.array<7 x vector<32xf32>> 
          %137 = llvm.insertvalue %116, %136[4] : !llvm.array<7 x vector<32xf32>> 
          %138 = llvm.insertvalue %124, %137[5] : !llvm.array<7 x vector<32xf32>> 
          %139 = llvm.insertvalue %132, %138[6] : !llvm.array<7 x vector<32xf32>> 
          %140 = llvm.add %64, %20 : i64
          llvm.br ^bb1(%140, %139 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb3:  // pred: ^bb1
          %141 = llvm.extractvalue %65[0] : !llvm.array<7 x vector<32xf32>> 
          %142 = llvm.mul %59, %2 : i64
          %143 = llvm.mul %63, %3 : i64
          %144 = llvm.add %142, %143 : i64
          %145 = llvm.mul %22, %5 : i64
          %146 = llvm.add %144, %145 : i64
          %147 = llvm.add %146, %22 : i64
          %148 = llvm.getelementptr %49[%147] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %141, %148 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %149 = llvm.extractvalue %65[1] : !llvm.array<7 x vector<32xf32>> 
          %150 = llvm.mul %20, %5 : i64
          %151 = llvm.add %144, %150 : i64
          %152 = llvm.add %151, %22 : i64
          %153 = llvm.getelementptr %49[%152] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %149, %153 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %154 = llvm.extractvalue %65[2] : !llvm.array<7 x vector<32xf32>> 
          %155 = llvm.mul %17, %5 : i64
          %156 = llvm.add %144, %155 : i64
          %157 = llvm.add %156, %22 : i64
          %158 = llvm.getelementptr %49[%157] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %154, %158 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %159 = llvm.extractvalue %65[3] : !llvm.array<7 x vector<32xf32>> 
          %160 = llvm.mul %16, %5 : i64
          %161 = llvm.add %144, %160 : i64
          %162 = llvm.add %161, %22 : i64
          %163 = llvm.getelementptr %49[%162] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %159, %163 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %164 = llvm.extractvalue %65[4] : !llvm.array<7 x vector<32xf32>> 
          %165 = llvm.mul %15, %5 : i64
          %166 = llvm.add %144, %165 : i64
          %167 = llvm.add %166, %22 : i64
          %168 = llvm.getelementptr %49[%167] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %164, %168 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %169 = llvm.extractvalue %65[5] : !llvm.array<7 x vector<32xf32>> 
          %170 = llvm.mul %14, %5 : i64
          %171 = llvm.add %144, %170 : i64
          %172 = llvm.add %171, %22 : i64
          %173 = llvm.getelementptr %49[%172] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %169, %173 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %174 = llvm.extractvalue %65[6] : !llvm.array<7 x vector<32xf32>> 
          %175 = llvm.mul %13, %5 : i64
          %176 = llvm.add %144, %175 : i64
          %177 = llvm.add %176, %22 : i64
          %178 = llvm.getelementptr %49[%177] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %174, %178 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_120_embedded_elf_riscv_64_main_graph$async_dispatch_120_mmt4d_23x7x640x7x32x1_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_120_embedded_elf_riscv_64_main_graph$async_dispatch_120_mmt4d_23x7x640x7x32x1_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_120_embedded_elf_riscv_64_main_graph$async_dispatch_120_mmt4d_23x7x640x7x32x1_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c851200_i32 = arith.constant 851200 : i32
    %c401408_i32 = arith.constant 401408 : i32
    %c0 = arith.constant 0 : index
    %c14611584 = arith.constant 14611584 : index
    %c14611712 = arith.constant 14611712 : index
    %c32172032 = arith.constant 32172032 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_120_embedded_elf_riscv_64_main_graph$async_dispatch_120_mmt4d_23x7x640x7x32x1_f32_buffer = util.global.load immutable @main_graph$async_dispatch_120_embedded_elf_riscv_64_main_graph$async_dispatch_120_mmt4d_23x7x640x7x32x1_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_120::@embedded_elf_riscv_64::@main_graph$async_dispatch_120_mmt4d_23x7x640x7x32x1_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_120) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_120::@embedded_elf_riscv_64::@main_graph$async_dispatch_120_mmt4d_23x7x640x7x32x1_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c851200_i32, %c401408_i32]) bindings([
      (%main_graph$async_dispatch_120_embedded_elf_riscv_64_main_graph$async_dispatch_120_mmt4d_23x7x640x7x32x1_f32_buffer : !hal.buffer)[%c0, %c14611584], 
      (%main_graph$async_dispatch_120_embedded_elf_riscv_64_main_graph$async_dispatch_120_mmt4d_23x7x640x7x32x1_f32_buffer : !hal.buffer)[%c14611712, %c32172032], 
      (%main_graph$async_dispatch_120_embedded_elf_riscv_64_main_graph$async_dispatch_120_mmt4d_23x7x640x7x32x1_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
