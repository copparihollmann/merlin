#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_111 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c25 = arith.constant 25 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c25, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xf32>
          %2 = llvm.mlir.constant(7840 : index) : i64
          %3 = llvm.mlir.constant(224 : index) : i64
          %4 = llvm.mlir.constant(10976 : index) : i64
          %5 = llvm.mlir.constant(1568 : index) : i64
          %6 = llvm.mlir.constant(32 : index) : i64
          %7 = llvm.mlir.constant(64 : index) : i64
          %8 = llvm.mlir.constant(true) : i1
          %9 = llvm.mlir.constant(1715 : index) : i64
          %10 = llvm.mlir.constant(343 : index) : i64
          %11 = llvm.mlir.constant(8 : i64) : i64
          %12 = llvm.mlir.constant(32 : i64) : i64
          %13 = llvm.mlir.poison : !llvm.array<7 x vector<32xf32>>
          %14 = llvm.mlir.constant(-1 : index) : i64
          %15 = llvm.mlir.constant(6 : index) : i64
          %16 = llvm.mlir.constant(4 : index) : i64
          %17 = llvm.mlir.constant(3 : index) : i64
          %18 = llvm.mlir.constant(2 : index) : i64
          %19 = llvm.mlir.constant(5 : index) : i64
          %20 = llvm.mlir.constant(dense<0.000000e+00> : vector<7x32xf32>) : !llvm.array<7 x vector<32xf32>>
          %21 = llvm.mlir.constant(7 : index) : i64
          %22 = llvm.mlir.constant(1 : index) : i64
          %23 = llvm.mlir.constant(49 : index) : i64
          %24 = llvm.mlir.constant(0 : index) : i64
          %25 = llvm.mlir.constant(1195648 : index) : i64
          %26 = llvm.mlir.constant(1003520 : index) : i64
          %27 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %28 = llvm.extractvalue %27[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %29 = llvm.load %28 : !llvm.ptr -> i32
          %30 = llvm.zext %29 : i32 to i64
          %31 = llvm.extractvalue %27[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %32 = llvm.load %31 : !llvm.ptr -> !llvm.ptr
          %33 = llvm.mul %30, %11 : i64
          %34 = llvm.udiv %33, %12 : i64
          %35 = llvm.getelementptr %32[%34] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %8 ["align"(%35, %7 : !llvm.ptr, i64)] : i1
          %36 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %37 = llvm.extractvalue %36[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %38 = llvm.load %37 : !llvm.ptr -> !llvm.ptr
          %39 = llvm.mul %25, %11 : i64
          %40 = llvm.udiv %39, %12 : i64
          %41 = llvm.getelementptr %38[%40] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %8 ["align"(%41, %7 : !llvm.ptr, i64)] : i1
          %42 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %43 = llvm.extractvalue %42[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %44 = llvm.getelementptr %43[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %45 = llvm.load %44 : !llvm.ptr -> !llvm.ptr
          %46 = llvm.mul %26, %11 : i64
          %47 = llvm.udiv %46, %12 : i64
          %48 = llvm.getelementptr %45[%47] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %8 ["align"(%48, %7 : !llvm.ptr, i64)] : i1
          %49 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %50 = llvm.extractvalue %49[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %51 = llvm.zext %50 : i32 to i64
          %52 = llvm.sdiv %51, %19 : i64
          %53 = llvm.mul %52, %19 : i64
          %54 = llvm.icmp "ne" %51, %53 : i64
          %55 = llvm.icmp "slt" %51, %24 : i64
          %56 = llvm.and %54, %55 : i1
          %57 = llvm.add %52, %14 : i64
          %58 = llvm.select %56, %57, %52 : i1, i64
          %59 = llvm.srem %51, %19 : i64
          %60 = llvm.icmp "slt" %59, %24 : i64
          %61 = llvm.add %59, %19 overflow<nsw> : i64
          %62 = llvm.select %60, %61, %59 : i1, i64
          llvm.br ^bb1(%24 : i64)
        ^bb1(%63: i64):  // 2 preds: ^bb0, ^bb4
          %64 = llvm.icmp "slt" %63, %21 : i64
          llvm.cond_br %64, ^bb2(%24, %20 : i64, !llvm.array<7 x vector<32xf32>>), ^bb5
        ^bb2(%65: i64, %66: !llvm.array<7 x vector<32xf32>>):  // 2 preds: ^bb1, ^bb3
          %67 = llvm.icmp "slt" %65, %23 : i64
          llvm.cond_br %67, ^bb3, ^bb4
        ^bb3:  // pred: ^bb2
          %68 = llvm.mul %58, %4 : i64
          %69 = llvm.mul %63, %5 : i64
          %70 = llvm.add %68, %69 : i64
          %71 = llvm.mul %65, %6 : i64
          %72 = llvm.add %70, %71 : i64
          %73 = llvm.add %72, %24 : i64
          %74 = llvm.add %73, %24 : i64
          %75 = llvm.getelementptr %41[%74] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %76 = llvm.load %75 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %77 = llvm.mul %58, %9 overflow<nsw, nuw> : i64
          %78 = llvm.mul %62, %10 overflow<nsw, nuw> : i64
          %79 = llvm.add %77, %78 overflow<nsw, nuw> : i64
          %80 = llvm.mul %65, %21 overflow<nsw, nuw> : i64
          %81 = llvm.add %79, %80 overflow<nsw, nuw> : i64
          %82 = llvm.add %81, %24 overflow<nsw, nuw> : i64
          %83 = llvm.add %82, %24 overflow<nsw, nuw> : i64
          %84 = llvm.getelementptr inbounds|nuw %35[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %85 = llvm.load %84 : !llvm.ptr -> f32
          %86 = llvm.insertelement %85, %1[%0 : i32] : vector<32xf32>
          %87 = llvm.shufflevector %86, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %88 = llvm.extractvalue %66[0] : !llvm.array<7 x vector<32xf32>> 
          %89 = llvm.intr.fmuladd(%87, %76, %88) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %90 = llvm.add %81, %22 overflow<nsw, nuw> : i64
          %91 = llvm.add %90, %24 overflow<nsw, nuw> : i64
          %92 = llvm.getelementptr inbounds|nuw %35[%91] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %93 = llvm.load %92 : !llvm.ptr -> f32
          %94 = llvm.insertelement %93, %1[%0 : i32] : vector<32xf32>
          %95 = llvm.shufflevector %94, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %96 = llvm.extractvalue %66[1] : !llvm.array<7 x vector<32xf32>> 
          %97 = llvm.intr.fmuladd(%95, %76, %96) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %98 = llvm.add %81, %18 overflow<nsw, nuw> : i64
          %99 = llvm.add %98, %24 overflow<nsw, nuw> : i64
          %100 = llvm.getelementptr inbounds|nuw %35[%99] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %101 = llvm.load %100 : !llvm.ptr -> f32
          %102 = llvm.insertelement %101, %1[%0 : i32] : vector<32xf32>
          %103 = llvm.shufflevector %102, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %104 = llvm.extractvalue %66[2] : !llvm.array<7 x vector<32xf32>> 
          %105 = llvm.intr.fmuladd(%103, %76, %104) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %106 = llvm.add %81, %17 overflow<nsw, nuw> : i64
          %107 = llvm.add %106, %24 overflow<nsw, nuw> : i64
          %108 = llvm.getelementptr inbounds|nuw %35[%107] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %109 = llvm.load %108 : !llvm.ptr -> f32
          %110 = llvm.insertelement %109, %1[%0 : i32] : vector<32xf32>
          %111 = llvm.shufflevector %110, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %112 = llvm.extractvalue %66[3] : !llvm.array<7 x vector<32xf32>> 
          %113 = llvm.intr.fmuladd(%111, %76, %112) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %114 = llvm.add %81, %16 overflow<nsw, nuw> : i64
          %115 = llvm.add %114, %24 overflow<nsw, nuw> : i64
          %116 = llvm.getelementptr inbounds|nuw %35[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %117 = llvm.load %116 : !llvm.ptr -> f32
          %118 = llvm.insertelement %117, %1[%0 : i32] : vector<32xf32>
          %119 = llvm.shufflevector %118, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %120 = llvm.extractvalue %66[4] : !llvm.array<7 x vector<32xf32>> 
          %121 = llvm.intr.fmuladd(%119, %76, %120) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %122 = llvm.add %81, %19 overflow<nsw, nuw> : i64
          %123 = llvm.add %122, %24 overflow<nsw, nuw> : i64
          %124 = llvm.getelementptr inbounds|nuw %35[%123] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %125 = llvm.load %124 : !llvm.ptr -> f32
          %126 = llvm.insertelement %125, %1[%0 : i32] : vector<32xf32>
          %127 = llvm.shufflevector %126, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %128 = llvm.extractvalue %66[5] : !llvm.array<7 x vector<32xf32>> 
          %129 = llvm.intr.fmuladd(%127, %76, %128) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %130 = llvm.add %81, %15 overflow<nsw, nuw> : i64
          %131 = llvm.add %130, %24 overflow<nsw, nuw> : i64
          %132 = llvm.getelementptr inbounds|nuw %35[%131] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %133 = llvm.load %132 : !llvm.ptr -> f32
          %134 = llvm.insertelement %133, %1[%0 : i32] : vector<32xf32>
          %135 = llvm.shufflevector %134, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %136 = llvm.extractvalue %66[6] : !llvm.array<7 x vector<32xf32>> 
          %137 = llvm.intr.fmuladd(%135, %76, %136) : (vector<32xf32>, vector<32xf32>, vector<32xf32>) -> vector<32xf32>
          %138 = llvm.insertvalue %89, %13[0] : !llvm.array<7 x vector<32xf32>> 
          %139 = llvm.insertvalue %97, %138[1] : !llvm.array<7 x vector<32xf32>> 
          %140 = llvm.insertvalue %105, %139[2] : !llvm.array<7 x vector<32xf32>> 
          %141 = llvm.insertvalue %113, %140[3] : !llvm.array<7 x vector<32xf32>> 
          %142 = llvm.insertvalue %121, %141[4] : !llvm.array<7 x vector<32xf32>> 
          %143 = llvm.insertvalue %129, %142[5] : !llvm.array<7 x vector<32xf32>> 
          %144 = llvm.insertvalue %137, %143[6] : !llvm.array<7 x vector<32xf32>> 
          %145 = llvm.add %65, %22 : i64
          llvm.br ^bb2(%145, %144 : i64, !llvm.array<7 x vector<32xf32>>)
        ^bb4:  // pred: ^bb2
          %146 = llvm.extractvalue %66[0] : !llvm.array<7 x vector<32xf32>> 
          %147 = llvm.mul %58, %2 : i64
          %148 = llvm.mul %62, %5 : i64
          %149 = llvm.add %147, %148 : i64
          %150 = llvm.mul %63, %3 : i64
          %151 = llvm.add %149, %150 : i64
          %152 = llvm.mul %24, %6 : i64
          %153 = llvm.add %151, %152 : i64
          %154 = llvm.add %153, %24 : i64
          %155 = llvm.getelementptr %48[%154] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %146, %155 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %156 = llvm.extractvalue %66[1] : !llvm.array<7 x vector<32xf32>> 
          %157 = llvm.mul %22, %6 : i64
          %158 = llvm.add %151, %157 : i64
          %159 = llvm.add %158, %24 : i64
          %160 = llvm.getelementptr %48[%159] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %156, %160 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %161 = llvm.extractvalue %66[2] : !llvm.array<7 x vector<32xf32>> 
          %162 = llvm.mul %18, %6 : i64
          %163 = llvm.add %151, %162 : i64
          %164 = llvm.add %163, %24 : i64
          %165 = llvm.getelementptr %48[%164] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %161, %165 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %166 = llvm.extractvalue %66[3] : !llvm.array<7 x vector<32xf32>> 
          %167 = llvm.mul %17, %6 : i64
          %168 = llvm.add %151, %167 : i64
          %169 = llvm.add %168, %24 : i64
          %170 = llvm.getelementptr %48[%169] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %166, %170 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %171 = llvm.extractvalue %66[4] : !llvm.array<7 x vector<32xf32>> 
          %172 = llvm.mul %16, %6 : i64
          %173 = llvm.add %151, %172 : i64
          %174 = llvm.add %173, %24 : i64
          %175 = llvm.getelementptr %48[%174] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %171, %175 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %176 = llvm.extractvalue %66[5] : !llvm.array<7 x vector<32xf32>> 
          %177 = llvm.mul %19, %6 : i64
          %178 = llvm.add %151, %177 : i64
          %179 = llvm.add %178, %24 : i64
          %180 = llvm.getelementptr %48[%179] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %176, %180 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %181 = llvm.extractvalue %66[6] : !llvm.array<7 x vector<32xf32>> 
          %182 = llvm.mul %15, %6 : i64
          %183 = llvm.add %151, %182 : i64
          %184 = llvm.add %183, %24 : i64
          %185 = llvm.getelementptr %48[%184] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %181, %185 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %186 = llvm.add %63, %22 : i64
          llvm.br ^bb1(%186 : i64)
        ^bb5:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_111_embedded_elf_riscv_64_main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_111_embedded_elf_riscv_64_main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_111_embedded_elf_riscv_64_main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c464128_i32 = arith.constant 464128 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_111_embedded_elf_riscv_64_main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32_buffer = util.global.load immutable @main_graph$async_dispatch_111_embedded_elf_riscv_64_main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_111::@embedded_elf_riscv_64::@main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_111) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_111::@embedded_elf_riscv_64::@main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c464128_i32]) bindings([
      (%main_graph$async_dispatch_111_embedded_elf_riscv_64_main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_111_embedded_elf_riscv_64_main_graph$async_dispatch_111_batch_mmt4d_5x5x7x49x7x32x1_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
