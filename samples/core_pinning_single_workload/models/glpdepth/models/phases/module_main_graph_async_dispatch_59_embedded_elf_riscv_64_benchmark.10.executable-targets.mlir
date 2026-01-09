#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_59 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_59_batch_mmt4d_2x7x25x32x7x32x1_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c70 = arith.constant 70 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c70, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_59_batch_mmt4d_2x7x25x32x7x32x1_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xf32>
          %2 = llvm.mlir.constant(39200 : index) : i64
          %3 = llvm.mlir.constant(5600 : index) : i64
          %4 = llvm.mlir.constant(25600 : index) : i64
          %5 = llvm.mlir.constant(1024 : index) : i64
          %6 = llvm.mlir.constant(64 : index) : i64
          %7 = llvm.mlir.constant(true) : i1
          %8 = llvm.mlir.constant(1568 : index) : i64
          %9 = llvm.mlir.constant(224 : index) : i64
          %10 = llvm.mlir.constant(7 : index) : i64
          %11 = llvm.mlir.constant(8 : i64) : i64
          %12 = llvm.mlir.constant(32 : i64) : i64
          %13 = llvm.mlir.poison : !llvm.array<7 x vector<32xf32>>
          %14 = llvm.mlir.constant(-1 : index) : i64
          %15 = llvm.mlir.constant(6 : index) : i64
          %16 = llvm.mlir.constant(4 : index) : i64
          %17 = llvm.mlir.constant(3 : index) : i64
          %18 = llvm.mlir.constant(2 : index) : i64
          %19 = llvm.mlir.constant(35 : index) : i64
          %20 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x32xf32>) : !llvm.array<7 x vector<32xf32>>
          %21 = llvm.mlir.constant(5 : index) : i64
          %22 = llvm.mlir.constant(1 : index) : i64
          %23 = llvm.mlir.constant(32 : index) : i64
          %24 = llvm.mlir.constant(0 : index) : i64
          %25 = llvm.mlir.constant(631296 : index) : i64
          %26 = llvm.mlir.constant(401408 : index) : i64
          %27 = llvm.mlir.constant(1003520 : index) : i64
          %28 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %29 = llvm.extractvalue %28[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %30 = llvm.load %29 : !llvm.ptr -> !llvm.ptr
          %31 = llvm.mul %25, %11 : i64
          %32 = llvm.udiv %31, %12 : i64
          %33 = llvm.getelementptr %30[%32] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%33, %6 : !llvm.ptr, i64)] : i1
          %34 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %35 = llvm.extractvalue %34[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %36 = llvm.load %35 : !llvm.ptr -> !llvm.ptr
          %37 = llvm.mul %26, %11 : i64
          %38 = llvm.udiv %37, %12 : i64
          %39 = llvm.getelementptr %36[%38] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%39, %6 : !llvm.ptr, i64)] : i1
          %40 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %41 = llvm.extractvalue %40[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %42 = llvm.getelementptr %41[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %43 = llvm.load %42 : !llvm.ptr -> !llvm.ptr
          %44 = llvm.mul %27, %11 : i64
          %45 = llvm.udiv %44, %12 : i64
          %46 = llvm.getelementptr %43[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%46, %6 : !llvm.ptr, i64)] : i1
          %47 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %48 = llvm.extractvalue %47[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %49 = llvm.zext %48 : i32 to i64
          %50 = llvm.sdiv %49, %19 : i64
          %51 = llvm.mul %50, %19 : i64
          %52 = llvm.icmp "ne" %49, %51 : i64
          %53 = llvm.icmp "slt" %49, %24 : i64
          %54 = llvm.and %52, %53 : i1
          %55 = llvm.add %50, %14 : i64
          %56 = llvm.select %54, %55, %50 : i1, i64
          %57 = llvm.srem %49, %19 : i64
          %58 = llvm.icmp "slt" %57, %24 : i64
          %59 = llvm.add %57, %19 overflow<nsw> : i64
          %60 = llvm.select %58, %59, %57 : i1, i64
          %61 = llvm.sdiv %60, %21 : i64
          %62 = llvm.srem %49, %21 : i64
          %63 = llvm.icmp "slt" %62, %24 : i64
          %64 = llvm.add %62, %21 overflow<nsw> : i64
          %65 = llvm.select %63, %64, %62 : i1, i64
          %66 = llvm.mul %65, %21 overflow<nsw> : i64
          llvm.br ^bb1(%24 : i64)
        ^bb1(%67: i64):  // 2 preds: ^bb0, ^bb5
          %68 = llvm.icmp "slt" %67, %21 : i64
          llvm.cond_br %68, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %69 = llvm.add %67, %66 : i64
          llvm.br ^bb3(%24, %20 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb3(%70: i64, %71: !llvm.array<7 x vector<32xf32>>):  // 2 preds: ^bb2, ^bb4
          %72 = llvm.icmp "slt" %70, %23 : i64
          llvm.cond_br %72, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %73 = llvm.mul %56, %4 : i64
          %74 = llvm.mul %69, %5 : i64
          %75 = llvm.add %73, %74 : i64
          %76 = llvm.mul %70, %23 : i64
          %77 = llvm.add %75, %76 : i64
          %78 = llvm.add %77, %24 : i64
          %79 = llvm.add %78, %24 : i64
          %80 = llvm.getelementptr %39[%79] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %81 = llvm.load %80 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %82 = llvm.mul %56, %8 overflow<nsw, nuw> : i64
          %83 = llvm.mul %61, %9 overflow<nsw, nuw> : i64
          %84 = llvm.add %82, %83 overflow<nsw, nuw> : i64
          %85 = llvm.mul %70, %10 overflow<nsw, nuw> : i64
          %86 = llvm.add %84, %85 overflow<nsw, nuw> : i64
          %87 = llvm.add %86, %24 overflow<nsw, nuw> : i64
          %88 = llvm.add %87, %24 overflow<nsw, nuw> : i64
          %89 = llvm.getelementptr inbounds|nuw %33[%88] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %90 = llvm.load %89 : !llvm.ptr -> f32
          %91 = llvm.insertelement %90, %1[%0 : i32] : vector<32xf32>
          %92 = llvm.shufflevector %91, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %93 = llvm.extractvalue %71[0] : !llvm.array<7 x vector<32xf32>> 
          %94 = llvm.intr.fmuladd(%92, %81, %93) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %95 = llvm.add %86, %22 overflow<nsw, nuw> : i64
          %96 = llvm.add %95, %24 overflow<nsw, nuw> : i64
          %97 = llvm.getelementptr inbounds|nuw %33[%96] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %98 = llvm.load %97 : !llvm.ptr -> f32
          %99 = llvm.insertelement %98, %1[%0 : i32] : vector<32xf32>
          %100 = llvm.shufflevector %99, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %101 = llvm.extractvalue %71[1] : !llvm.array<7 x vector<32xf32>> 
          %102 = llvm.intr.fmuladd(%100, %81, %101) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %103 = llvm.add %86, %18 overflow<nsw, nuw> : i64
          %104 = llvm.add %103, %24 overflow<nsw, nuw> : i64
          %105 = llvm.getelementptr inbounds|nuw %33[%104] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %106 = llvm.load %105 : !llvm.ptr -> f32
          %107 = llvm.insertelement %106, %1[%0 : i32] : vector<32xf32>
          %108 = llvm.shufflevector %107, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %109 = llvm.extractvalue %71[2] : !llvm.array<7 x vector<32xf32>> 
          %110 = llvm.intr.fmuladd(%108, %81, %109) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %111 = llvm.add %86, %17 overflow<nsw, nuw> : i64
          %112 = llvm.add %111, %24 overflow<nsw, nuw> : i64
          %113 = llvm.getelementptr inbounds|nuw %33[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %114 = llvm.load %113 : !llvm.ptr -> f32
          %115 = llvm.insertelement %114, %1[%0 : i32] : vector<32xf32>
          %116 = llvm.shufflevector %115, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %117 = llvm.extractvalue %71[3] : !llvm.array<7 x vector<32xf32>> 
          %118 = llvm.intr.fmuladd(%116, %81, %117) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %119 = llvm.add %86, %16 overflow<nsw, nuw> : i64
          %120 = llvm.add %119, %24 overflow<nsw, nuw> : i64
          %121 = llvm.getelementptr inbounds|nuw %33[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %122 = llvm.load %121 : !llvm.ptr -> f32
          %123 = llvm.insertelement %122, %1[%0 : i32] : vector<32xf32>
          %124 = llvm.shufflevector %123, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %125 = llvm.extractvalue %71[4] : !llvm.array<7 x vector<32xf32>> 
          %126 = llvm.intr.fmuladd(%124, %81, %125) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %127 = llvm.add %86, %21 overflow<nsw, nuw> : i64
          %128 = llvm.add %127, %24 overflow<nsw, nuw> : i64
          %129 = llvm.getelementptr inbounds|nuw %33[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %130 = llvm.load %129 : !llvm.ptr -> f32
          %131 = llvm.insertelement %130, %1[%0 : i32] : vector<32xf32>
          %132 = llvm.shufflevector %131, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %133 = llvm.extractvalue %71[5] : !llvm.array<7 x vector<32xf32>> 
          %134 = llvm.intr.fmuladd(%132, %81, %133) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %135 = llvm.add %86, %15 overflow<nsw, nuw> : i64
          %136 = llvm.add %135, %24 overflow<nsw, nuw> : i64
          %137 = llvm.getelementptr inbounds|nuw %33[%136] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %138 = llvm.load %137 : !llvm.ptr -> f32
          %139 = llvm.insertelement %138, %1[%0 : i32] : vector<32xf32>
          %140 = llvm.shufflevector %139, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %141 = llvm.extractvalue %71[6] : !llvm.array<7 x vector<32xf32>> 
          %142 = llvm.intr.fmuladd(%140, %81, %141) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %143 = llvm.insertvalue %94, %13[0] : !llvm.array<7 x vector<32xf32>> 
          %144 = llvm.insertvalue %102, %143[1] : !llvm.array<7 x vector<32xf32>> 
          %145 = llvm.insertvalue %110, %144[2] : !llvm.array<7 x vector<32xf32>> 
          %146 = llvm.insertvalue %118, %145[3] : !llvm.array<7 x vector<32xf32>> 
          %147 = llvm.insertvalue %126, %146[4] : !llvm.array<7 x vector<32xf32>> 
          %148 = llvm.insertvalue %134, %147[5] : !llvm.array<7 x vector<32xf32>> 
          %149 = llvm.insertvalue %142, %148[6] : !llvm.array<7 x vector<32xf32>> 
          %150 = llvm.add %70, %22 : i64
          llvm.br ^bb3(%150, %149 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb5:  // pred: ^bb3
          %151 = llvm.extractvalue %71[0] : !llvm.array<7 x vector<32xf32>> 
          %152 = llvm.mul %56, %2 : i64
          %153 = llvm.mul %61, %3 : i64
          %154 = llvm.add %152, %153 : i64
          %155 = llvm.mul %69, %9 : i64
          %156 = llvm.add %154, %155 : i64
          %157 = llvm.mul %24, %23 : i64
          %158 = llvm.add %156, %157 : i64
          %159 = llvm.add %158, %24 : i64
          %160 = llvm.getelementptr %46[%159] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %151, %160 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %161 = llvm.extractvalue %71[1] : !llvm.array<7 x vector<32xf32>> 
          %162 = llvm.mul %22, %23 : i64
          %163 = llvm.add %156, %162 : i64
          %164 = llvm.add %163, %24 : i64
          %165 = llvm.getelementptr %46[%164] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %161, %165 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %166 = llvm.extractvalue %71[2] : !llvm.array<7 x vector<32xf32>> 
          %167 = llvm.mul %18, %23 : i64
          %168 = llvm.add %156, %167 : i64
          %169 = llvm.add %168, %24 : i64
          %170 = llvm.getelementptr %46[%169] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %166, %170 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %171 = llvm.extractvalue %71[3] : !llvm.array<7 x vector<32xf32>> 
          %172 = llvm.mul %17, %23 : i64
          %173 = llvm.add %156, %172 : i64
          %174 = llvm.add %173, %24 : i64
          %175 = llvm.getelementptr %46[%174] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %171, %175 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %176 = llvm.extractvalue %71[4] : !llvm.array<7 x vector<32xf32>> 
          %177 = llvm.mul %16, %23 : i64
          %178 = llvm.add %156, %177 : i64
          %179 = llvm.add %178, %24 : i64
          %180 = llvm.getelementptr %46[%179] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %176, %180 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %181 = llvm.extractvalue %71[5] : !llvm.array<7 x vector<32xf32>> 
          %182 = llvm.mul %21, %23 : i64
          %183 = llvm.add %156, %182 : i64
          %184 = llvm.add %183, %24 : i64
          %185 = llvm.getelementptr %46[%184] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %181, %185 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %186 = llvm.extractvalue %71[6] : !llvm.array<7 x vector<32xf32>> 
          %187 = llvm.mul %15, %23 : i64
          %188 = llvm.add %156, %187 : i64
          %189 = llvm.add %188, %24 : i64
          %190 = llvm.getelementptr %46[%189] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %186, %190 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %191 = llvm.add %67, %22 : i64
          llvm.br ^bb1(%191 : i64)
        ^bb6:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_59_embedded_elf_riscv_64_main_graph$async_dispatch_59_batch_mmt4d_2x7x25x32x7x32x1_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_59_embedded_elf_riscv_64_main_graph$async_dispatch_59_batch_mmt4d_2x7x25x32x7x32x1_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_59_embedded_elf_riscv_64_main_graph$async_dispatch_59_batch_mmt4d_2x7x25x32x7x32x1_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_59_embedded_elf_riscv_64_main_graph$async_dispatch_59_batch_mmt4d_2x7x25x32x7x32x1_f32_buffer = util.global.load immutable @main_graph$async_dispatch_59_embedded_elf_riscv_64_main_graph$async_dispatch_59_batch_mmt4d_2x7x25x32x7x32x1_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_59::@embedded_elf_riscv_64::@main_graph$async_dispatch_59_batch_mmt4d_2x7x25x32x7x32x1_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_59) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_59::@embedded_elf_riscv_64::@main_graph$async_dispatch_59_batch_mmt4d_2x7x25x32x7x32x1_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_59_embedded_elf_riscv_64_main_graph$async_dispatch_59_batch_mmt4d_2x7x25x32x7x32x1_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_59_embedded_elf_riscv_64_main_graph$async_dispatch_59_batch_mmt4d_2x7x25x32x7x32x1_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
