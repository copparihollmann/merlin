#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_104 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_104_matmul_like_10x49x32x160_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c10 = arith.constant 10 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c10, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_104_matmul_like_10x49x32x160_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<16xf32>
          %2 = llvm.mlir.constant(1568 : index) : i64
          %3 = llvm.mlir.constant(320 : index) : i64
          %4 = llvm.mlir.constant(64 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(8 : i64) : i64
          %7 = llvm.mlir.constant(32 : i64) : i64
          %8 = llvm.mlir.poison : !llvm.array<7 x vector<16xf32>>
          %9 = llvm.mlir.constant(6 : index) : i64
          %10 = llvm.mlir.constant(5 : index) : i64
          %11 = llvm.mlir.constant(4 : index) : i64
          %12 = llvm.mlir.constant(3 : index) : i64
          %13 = llvm.mlir.constant(2 : index) : i64
          %14 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x16xf32>) : !llvm.array<7 x vector<16xf32>>
          %15 = llvm.mlir.constant(16 : index) : i64
          %16 = llvm.mlir.constant(7 : index) : i64
          %17 = llvm.mlir.constant(32 : index) : i64
          %18 = llvm.mlir.constant(49 : index) : i64
          %19 = llvm.mlir.constant(1 : index) : i64
          %20 = llvm.mlir.constant(160 : index) : i64
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
          %34 = llvm.mul %29, %6 : i64
          %35 = llvm.udiv %34, %7 : i64
          %36 = llvm.getelementptr %33[%35] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%36, %4 : !llvm.ptr, i64)] : i1
          %37 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %38 = llvm.extractvalue %37[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %39 = llvm.getelementptr %38[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %40 = llvm.load %39 : !llvm.ptr -> !llvm.ptr
          %41 = llvm.mul %30, %6 : i64
          %42 = llvm.udiv %41, %7 : i64
          %43 = llvm.getelementptr %40[%42] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%43, %4 : !llvm.ptr, i64)] : i1
          %44 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %45 = llvm.extractvalue %44[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %46 = llvm.getelementptr %45[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %47 = llvm.load %46 : !llvm.ptr -> !llvm.ptr
          %48 = llvm.mul %31, %6 : i64
          %49 = llvm.udiv %48, %7 : i64
          %50 = llvm.getelementptr %47[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%50, %4 : !llvm.ptr, i64)] : i1
          %51 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %52 = llvm.extractvalue %51[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %53 = llvm.zext %52 : i32 to i64
          llvm.br ^bb1(%21 : i64)
        ^bb1(%54: i64):  // 2 preds: ^bb0, ^bb6
          %55 = llvm.icmp "slt" %54, %18 : i64
          llvm.cond_br %55, ^bb2(%21 : i64), ^bb7
        ^bb2(%56: i64):  // 2 preds: ^bb1, ^bb5
          %57 = llvm.icmp "slt" %56, %17 : i64
          llvm.cond_br %57, ^bb3(%21, %14 : i64, !llvm.array<7 x vector<16xf32>>), ^bb6
        ^bb3(%58: i64, %59: !llvm.array<7 x vector<16xf32>>):  // 2 preds: ^bb2, ^bb4
          %60 = llvm.icmp "slt" %58, %20 : i64
          llvm.cond_br %60, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %61 = llvm.mul %58, %3 : i64
          %62 = llvm.mul %53, %17 : i64
          %63 = llvm.add %61, %62 : i64
          %64 = llvm.add %63, %56 : i64
          %65 = llvm.getelementptr %43[%64] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %66 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr -> vector<16xf32>
          %67 = llvm.mul %54, %20 overflow<nsw, nuw> : i64
          %68 = llvm.add %67, %58 overflow<nsw, nuw> : i64
          %69 = llvm.getelementptr inbounds|nuw %36[%68] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %70 = llvm.load %69 : !llvm.ptr -> f32
          %71 = llvm.insertelement %70, %1[%0 : i32] : vector<16xf32>
          %72 = llvm.shufflevector %71, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %73 = llvm.extractvalue %59[0] : !llvm.array<7 x vector<16xf32>> 
          %74 = llvm.intr.fmuladd(%72, %66, %73) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %75 = llvm.add %54, %19 : i64
          %76 = llvm.mul %75, %20 overflow<nsw, nuw> : i64
          %77 = llvm.add %76, %58 overflow<nsw, nuw> : i64
          %78 = llvm.getelementptr inbounds|nuw %36[%77] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %79 = llvm.load %78 : !llvm.ptr -> f32
          %80 = llvm.insertelement %79, %1[%0 : i32] : vector<16xf32>
          %81 = llvm.shufflevector %80, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %82 = llvm.extractvalue %59[1] : !llvm.array<7 x vector<16xf32>> 
          %83 = llvm.intr.fmuladd(%81, %66, %82) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %84 = llvm.add %54, %13 : i64
          %85 = llvm.mul %84, %20 overflow<nsw, nuw> : i64
          %86 = llvm.add %85, %58 overflow<nsw, nuw> : i64
          %87 = llvm.getelementptr inbounds|nuw %36[%86] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %88 = llvm.load %87 : !llvm.ptr -> f32
          %89 = llvm.insertelement %88, %1[%0 : i32] : vector<16xf32>
          %90 = llvm.shufflevector %89, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %91 = llvm.extractvalue %59[2] : !llvm.array<7 x vector<16xf32>> 
          %92 = llvm.intr.fmuladd(%90, %66, %91) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %93 = llvm.add %54, %12 : i64
          %94 = llvm.mul %93, %20 overflow<nsw, nuw> : i64
          %95 = llvm.add %94, %58 overflow<nsw, nuw> : i64
          %96 = llvm.getelementptr inbounds|nuw %36[%95] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %97 = llvm.load %96 : !llvm.ptr -> f32
          %98 = llvm.insertelement %97, %1[%0 : i32] : vector<16xf32>
          %99 = llvm.shufflevector %98, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %100 = llvm.extractvalue %59[3] : !llvm.array<7 x vector<16xf32>> 
          %101 = llvm.intr.fmuladd(%99, %66, %100) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %102 = llvm.add %54, %11 : i64
          %103 = llvm.mul %102, %20 overflow<nsw, nuw> : i64
          %104 = llvm.add %103, %58 overflow<nsw, nuw> : i64
          %105 = llvm.getelementptr inbounds|nuw %36[%104] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %106 = llvm.load %105 : !llvm.ptr -> f32
          %107 = llvm.insertelement %106, %1[%0 : i32] : vector<16xf32>
          %108 = llvm.shufflevector %107, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %109 = llvm.extractvalue %59[4] : !llvm.array<7 x vector<16xf32>> 
          %110 = llvm.intr.fmuladd(%108, %66, %109) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %111 = llvm.add %54, %10 : i64
          %112 = llvm.mul %111, %20 overflow<nsw, nuw> : i64
          %113 = llvm.add %112, %58 overflow<nsw, nuw> : i64
          %114 = llvm.getelementptr inbounds|nuw %36[%113] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %115 = llvm.load %114 : !llvm.ptr -> f32
          %116 = llvm.insertelement %115, %1[%0 : i32] : vector<16xf32>
          %117 = llvm.shufflevector %116, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %118 = llvm.extractvalue %59[5] : !llvm.array<7 x vector<16xf32>> 
          %119 = llvm.intr.fmuladd(%117, %66, %118) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %120 = llvm.add %54, %9 : i64
          %121 = llvm.mul %120, %20 overflow<nsw, nuw> : i64
          %122 = llvm.add %121, %58 overflow<nsw, nuw> : i64
          %123 = llvm.getelementptr inbounds|nuw %36[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %124 = llvm.load %123 : !llvm.ptr -> f32
          %125 = llvm.insertelement %124, %1[%0 : i32] : vector<16xf32>
          %126 = llvm.shufflevector %125, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<16xf32> 
          %127 = llvm.extractvalue %59[6] : !llvm.array<7 x vector<16xf32>> 
          %128 = llvm.intr.fmuladd(%126, %66, %127) : (vector<16xf32>, vector<16xf32>, vector<16xf32>) -> vector<16xf32>
          %129 = llvm.insertvalue %74, %8[0] : !llvm.array<7 x vector<16xf32>> 
          %130 = llvm.insertvalue %83, %129[1] : !llvm.array<7 x vector<16xf32>> 
          %131 = llvm.insertvalue %92, %130[2] : !llvm.array<7 x vector<16xf32>> 
          %132 = llvm.insertvalue %101, %131[3] : !llvm.array<7 x vector<16xf32>> 
          %133 = llvm.insertvalue %110, %132[4] : !llvm.array<7 x vector<16xf32>> 
          %134 = llvm.insertvalue %119, %133[5] : !llvm.array<7 x vector<16xf32>> 
          %135 = llvm.insertvalue %128, %134[6] : !llvm.array<7 x vector<16xf32>> 
          %136 = llvm.add %58, %19 : i64
          llvm.br ^bb3(%136, %135 : i64, !llvm.array<7 x vector<16xf32>>)
        ^bb5:  // pred: ^bb3
          %137 = llvm.extractvalue %59[0] : !llvm.array<7 x vector<16xf32>> 
          %138 = llvm.extractvalue %14[0] : !llvm.array<7 x vector<16xf32>> 
          %139 = llvm.fadd %137, %138 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %140 = llvm.extractvalue %59[1] : !llvm.array<7 x vector<16xf32>> 
          %141 = llvm.extractvalue %14[1] : !llvm.array<7 x vector<16xf32>> 
          %142 = llvm.fadd %140, %141 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %143 = llvm.extractvalue %59[2] : !llvm.array<7 x vector<16xf32>> 
          %144 = llvm.extractvalue %14[2] : !llvm.array<7 x vector<16xf32>> 
          %145 = llvm.fadd %143, %144 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %146 = llvm.extractvalue %59[3] : !llvm.array<7 x vector<16xf32>> 
          %147 = llvm.extractvalue %14[3] : !llvm.array<7 x vector<16xf32>> 
          %148 = llvm.fadd %146, %147 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %149 = llvm.extractvalue %59[4] : !llvm.array<7 x vector<16xf32>> 
          %150 = llvm.extractvalue %14[4] : !llvm.array<7 x vector<16xf32>> 
          %151 = llvm.fadd %149, %150 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %152 = llvm.extractvalue %59[5] : !llvm.array<7 x vector<16xf32>> 
          %153 = llvm.extractvalue %14[5] : !llvm.array<7 x vector<16xf32>> 
          %154 = llvm.fadd %152, %153 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %155 = llvm.extractvalue %59[6] : !llvm.array<7 x vector<16xf32>> 
          %156 = llvm.extractvalue %14[6] : !llvm.array<7 x vector<16xf32>> 
          %157 = llvm.fadd %155, %156 {fastmathFlags = #llvm.fastmath<contract>} : vector<16xf32>
          %158 = llvm.mul %53, %2 : i64
          %159 = llvm.mul %54, %17 : i64
          %160 = llvm.add %158, %159 : i64
          %161 = llvm.add %160, %56 : i64
          %162 = llvm.getelementptr %50[%161] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %139, %162 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %163 = llvm.add %54, %19 : i64
          %164 = llvm.mul %163, %17 : i64
          %165 = llvm.add %158, %164 : i64
          %166 = llvm.add %165, %56 : i64
          %167 = llvm.getelementptr %50[%166] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %142, %167 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %168 = llvm.add %54, %13 : i64
          %169 = llvm.mul %168, %17 : i64
          %170 = llvm.add %158, %169 : i64
          %171 = llvm.add %170, %56 : i64
          %172 = llvm.getelementptr %50[%171] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %145, %172 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %173 = llvm.add %54, %12 : i64
          %174 = llvm.mul %173, %17 : i64
          %175 = llvm.add %158, %174 : i64
          %176 = llvm.add %175, %56 : i64
          %177 = llvm.getelementptr %50[%176] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %148, %177 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %178 = llvm.add %54, %11 : i64
          %179 = llvm.mul %178, %17 : i64
          %180 = llvm.add %158, %179 : i64
          %181 = llvm.add %180, %56 : i64
          %182 = llvm.getelementptr %50[%181] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %151, %182 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %183 = llvm.add %54, %10 : i64
          %184 = llvm.mul %183, %17 : i64
          %185 = llvm.add %158, %184 : i64
          %186 = llvm.add %185, %56 : i64
          %187 = llvm.getelementptr %50[%186] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %154, %187 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %188 = llvm.add %54, %9 : i64
          %189 = llvm.mul %188, %17 : i64
          %190 = llvm.add %158, %189 : i64
          %191 = llvm.add %190, %56 : i64
          %192 = llvm.getelementptr %50[%191] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %157, %192 {alignment = 4 : i64} : vector<16xf32>, !llvm.ptr
          %193 = llvm.add %56, %15 : i64
          llvm.br ^bb2(%193 : i64)
        ^bb6:  // pred: ^bb2
          %194 = llvm.add %54, %16 : i64
          llvm.br ^bb1(%194 : i64)
        ^bb7:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_104_embedded_elf_riscv_64_main_graph$async_dispatch_104_matmul_like_10x49x32x160_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_104_embedded_elf_riscv_64_main_graph$async_dispatch_104_matmul_like_10x49x32x160_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_104_embedded_elf_riscv_64_main_graph$async_dispatch_104_matmul_like_10x49x32x160_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c464128_i32 = arith.constant 464128 : i32
    %c4933376_i32 = arith.constant 4933376 : i32
    %c401408_i32 = arith.constant 401408 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_104_embedded_elf_riscv_64_main_graph$async_dispatch_104_matmul_like_10x49x32x160_f32_buffer = util.global.load immutable @main_graph$async_dispatch_104_embedded_elf_riscv_64_main_graph$async_dispatch_104_matmul_like_10x49x32x160_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_104::@embedded_elf_riscv_64::@main_graph$async_dispatch_104_matmul_like_10x49x32x160_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_104) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_104::@embedded_elf_riscv_64::@main_graph$async_dispatch_104_matmul_like_10x49x32x160_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c464128_i32, %c4933376_i32, %c401408_i32]) bindings([
      (%main_graph$async_dispatch_104_embedded_elf_riscv_64_main_graph$async_dispatch_104_matmul_like_10x49x32x160_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_104_embedded_elf_riscv_64_main_graph$async_dispatch_104_matmul_like_10x49x32x160_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_104_embedded_elf_riscv_64_main_graph$async_dispatch_104_matmul_like_10x49x32x160_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
