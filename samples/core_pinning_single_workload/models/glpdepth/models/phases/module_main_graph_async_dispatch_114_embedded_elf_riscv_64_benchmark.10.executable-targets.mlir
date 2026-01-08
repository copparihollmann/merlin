#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_114 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_114_mmt4d_23x7x160x7x32x1_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c161 = arith.constant 161 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c161, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_114_mmt4d_23x7x160x7x32x1_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xf32>
          %2 = llvm.mlir.constant(1568 : index) : i64
          %3 = llvm.mlir.constant(224 : index) : i64
          %4 = llvm.mlir.constant(5120 : index) : i64
          %5 = llvm.mlir.constant(32 : index) : i64
          %6 = llvm.mlir.constant(64 : index) : i64
          %7 = llvm.mlir.constant(true) : i1
          %8 = llvm.mlir.constant(1120 : index) : i64
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
          %21 = llvm.mlir.constant(160 : index) : i64
          %22 = llvm.mlir.constant(0 : index) : i64
          %23 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %24 = llvm.extractvalue %23[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %25 = llvm.load %24 : !llvm.ptr -> i32
          %26 = llvm.getelementptr %24[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %27 = llvm.load %26 : !llvm.ptr -> i32
          %28 = llvm.getelementptr %24[2] : (!llvm.ptr) -> !llvm.ptr, i32
          %29 = llvm.load %28 : !llvm.ptr -> i32
          %30 = llvm.zext %25 : i32 to i64
          %31 = llvm.zext %27 : i32 to i64
          %32 = llvm.zext %29 : i32 to i64
          %33 = llvm.extractvalue %23[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %34 = llvm.load %33 : !llvm.ptr -> !llvm.ptr
          %35 = llvm.mul %30, %9 : i64
          %36 = llvm.udiv %35, %10 : i64
          %37 = llvm.getelementptr %34[%36] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%37, %6 : !llvm.ptr, i64)] : i1
          %38 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %39 = llvm.extractvalue %38[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %40 = llvm.getelementptr %39[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %41 = llvm.load %40 : !llvm.ptr -> !llvm.ptr
          %42 = llvm.mul %31, %9 : i64
          %43 = llvm.udiv %42, %10 : i64
          %44 = llvm.getelementptr %41[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%44, %6 : !llvm.ptr, i64)] : i1
          %45 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %46 = llvm.extractvalue %45[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %47 = llvm.getelementptr %46[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %48 = llvm.load %47 : !llvm.ptr -> !llvm.ptr
          %49 = llvm.mul %32, %9 : i64
          %50 = llvm.udiv %49, %10 : i64
          %51 = llvm.getelementptr %48[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%51, %6 : !llvm.ptr, i64)] : i1
          %52 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %53 = llvm.extractvalue %52[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %54 = llvm.zext %53 : i32 to i64
          %55 = llvm.sdiv %54, %18 : i64
          %56 = llvm.mul %55, %18 : i64
          %57 = llvm.icmp "ne" %54, %56 : i64
          %58 = llvm.icmp "slt" %54, %22 : i64
          %59 = llvm.and %57, %58 : i1
          %60 = llvm.add %55, %12 : i64
          %61 = llvm.select %59, %60, %55 : i1, i64
          %62 = llvm.srem %54, %18 : i64
          %63 = llvm.icmp "slt" %62, %22 : i64
          %64 = llvm.add %62, %18 overflow<nsw> : i64
          %65 = llvm.select %63, %64, %62 : i1, i64
          llvm.br ^bb1(%22, %19 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb1(%66: i64, %67: !llvm.array<7 x vector<32xf32>>):  // 2 preds: ^bb0, ^bb2
          %68 = llvm.icmp "slt" %66, %21 : i64
          llvm.cond_br %68, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %69 = llvm.mul %65, %4 : i64
          %70 = llvm.mul %66, %5 : i64
          %71 = llvm.add %69, %70 : i64
          %72 = llvm.add %71, %22 : i64
          %73 = llvm.add %72, %22 : i64
          %74 = llvm.getelementptr %44[%73] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %75 = llvm.load %74 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %76 = llvm.mul %61, %8 overflow<nsw, nuw> : i64
          %77 = llvm.mul %66, %18 overflow<nsw, nuw> : i64
          %78 = llvm.add %76, %77 overflow<nsw, nuw> : i64
          %79 = llvm.add %78, %22 overflow<nsw, nuw> : i64
          %80 = llvm.add %79, %22 overflow<nsw, nuw> : i64
          %81 = llvm.getelementptr inbounds|nuw %37[%80] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %82 = llvm.load %81 : !llvm.ptr -> f32
          %83 = llvm.insertelement %82, %1[%0 : i32] : vector<32xf32>
          %84 = llvm.shufflevector %83, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %85 = llvm.extractvalue %67[0] : !llvm.array<7 x vector<32xf32>> 
          %86 = llvm.intr.fmuladd(%84, %75, %85) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %87 = llvm.add %78, %20 overflow<nsw, nuw> : i64
          %88 = llvm.add %87, %22 overflow<nsw, nuw> : i64
          %89 = llvm.getelementptr inbounds|nuw %37[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %90 = llvm.load %89 : !llvm.ptr -> f32
          %91 = llvm.insertelement %90, %1[%0 : i32] : vector<32xf32>
          %92 = llvm.shufflevector %91, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %93 = llvm.extractvalue %67[1] : !llvm.array<7 x vector<32xf32>> 
          %94 = llvm.intr.fmuladd(%92, %75, %93) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %95 = llvm.add %78, %17 overflow<nsw, nuw> : i64
          %96 = llvm.add %95, %22 overflow<nsw, nuw> : i64
          %97 = llvm.getelementptr inbounds|nuw %37[%96] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %98 = llvm.load %97 : !llvm.ptr -> f32
          %99 = llvm.insertelement %98, %1[%0 : i32] : vector<32xf32>
          %100 = llvm.shufflevector %99, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %101 = llvm.extractvalue %67[2] : !llvm.array<7 x vector<32xf32>> 
          %102 = llvm.intr.fmuladd(%100, %75, %101) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %103 = llvm.add %78, %16 overflow<nsw, nuw> : i64
          %104 = llvm.add %103, %22 overflow<nsw, nuw> : i64
          %105 = llvm.getelementptr inbounds|nuw %37[%104] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %106 = llvm.load %105 : !llvm.ptr -> f32
          %107 = llvm.insertelement %106, %1[%0 : i32] : vector<32xf32>
          %108 = llvm.shufflevector %107, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %109 = llvm.extractvalue %67[3] : !llvm.array<7 x vector<32xf32>> 
          %110 = llvm.intr.fmuladd(%108, %75, %109) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %111 = llvm.add %78, %15 overflow<nsw, nuw> : i64
          %112 = llvm.add %111, %22 overflow<nsw, nuw> : i64
          %113 = llvm.getelementptr inbounds|nuw %37[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %114 = llvm.load %113 : !llvm.ptr -> f32
          %115 = llvm.insertelement %114, %1[%0 : i32] : vector<32xf32>
          %116 = llvm.shufflevector %115, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %117 = llvm.extractvalue %67[4] : !llvm.array<7 x vector<32xf32>> 
          %118 = llvm.intr.fmuladd(%116, %75, %117) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %119 = llvm.add %78, %14 overflow<nsw, nuw> : i64
          %120 = llvm.add %119, %22 overflow<nsw, nuw> : i64
          %121 = llvm.getelementptr inbounds|nuw %37[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %122 = llvm.load %121 : !llvm.ptr -> f32
          %123 = llvm.insertelement %122, %1[%0 : i32] : vector<32xf32>
          %124 = llvm.shufflevector %123, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %125 = llvm.extractvalue %67[5] : !llvm.array<7 x vector<32xf32>> 
          %126 = llvm.intr.fmuladd(%124, %75, %125) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %127 = llvm.add %78, %13 overflow<nsw, nuw> : i64
          %128 = llvm.add %127, %22 overflow<nsw, nuw> : i64
          %129 = llvm.getelementptr inbounds|nuw %37[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %130 = llvm.load %129 : !llvm.ptr -> f32
          %131 = llvm.insertelement %130, %1[%0 : i32] : vector<32xf32>
          %132 = llvm.shufflevector %131, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %133 = llvm.extractvalue %67[6] : !llvm.array<7 x vector<32xf32>> 
          %134 = llvm.intr.fmuladd(%132, %75, %133) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %135 = llvm.insertvalue %86, %11[0] : !llvm.array<7 x vector<32xf32>> 
          %136 = llvm.insertvalue %94, %135[1] : !llvm.array<7 x vector<32xf32>> 
          %137 = llvm.insertvalue %102, %136[2] : !llvm.array<7 x vector<32xf32>> 
          %138 = llvm.insertvalue %110, %137[3] : !llvm.array<7 x vector<32xf32>> 
          %139 = llvm.insertvalue %118, %138[4] : !llvm.array<7 x vector<32xf32>> 
          %140 = llvm.insertvalue %126, %139[5] : !llvm.array<7 x vector<32xf32>> 
          %141 = llvm.insertvalue %134, %140[6] : !llvm.array<7 x vector<32xf32>> 
          %142 = llvm.add %66, %20 : i64
          llvm.br ^bb1(%142, %141 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb3:  // pred: ^bb1
          %143 = llvm.extractvalue %67[0] : !llvm.array<7 x vector<32xf32>> 
          %144 = llvm.mul %61, %2 : i64
          %145 = llvm.mul %65, %3 : i64
          %146 = llvm.add %144, %145 : i64
          %147 = llvm.mul %22, %5 : i64
          %148 = llvm.add %146, %147 : i64
          %149 = llvm.add %148, %22 : i64
          %150 = llvm.getelementptr %51[%149] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %143, %150 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %151 = llvm.extractvalue %67[1] : !llvm.array<7 x vector<32xf32>> 
          %152 = llvm.mul %20, %5 : i64
          %153 = llvm.add %146, %152 : i64
          %154 = llvm.add %153, %22 : i64
          %155 = llvm.getelementptr %51[%154] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %151, %155 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %156 = llvm.extractvalue %67[2] : !llvm.array<7 x vector<32xf32>> 
          %157 = llvm.mul %17, %5 : i64
          %158 = llvm.add %146, %157 : i64
          %159 = llvm.add %158, %22 : i64
          %160 = llvm.getelementptr %51[%159] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %156, %160 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %161 = llvm.extractvalue %67[3] : !llvm.array<7 x vector<32xf32>> 
          %162 = llvm.mul %16, %5 : i64
          %163 = llvm.add %146, %162 : i64
          %164 = llvm.add %163, %22 : i64
          %165 = llvm.getelementptr %51[%164] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %161, %165 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %166 = llvm.extractvalue %67[4] : !llvm.array<7 x vector<32xf32>> 
          %167 = llvm.mul %15, %5 : i64
          %168 = llvm.add %146, %167 : i64
          %169 = llvm.add %168, %22 : i64
          %170 = llvm.getelementptr %51[%169] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %166, %170 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %171 = llvm.extractvalue %67[5] : !llvm.array<7 x vector<32xf32>> 
          %172 = llvm.mul %14, %5 : i64
          %173 = llvm.add %146, %172 : i64
          %174 = llvm.add %173, %22 : i64
          %175 = llvm.getelementptr %51[%174] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %171, %175 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %176 = llvm.extractvalue %67[6] : !llvm.array<7 x vector<32xf32>> 
          %177 = llvm.mul %13, %5 : i64
          %178 = llvm.add %146, %177 : i64
          %179 = llvm.add %178, %22 : i64
          %180 = llvm.getelementptr %51[%179] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %176, %180 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_114_embedded_elf_riscv_64_main_graph$async_dispatch_114_mmt4d_23x7x160x7x32x1_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_114_embedded_elf_riscv_64_main_graph$async_dispatch_114_mmt4d_23x7x160x7x32x1_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_114_embedded_elf_riscv_64_main_graph$async_dispatch_114_mmt4d_23x7x160x7x32x1_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c748160_i32 = arith.constant 748160 : i32
    %c652288_i32 = arith.constant 652288 : i32
    %c1003520_i32 = arith.constant 1003520 : i32
    %c0 = arith.constant 0 : index
    %c14611584 = arith.constant 14611584 : index
    %c14611712 = arith.constant 14611712 : index
    %c32172032 = arith.constant 32172032 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_114_embedded_elf_riscv_64_main_graph$async_dispatch_114_mmt4d_23x7x160x7x32x1_f32_buffer = util.global.load immutable @main_graph$async_dispatch_114_embedded_elf_riscv_64_main_graph$async_dispatch_114_mmt4d_23x7x160x7x32x1_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_114::@embedded_elf_riscv_64::@main_graph$async_dispatch_114_mmt4d_23x7x160x7x32x1_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_114) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_114::@embedded_elf_riscv_64::@main_graph$async_dispatch_114_mmt4d_23x7x160x7x32x1_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c748160_i32, %c652288_i32, %c1003520_i32]) bindings([
      (%main_graph$async_dispatch_114_embedded_elf_riscv_64_main_graph$async_dispatch_114_mmt4d_23x7x160x7x32x1_f32_buffer : !hal.buffer)[%c0, %c14611584], 
      (%main_graph$async_dispatch_114_embedded_elf_riscv_64_main_graph$async_dispatch_114_mmt4d_23x7x160x7x32x1_f32_buffer : !hal.buffer)[%c14611712, %c32172032], 
      (%main_graph$async_dispatch_114_embedded_elf_riscv_64_main_graph$async_dispatch_114_mmt4d_23x7x160x7x32x1_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
