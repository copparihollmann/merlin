#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_4 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_4_mmt4d_5x98x32x7x32x1_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c35 = arith.constant 35 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c35, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_4_mmt4d_5x98x32x7x32x1_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
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
          %39 = llvm.getelementptr %38[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %40 = llvm.load %39 : !llvm.ptr -> !llvm.ptr
          %41 = llvm.mul %30, %7 : i64
          %42 = llvm.udiv %41, %8 : i64
          %43 = llvm.getelementptr %40[%42] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%43, %4 : !llvm.ptr, i64)] : i1
          %44 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %45 = llvm.extractvalue %44[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %46 = llvm.getelementptr %45[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %47 = llvm.load %46 : !llvm.ptr -> !llvm.ptr
          %48 = llvm.mul %31, %7 : i64
          %49 = llvm.udiv %48, %8 : i64
          %50 = llvm.getelementptr %47[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%50, %4 : !llvm.ptr, i64)] : i1
          %51 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %52 = llvm.extractvalue %51[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %53 = llvm.zext %52 : i32 to i64
          %54 = llvm.sdiv %53, %16 : i64
          %55 = llvm.mul %54, %16 : i64
          %56 = llvm.icmp "ne" %53, %55 : i64
          %57 = llvm.icmp "slt" %53, %21 : i64
          %58 = llvm.and %56, %57 : i1
          %59 = llvm.add %54, %10 : i64
          %60 = llvm.select %58, %59, %54 : i1, i64
          %61 = llvm.srem %53, %16 : i64
          %62 = llvm.icmp "slt" %61, %21 : i64
          %63 = llvm.add %61, %16 overflow<nsw> : i64
          %64 = llvm.select %62, %63, %61 : i1, i64
          %65 = llvm.mul %64, %18 overflow<nsw> : i64
          llvm.br ^bb1(%21 : i64)
        ^bb1(%66: i64):  // 2 preds: ^bb0, ^bb5
          %67 = llvm.icmp "slt" %66, %18 : i64
          llvm.cond_br %67, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %68 = llvm.add %66, %65 : i64
          llvm.br ^bb3(%21, %17 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb3(%69: i64, %70: !llvm.array<7 x vector<32xf32>>):  // 2 preds: ^bb2, ^bb4
          %71 = llvm.icmp "slt" %69, %20 : i64
          llvm.cond_br %71, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %72 = llvm.mul %68, %3 : i64
          %73 = llvm.mul %69, %20 : i64
          %74 = llvm.add %72, %73 : i64
          %75 = llvm.add %74, %21 : i64
          %76 = llvm.add %75, %21 : i64
          %77 = llvm.getelementptr %43[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %78 = llvm.load %77 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %79 = llvm.mul %60, %6 overflow<nsw, nuw> : i64
          %80 = llvm.mul %69, %16 overflow<nsw, nuw> : i64
          %81 = llvm.add %79, %80 overflow<nsw, nuw> : i64
          %82 = llvm.add %81, %21 overflow<nsw, nuw> : i64
          %83 = llvm.add %82, %21 overflow<nsw, nuw> : i64
          %84 = llvm.getelementptr inbounds|nuw %36[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %85 = llvm.load %84 : !llvm.ptr -> f32
          %86 = llvm.insertelement %85, %1[%0 : i32] : vector<32xf32>
          %87 = llvm.shufflevector %86, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %88 = llvm.extractvalue %70[0] : !llvm.array<7 x vector<32xf32>> 
          %89 = llvm.intr.fmuladd(%87, %78, %88) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %90 = llvm.add %81, %19 overflow<nsw, nuw> : i64
          %91 = llvm.add %90, %21 overflow<nsw, nuw> : i64
          %92 = llvm.getelementptr inbounds|nuw %36[%91] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %93 = llvm.load %92 : !llvm.ptr -> f32
          %94 = llvm.insertelement %93, %1[%0 : i32] : vector<32xf32>
          %95 = llvm.shufflevector %94, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %96 = llvm.extractvalue %70[1] : !llvm.array<7 x vector<32xf32>> 
          %97 = llvm.intr.fmuladd(%95, %78, %96) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %98 = llvm.add %81, %15 overflow<nsw, nuw> : i64
          %99 = llvm.add %98, %21 overflow<nsw, nuw> : i64
          %100 = llvm.getelementptr inbounds|nuw %36[%99] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %101 = llvm.load %100 : !llvm.ptr -> f32
          %102 = llvm.insertelement %101, %1[%0 : i32] : vector<32xf32>
          %103 = llvm.shufflevector %102, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %104 = llvm.extractvalue %70[2] : !llvm.array<7 x vector<32xf32>> 
          %105 = llvm.intr.fmuladd(%103, %78, %104) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %106 = llvm.add %81, %14 overflow<nsw, nuw> : i64
          %107 = llvm.add %106, %21 overflow<nsw, nuw> : i64
          %108 = llvm.getelementptr inbounds|nuw %36[%107] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %109 = llvm.load %108 : !llvm.ptr -> f32
          %110 = llvm.insertelement %109, %1[%0 : i32] : vector<32xf32>
          %111 = llvm.shufflevector %110, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %112 = llvm.extractvalue %70[3] : !llvm.array<7 x vector<32xf32>> 
          %113 = llvm.intr.fmuladd(%111, %78, %112) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %114 = llvm.add %81, %13 overflow<nsw, nuw> : i64
          %115 = llvm.add %114, %21 overflow<nsw, nuw> : i64
          %116 = llvm.getelementptr inbounds|nuw %36[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %117 = llvm.load %116 : !llvm.ptr -> f32
          %118 = llvm.insertelement %117, %1[%0 : i32] : vector<32xf32>
          %119 = llvm.shufflevector %118, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %120 = llvm.extractvalue %70[4] : !llvm.array<7 x vector<32xf32>> 
          %121 = llvm.intr.fmuladd(%119, %78, %120) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %122 = llvm.add %81, %12 overflow<nsw, nuw> : i64
          %123 = llvm.add %122, %21 overflow<nsw, nuw> : i64
          %124 = llvm.getelementptr inbounds|nuw %36[%123] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %125 = llvm.load %124 : !llvm.ptr -> f32
          %126 = llvm.insertelement %125, %1[%0 : i32] : vector<32xf32>
          %127 = llvm.shufflevector %126, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %128 = llvm.extractvalue %70[5] : !llvm.array<7 x vector<32xf32>> 
          %129 = llvm.intr.fmuladd(%127, %78, %128) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %130 = llvm.add %81, %11 overflow<nsw, nuw> : i64
          %131 = llvm.add %130, %21 overflow<nsw, nuw> : i64
          %132 = llvm.getelementptr inbounds|nuw %36[%131] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %133 = llvm.load %132 : !llvm.ptr -> f32
          %134 = llvm.insertelement %133, %1[%0 : i32] : vector<32xf32>
          %135 = llvm.shufflevector %134, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %136 = llvm.extractvalue %70[6] : !llvm.array<7 x vector<32xf32>> 
          %137 = llvm.intr.fmuladd(%135, %78, %136) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %138 = llvm.insertvalue %89, %9[0] : !llvm.array<7 x vector<32xf32>> 
          %139 = llvm.insertvalue %97, %138[1] : !llvm.array<7 x vector<32xf32>> 
          %140 = llvm.insertvalue %105, %139[2] : !llvm.array<7 x vector<32xf32>> 
          %141 = llvm.insertvalue %113, %140[3] : !llvm.array<7 x vector<32xf32>> 
          %142 = llvm.insertvalue %121, %141[4] : !llvm.array<7 x vector<32xf32>> 
          %143 = llvm.insertvalue %129, %142[5] : !llvm.array<7 x vector<32xf32>> 
          %144 = llvm.insertvalue %137, %143[6] : !llvm.array<7 x vector<32xf32>> 
          %145 = llvm.add %69, %19 : i64
          llvm.br ^bb3(%145, %144 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb5:  // pred: ^bb3
          %146 = llvm.extractvalue %70[0] : !llvm.array<7 x vector<32xf32>> 
          %147 = llvm.mul %60, %2 : i64
          %148 = llvm.mul %68, %6 : i64
          %149 = llvm.add %147, %148 : i64
          %150 = llvm.mul %21, %20 : i64
          %151 = llvm.add %149, %150 : i64
          %152 = llvm.add %151, %21 : i64
          %153 = llvm.getelementptr %50[%152] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %146, %153 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %154 = llvm.extractvalue %70[1] : !llvm.array<7 x vector<32xf32>> 
          %155 = llvm.mul %19, %20 : i64
          %156 = llvm.add %149, %155 : i64
          %157 = llvm.add %156, %21 : i64
          %158 = llvm.getelementptr %50[%157] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %154, %158 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %159 = llvm.extractvalue %70[2] : !llvm.array<7 x vector<32xf32>> 
          %160 = llvm.mul %15, %20 : i64
          %161 = llvm.add %149, %160 : i64
          %162 = llvm.add %161, %21 : i64
          %163 = llvm.getelementptr %50[%162] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %159, %163 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %164 = llvm.extractvalue %70[3] : !llvm.array<7 x vector<32xf32>> 
          %165 = llvm.mul %14, %20 : i64
          %166 = llvm.add %149, %165 : i64
          %167 = llvm.add %166, %21 : i64
          %168 = llvm.getelementptr %50[%167] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %164, %168 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %169 = llvm.extractvalue %70[4] : !llvm.array<7 x vector<32xf32>> 
          %170 = llvm.mul %13, %20 : i64
          %171 = llvm.add %149, %170 : i64
          %172 = llvm.add %171, %21 : i64
          %173 = llvm.getelementptr %50[%172] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %169, %173 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %174 = llvm.extractvalue %70[5] : !llvm.array<7 x vector<32xf32>> 
          %175 = llvm.mul %12, %20 : i64
          %176 = llvm.add %149, %175 : i64
          %177 = llvm.add %176, %21 : i64
          %178 = llvm.getelementptr %50[%177] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %174, %178 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %179 = llvm.extractvalue %70[6] : !llvm.array<7 x vector<32xf32>> 
          %180 = llvm.mul %11, %20 : i64
          %181 = llvm.add %149, %180 : i64
          %182 = llvm.add %181, %21 : i64
          %183 = llvm.getelementptr %50[%182] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %179, %183 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %184 = llvm.add %66, %19 : i64
          llvm.br ^bb1(%184 : i64)
        ^bb6:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_4_embedded_elf_riscv_64_main_graph$async_dispatch_4_mmt4d_5x98x32x7x32x1_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_4_embedded_elf_riscv_64_main_graph$async_dispatch_4_mmt4d_5x98x32x7x32x1_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_4_embedded_elf_riscv_64_main_graph$async_dispatch_4_mmt4d_5x98x32x7x32x1_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c31360_i32 = arith.constant 31360 : i32
    %c802816_i32 = arith.constant 802816 : i32
    %c1204224_i32 = arith.constant 1204224 : i32
    %c0 = arith.constant 0 : index
    %c14611584 = arith.constant 14611584 : index
    %c14611712 = arith.constant 14611712 : index
    %c32172032 = arith.constant 32172032 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_4_embedded_elf_riscv_64_main_graph$async_dispatch_4_mmt4d_5x98x32x7x32x1_f32_buffer = util.global.load immutable @main_graph$async_dispatch_4_embedded_elf_riscv_64_main_graph$async_dispatch_4_mmt4d_5x98x32x7x32x1_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_4::@embedded_elf_riscv_64::@main_graph$async_dispatch_4_mmt4d_5x98x32x7x32x1_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_4) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_4::@embedded_elf_riscv_64::@main_graph$async_dispatch_4_mmt4d_5x98x32x7x32x1_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c31360_i32, %c802816_i32, %c1204224_i32]) bindings([
      (%main_graph$async_dispatch_4_embedded_elf_riscv_64_main_graph$async_dispatch_4_mmt4d_5x98x32x7x32x1_f32_buffer : !hal.buffer)[%c0, %c14611584], 
      (%main_graph$async_dispatch_4_embedded_elf_riscv_64_main_graph$async_dispatch_4_mmt4d_5x98x32x7x32x1_f32_buffer : !hal.buffer)[%c14611712, %c32172032], 
      (%main_graph$async_dispatch_4_embedded_elf_riscv_64_main_graph$async_dispatch_4_mmt4d_5x98x32x7x32x1_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
