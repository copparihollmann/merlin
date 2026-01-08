#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_153 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_153_softmax_8x49x49xf32_dispatch_tensor_store ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c56 = arith.constant 56 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c56, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_153_softmax_8x49x49xf32_dispatch_tensor_store(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.poison : vector<7xf32>
          %1 = llvm.mlir.constant(6 : i64) : i64
          %2 = llvm.mlir.constant(5 : i64) : i64
          %3 = llvm.mlir.constant(4 : i64) : i64
          %4 = llvm.mlir.constant(3 : i64) : i64
          %5 = llvm.mlir.constant(2 : i64) : i64
          %6 = llvm.mlir.constant(1 : i64) : i64
          %7 = llvm.mlir.constant(6 : index) : i64
          %8 = llvm.mlir.constant(5 : index) : i64
          %9 = llvm.mlir.constant(4 : index) : i64
          %10 = llvm.mlir.constant(3 : index) : i64
          %11 = llvm.mlir.constant(2 : index) : i64
          %12 = llvm.mlir.poison : vector<1xf32>
          %13 = llvm.mlir.constant(8 : i32) : i32
          %14 = llvm.mlir.constant(0 : i64) : i64
          %15 = llvm.mlir.constant(0 : i32) : i32
          %16 = llvm.mlir.poison : vector<8xi32>
          %17 = llvm.mlir.constant(64 : index) : i64
          %18 = llvm.mlir.constant(true) : i1
          %19 = llvm.mlir.constant(2401 : index) : i64
          %20 = llvm.mlir.constant(8 : i64) : i64
          %21 = llvm.mlir.constant(32 : i64) : i64
          %22 = llvm.mlir.constant(-1 : index) : i64
          %23 = llvm.mlir.constant(dense<127> : vector<7x8xi32>) : !llvm.array<7 x vector<8xi32>>
          %24 = llvm.mlir.constant(dense<23> : vector<7x8xi32>) : !llvm.array<7 x vector<8xi32>>
          %25 = llvm.mlir.constant(dense<1.270000e+02> : vector<7x8xf32>) : !llvm.array<7 x vector<8xf32>>
          %26 = llvm.mlir.constant(dense<-1.270000e+02> : vector<7x8xf32>) : !llvm.array<7 x vector<8xf32>>
          %27 = llvm.mlir.constant(dense<8.880000e+01> : vector<7x8xf32>) : !llvm.array<7 x vector<8xf32>>
          %28 = llvm.mlir.constant(dense<-8.780000e+01> : vector<7x8xf32>) : !llvm.array<7 x vector<8xf32>>
          %29 = llvm.mlir.constant(dense<0.166666657> : vector<7x8xf32>) : !llvm.array<7 x vector<8xf32>>
          %30 = llvm.mlir.constant(dense<0.0416657962> : vector<7x8xf32>) : !llvm.array<7 x vector<8xf32>>
          %31 = llvm.mlir.constant(dense<0.00833345205> : vector<7x8xf32>) : !llvm.array<7 x vector<8xf32>>
          %32 = llvm.mlir.constant(dense<0.00139819994> : vector<7x8xf32>) : !llvm.array<7 x vector<8xf32>>
          %33 = llvm.mlir.constant(dense<1.98756912E-4> : vector<7x8xf32>) : !llvm.array<7 x vector<8xf32>>
          %34 = llvm.mlir.constant(dense<2.12194442E-4> : vector<7x8xf32>) : !llvm.array<7 x vector<8xf32>>
          %35 = llvm.mlir.constant(dense<-0.693359375> : vector<7x8xf32>) : !llvm.array<7 x vector<8xf32>>
          %36 = llvm.mlir.constant(dense<1.44269502> : vector<7x8xf32>) : !llvm.array<7 x vector<8xf32>>
          %37 = llvm.mlir.constant(dense<1.000000e+00> : vector<7x8xf32>) : !llvm.array<7 x vector<8xf32>>
          %38 = llvm.mlir.constant(dense<5.000000e-01> : vector<7x8xf32>) : !llvm.array<7 x vector<8xf32>>
          %39 = llvm.mlir.poison : vector<56xf32>
          %40 = llvm.mlir.poison : vector<8xf32>
          %41 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %42 = llvm.mlir.constant(dense<0.176776692> : vector<7x8xf32>) : !llvm.array<7 x vector<8xf32>>
          %43 = llvm.mlir.constant(dense<0.000000e+00> : vector<7xf32>) : vector<7xf32>
          %44 = llvm.mlir.constant(dense<0.176776692> : vector<8xf32>) : vector<8xf32>
          %45 = llvm.mlir.constant(dense<0xFFC00000> : vector<7xf32>) : vector<7xf32>
          %46 = llvm.mlir.constant(1003520 : index) : i64
          %47 = llvm.mlir.constant(0 : index) : i64
          %48 = llvm.mlir.constant(1 : index) : i64
          %49 = llvm.mlir.constant(7 : index) : i64
          %50 = llvm.mlir.constant(49 : index) : i64
          %51 = llvm.mlir.constant(8 : index) : i64
          %52 = llvm.alloca %49 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %53 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %54 = llvm.extractvalue %53[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %55 = llvm.load %54 : !llvm.ptr -> i32
          %56 = llvm.zext %55 : i32 to i64
          %57 = llvm.extractvalue %53[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %58 = llvm.load %57 : !llvm.ptr -> !llvm.ptr
          %59 = llvm.mul %56, %20 : i64
          %60 = llvm.udiv %59, %21 : i64
          %61 = llvm.getelementptr %58[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %18 ["align"(%61, %17 : !llvm.ptr, i64)] : i1
          %62 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %63 = llvm.extractvalue %62[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %64 = llvm.getelementptr %63[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %65 = llvm.load %64 : !llvm.ptr -> !llvm.ptr
          %66 = llvm.mul %46, %20 : i64
          %67 = llvm.udiv %66, %21 : i64
          %68 = llvm.getelementptr %65[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %18 ["align"(%68, %17 : !llvm.ptr, i64)] : i1
          %69 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %70 = llvm.extractvalue %69[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %71 = llvm.zext %70 : i32 to i64
          %72 = llvm.sdiv %71, %49 : i64
          %73 = llvm.mul %72, %49 : i64
          %74 = llvm.icmp "ne" %71, %73 : i64
          %75 = llvm.icmp "slt" %71, %47 : i64
          %76 = llvm.and %74, %75 : i1
          %77 = llvm.add %72, %22 : i64
          %78 = llvm.select %76, %77, %72 : i1, i64
          %79 = llvm.srem %71, %49 : i64
          %80 = llvm.icmp "slt" %79, %47 : i64
          %81 = llvm.add %79, %49 overflow<nsw> : i64
          %82 = llvm.select %80, %81, %79 : i1, i64
          %83 = llvm.mul %82, %49 overflow<nsw> : i64
          %84 = llvm.mul %47, %49 : i64
          %85 = llvm.add %84, %47 : i64
          %86 = llvm.getelementptr %52[%85] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %45, %86 {alignment = 4 : i64} : vector<7xf32>, !llvm.ptr
          llvm.br ^bb1(%47 : i64)
        ^bb1(%87: i64):  // 2 preds: ^bb0, ^bb5
          %88 = llvm.icmp "slt" %87, %49 : i64
          llvm.cond_br %88, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %89 = llvm.add %84, %87 : i64
          %90 = llvm.getelementptr %52[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %91 = llvm.load %90 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          llvm.br ^bb3(%47, %91 : i64, vector<1xf32>)
        ^bb3(%92: i64, %93: vector<1xf32>):  // 2 preds: ^bb2, ^bb4
          %94 = llvm.icmp "slt" %92, %50 : i64
          llvm.cond_br %94, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %95 = llvm.sub %50, %92 : i64
          %96 = llvm.icmp "slt" %95, %51 : i64
          %97 = llvm.select %96, %95, %51 : i1, i64
          %98 = llvm.trunc %97 : i64 to i32
          %99 = llvm.insertelement %98, %16[%15 : i32] : vector<8xi32>
          %100 = llvm.shufflevector %99, %16 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %101 = llvm.icmp "sgt" %100, %41 : vector<8xi32>
          %102 = llvm.add %83, %87 : i64
          %103 = llvm.mul %78, %19 : i64
          %104 = llvm.mul %102, %50 : i64
          %105 = llvm.add %103, %104 : i64
          %106 = llvm.add %105, %92 : i64
          %107 = llvm.getelementptr %61[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %108 = llvm.intr.masked.load %107, %101, %40 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %109 = llvm.fmul %108, %44 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %110 = llvm.extractelement %93[%14 : i64] : vector<1xf32>
          %111 = "llvm.intr.vp.reduce.fmax"(%110, %109, %101, %13) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %112 = llvm.insertelement %111, %12[%15 : i32] : vector<1xf32>
          %113 = llvm.add %92, %51 : i64
          llvm.br ^bb3(%113, %112 : i64, vector<1xf32>)
        ^bb5:  // pred: ^bb3
          %114 = llvm.extractelement %93[%14 : i64] : vector<1xf32>
          %115 = llvm.mul %47, %49 overflow<nsw, nuw> : i64
          %116 = llvm.add %115, %87 overflow<nsw, nuw> : i64
          %117 = llvm.getelementptr inbounds|nuw %52[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %114, %117 : f32, !llvm.ptr
          %118 = llvm.add %87, %48 : i64
          llvm.br ^bb1(%118 : i64)
        ^bb6:  // pred: ^bb1
          %119 = llvm.load %86 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %120 = llvm.shufflevector %119, %119 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %121 = llvm.shufflevector %120, %39 [0, 1, 2, 3, 4, 5, 6, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %122 = llvm.shufflevector %120, %121 [56, 57, 58, 59, 60, 61, 62, 0, 1, 2, 3, 4, 5, 6, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %123 = llvm.shufflevector %120, %122 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 0, 1, 2, 3, 4, 5, 6, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %124 = llvm.shufflevector %120, %123 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 0, 1, 2, 3, 4, 5, 6, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %125 = llvm.shufflevector %120, %124 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 0, 1, 2, 3, 4, 5, 6, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %126 = llvm.shufflevector %120, %125 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 0, 1, 2, 3, 4, 5, 6, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %127 = llvm.shufflevector %120, %126 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 0, 1, 2, 3, 4, 5, 6, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %128 = llvm.shufflevector %120, %127 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 0, 1, 2, 3, 4, 5, 6] : vector<56xf32> 
          %129 = llvm.shufflevector %128, %128 [0, 7, 14, 21, 28, 35, 42, 49, 1, 8, 15, 22, 29, 36, 43, 50, 2, 9, 16, 23, 30, 37, 44, 51, 3, 10, 17, 24, 31, 38, 45, 52, 4, 11, 18, 25, 32, 39, 46, 53, 5, 12, 19, 26, 33, 40, 47, 54, 6, 13, 20, 27, 34, 41, 48, 55] : vector<56xf32> 
          %130 = llvm.shufflevector %129, %129 [0, 1, 2, 3, 4, 5, 6, 7] : vector<56xf32> 
          %131 = llvm.shufflevector %129, %129 [8, 9, 10, 11, 12, 13, 14, 15] : vector<56xf32> 
          %132 = llvm.shufflevector %129, %129 [16, 17, 18, 19, 20, 21, 22, 23] : vector<56xf32> 
          %133 = llvm.shufflevector %129, %129 [24, 25, 26, 27, 28, 29, 30, 31] : vector<56xf32> 
          %134 = llvm.shufflevector %129, %129 [32, 33, 34, 35, 36, 37, 38, 39] : vector<56xf32> 
          %135 = llvm.shufflevector %129, %129 [40, 41, 42, 43, 44, 45, 46, 47] : vector<56xf32> 
          %136 = llvm.shufflevector %129, %129 [48, 49, 50, 51, 52, 53, 54, 55] : vector<56xf32> 
          llvm.br ^bb7(%47, %43 : i64, vector<7xf32>)
        ^bb7(%137: i64, %138: vector<7xf32>):  // 2 preds: ^bb6, ^bb8
          %139 = llvm.icmp "slt" %137, %50 : i64
          llvm.cond_br %139, ^bb8, ^bb9
        ^bb8:  // pred: ^bb7
          %140 = llvm.sub %50, %137 : i64
          %141 = llvm.icmp "slt" %140, %51 : i64
          %142 = llvm.select %141, %140, %51 : i1, i64
          %143 = llvm.trunc %142 : i64 to i32
          %144 = llvm.insertelement %143, %16[%15 : i32] : vector<8xi32>
          %145 = llvm.shufflevector %144, %16 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %146 = llvm.icmp "sgt" %145, %41 : vector<8xi32>
          %147 = llvm.mul %78, %19 : i64
          %148 = llvm.mul %83, %50 : i64
          %149 = llvm.add %147, %148 : i64
          %150 = llvm.add %149, %137 : i64
          %151 = llvm.getelementptr %61[%150] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %152 = llvm.intr.masked.load %151, %146, %40 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %153 = llvm.add %83, %48 : i64
          %154 = llvm.mul %153, %50 : i64
          %155 = llvm.add %147, %154 : i64
          %156 = llvm.add %155, %137 : i64
          %157 = llvm.getelementptr %61[%156] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %158 = llvm.intr.masked.load %157, %146, %40 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %159 = llvm.add %83, %11 : i64
          %160 = llvm.mul %159, %50 : i64
          %161 = llvm.add %147, %160 : i64
          %162 = llvm.add %161, %137 : i64
          %163 = llvm.getelementptr %61[%162] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %164 = llvm.intr.masked.load %163, %146, %40 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %165 = llvm.add %83, %10 : i64
          %166 = llvm.mul %165, %50 : i64
          %167 = llvm.add %147, %166 : i64
          %168 = llvm.add %167, %137 : i64
          %169 = llvm.getelementptr %61[%168] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %170 = llvm.intr.masked.load %169, %146, %40 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %171 = llvm.add %83, %9 : i64
          %172 = llvm.mul %171, %50 : i64
          %173 = llvm.add %147, %172 : i64
          %174 = llvm.add %173, %137 : i64
          %175 = llvm.getelementptr %61[%174] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %176 = llvm.intr.masked.load %175, %146, %40 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %177 = llvm.add %83, %8 : i64
          %178 = llvm.mul %177, %50 : i64
          %179 = llvm.add %147, %178 : i64
          %180 = llvm.add %179, %137 : i64
          %181 = llvm.getelementptr %61[%180] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %182 = llvm.intr.masked.load %181, %146, %40 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %183 = llvm.add %83, %7 : i64
          %184 = llvm.mul %183, %50 : i64
          %185 = llvm.add %147, %184 : i64
          %186 = llvm.add %185, %137 : i64
          %187 = llvm.getelementptr %61[%186] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %188 = llvm.intr.masked.load %187, %146, %40 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %189 = llvm.extractvalue %42[0] : !llvm.array<7 x vector<8xf32>> 
          %190 = llvm.fmul %152, %189 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %191 = llvm.extractvalue %42[1] : !llvm.array<7 x vector<8xf32>> 
          %192 = llvm.fmul %158, %191 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %193 = llvm.extractvalue %42[2] : !llvm.array<7 x vector<8xf32>> 
          %194 = llvm.fmul %164, %193 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %195 = llvm.extractvalue %42[3] : !llvm.array<7 x vector<8xf32>> 
          %196 = llvm.fmul %170, %195 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %197 = llvm.extractvalue %42[4] : !llvm.array<7 x vector<8xf32>> 
          %198 = llvm.fmul %176, %197 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %199 = llvm.extractvalue %42[5] : !llvm.array<7 x vector<8xf32>> 
          %200 = llvm.fmul %182, %199 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %201 = llvm.extractvalue %42[6] : !llvm.array<7 x vector<8xf32>> 
          %202 = llvm.fmul %188, %201 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %203 = llvm.fsub %190, %130 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %204 = llvm.fsub %192, %131 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %205 = llvm.fsub %194, %132 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %206 = llvm.fsub %196, %133 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %207 = llvm.fsub %198, %134 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %208 = llvm.fsub %200, %135 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %209 = llvm.fsub %202, %136 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %210 = llvm.extractvalue %28[0] : !llvm.array<7 x vector<8xf32>> 
          %211 = llvm.fcmp "uge" %203, %210 : vector<8xf32>
          %212 = llvm.extractvalue %28[1] : !llvm.array<7 x vector<8xf32>> 
          %213 = llvm.fcmp "uge" %204, %212 : vector<8xf32>
          %214 = llvm.extractvalue %28[2] : !llvm.array<7 x vector<8xf32>> 
          %215 = llvm.fcmp "uge" %205, %214 : vector<8xf32>
          %216 = llvm.extractvalue %28[3] : !llvm.array<7 x vector<8xf32>> 
          %217 = llvm.fcmp "uge" %206, %216 : vector<8xf32>
          %218 = llvm.extractvalue %28[4] : !llvm.array<7 x vector<8xf32>> 
          %219 = llvm.fcmp "uge" %207, %218 : vector<8xf32>
          %220 = llvm.extractvalue %28[5] : !llvm.array<7 x vector<8xf32>> 
          %221 = llvm.fcmp "uge" %208, %220 : vector<8xf32>
          %222 = llvm.extractvalue %28[6] : !llvm.array<7 x vector<8xf32>> 
          %223 = llvm.fcmp "uge" %209, %222 : vector<8xf32>
          %224 = llvm.select %211, %203, %210 : vector<8xi1>, vector<8xf32>
          %225 = llvm.select %213, %204, %212 : vector<8xi1>, vector<8xf32>
          %226 = llvm.select %215, %205, %214 : vector<8xi1>, vector<8xf32>
          %227 = llvm.select %217, %206, %216 : vector<8xi1>, vector<8xf32>
          %228 = llvm.select %219, %207, %218 : vector<8xi1>, vector<8xf32>
          %229 = llvm.select %221, %208, %220 : vector<8xi1>, vector<8xf32>
          %230 = llvm.select %223, %209, %222 : vector<8xi1>, vector<8xf32>
          %231 = llvm.extractvalue %27[0] : !llvm.array<7 x vector<8xf32>> 
          %232 = llvm.fcmp "ule" %224, %231 : vector<8xf32>
          %233 = llvm.extractvalue %27[1] : !llvm.array<7 x vector<8xf32>> 
          %234 = llvm.fcmp "ule" %225, %233 : vector<8xf32>
          %235 = llvm.extractvalue %27[2] : !llvm.array<7 x vector<8xf32>> 
          %236 = llvm.fcmp "ule" %226, %235 : vector<8xf32>
          %237 = llvm.extractvalue %27[3] : !llvm.array<7 x vector<8xf32>> 
          %238 = llvm.fcmp "ule" %227, %237 : vector<8xf32>
          %239 = llvm.extractvalue %27[4] : !llvm.array<7 x vector<8xf32>> 
          %240 = llvm.fcmp "ule" %228, %239 : vector<8xf32>
          %241 = llvm.extractvalue %27[5] : !llvm.array<7 x vector<8xf32>> 
          %242 = llvm.fcmp "ule" %229, %241 : vector<8xf32>
          %243 = llvm.extractvalue %27[6] : !llvm.array<7 x vector<8xf32>> 
          %244 = llvm.fcmp "ule" %230, %243 : vector<8xf32>
          %245 = llvm.select %232, %224, %231 : vector<8xi1>, vector<8xf32>
          %246 = llvm.select %234, %225, %233 : vector<8xi1>, vector<8xf32>
          %247 = llvm.select %236, %226, %235 : vector<8xi1>, vector<8xf32>
          %248 = llvm.select %238, %227, %237 : vector<8xi1>, vector<8xf32>
          %249 = llvm.select %240, %228, %239 : vector<8xi1>, vector<8xf32>
          %250 = llvm.select %242, %229, %241 : vector<8xi1>, vector<8xf32>
          %251 = llvm.select %244, %230, %243 : vector<8xi1>, vector<8xf32>
          %252 = llvm.extractvalue %36[0] : !llvm.array<7 x vector<8xf32>> 
          %253 = llvm.extractvalue %38[0] : !llvm.array<7 x vector<8xf32>> 
          %254 = llvm.intr.fma(%245, %252, %253) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %255 = llvm.extractvalue %36[1] : !llvm.array<7 x vector<8xf32>> 
          %256 = llvm.extractvalue %38[1] : !llvm.array<7 x vector<8xf32>> 
          %257 = llvm.intr.fma(%246, %255, %256) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %258 = llvm.extractvalue %36[2] : !llvm.array<7 x vector<8xf32>> 
          %259 = llvm.extractvalue %38[2] : !llvm.array<7 x vector<8xf32>> 
          %260 = llvm.intr.fma(%247, %258, %259) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %261 = llvm.extractvalue %36[3] : !llvm.array<7 x vector<8xf32>> 
          %262 = llvm.extractvalue %38[3] : !llvm.array<7 x vector<8xf32>> 
          %263 = llvm.intr.fma(%248, %261, %262) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %264 = llvm.extractvalue %36[4] : !llvm.array<7 x vector<8xf32>> 
          %265 = llvm.extractvalue %38[4] : !llvm.array<7 x vector<8xf32>> 
          %266 = llvm.intr.fma(%249, %264, %265) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %267 = llvm.extractvalue %36[5] : !llvm.array<7 x vector<8xf32>> 
          %268 = llvm.extractvalue %38[5] : !llvm.array<7 x vector<8xf32>> 
          %269 = llvm.intr.fma(%250, %267, %268) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %270 = llvm.extractvalue %36[6] : !llvm.array<7 x vector<8xf32>> 
          %271 = llvm.extractvalue %38[6] : !llvm.array<7 x vector<8xf32>> 
          %272 = llvm.intr.fma(%251, %270, %271) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %273 = llvm.intr.floor(%254) : (vector<8xf32>) -> vector<8xf32>
          %274 = llvm.intr.floor(%257) : (vector<8xf32>) -> vector<8xf32>
          %275 = llvm.intr.floor(%260) : (vector<8xf32>) -> vector<8xf32>
          %276 = llvm.intr.floor(%263) : (vector<8xf32>) -> vector<8xf32>
          %277 = llvm.intr.floor(%266) : (vector<8xf32>) -> vector<8xf32>
          %278 = llvm.intr.floor(%269) : (vector<8xf32>) -> vector<8xf32>
          %279 = llvm.intr.floor(%272) : (vector<8xf32>) -> vector<8xf32>
          %280 = llvm.extractvalue %26[0] : !llvm.array<7 x vector<8xf32>> 
          %281 = llvm.fcmp "uge" %273, %280 : vector<8xf32>
          %282 = llvm.extractvalue %26[1] : !llvm.array<7 x vector<8xf32>> 
          %283 = llvm.fcmp "uge" %274, %282 : vector<8xf32>
          %284 = llvm.extractvalue %26[2] : !llvm.array<7 x vector<8xf32>> 
          %285 = llvm.fcmp "uge" %275, %284 : vector<8xf32>
          %286 = llvm.extractvalue %26[3] : !llvm.array<7 x vector<8xf32>> 
          %287 = llvm.fcmp "uge" %276, %286 : vector<8xf32>
          %288 = llvm.extractvalue %26[4] : !llvm.array<7 x vector<8xf32>> 
          %289 = llvm.fcmp "uge" %277, %288 : vector<8xf32>
          %290 = llvm.extractvalue %26[5] : !llvm.array<7 x vector<8xf32>> 
          %291 = llvm.fcmp "uge" %278, %290 : vector<8xf32>
          %292 = llvm.extractvalue %26[6] : !llvm.array<7 x vector<8xf32>> 
          %293 = llvm.fcmp "uge" %279, %292 : vector<8xf32>
          %294 = llvm.select %281, %273, %280 : vector<8xi1>, vector<8xf32>
          %295 = llvm.select %283, %274, %282 : vector<8xi1>, vector<8xf32>
          %296 = llvm.select %285, %275, %284 : vector<8xi1>, vector<8xf32>
          %297 = llvm.select %287, %276, %286 : vector<8xi1>, vector<8xf32>
          %298 = llvm.select %289, %277, %288 : vector<8xi1>, vector<8xf32>
          %299 = llvm.select %291, %278, %290 : vector<8xi1>, vector<8xf32>
          %300 = llvm.select %293, %279, %292 : vector<8xi1>, vector<8xf32>
          %301 = llvm.extractvalue %25[0] : !llvm.array<7 x vector<8xf32>> 
          %302 = llvm.fcmp "ule" %294, %301 : vector<8xf32>
          %303 = llvm.extractvalue %25[1] : !llvm.array<7 x vector<8xf32>> 
          %304 = llvm.fcmp "ule" %295, %303 : vector<8xf32>
          %305 = llvm.extractvalue %25[2] : !llvm.array<7 x vector<8xf32>> 
          %306 = llvm.fcmp "ule" %296, %305 : vector<8xf32>
          %307 = llvm.extractvalue %25[3] : !llvm.array<7 x vector<8xf32>> 
          %308 = llvm.fcmp "ule" %297, %307 : vector<8xf32>
          %309 = llvm.extractvalue %25[4] : !llvm.array<7 x vector<8xf32>> 
          %310 = llvm.fcmp "ule" %298, %309 : vector<8xf32>
          %311 = llvm.extractvalue %25[5] : !llvm.array<7 x vector<8xf32>> 
          %312 = llvm.fcmp "ule" %299, %311 : vector<8xf32>
          %313 = llvm.extractvalue %25[6] : !llvm.array<7 x vector<8xf32>> 
          %314 = llvm.fcmp "ule" %300, %313 : vector<8xf32>
          %315 = llvm.select %302, %294, %301 : vector<8xi1>, vector<8xf32>
          %316 = llvm.select %304, %295, %303 : vector<8xi1>, vector<8xf32>
          %317 = llvm.select %306, %296, %305 : vector<8xi1>, vector<8xf32>
          %318 = llvm.select %308, %297, %307 : vector<8xi1>, vector<8xf32>
          %319 = llvm.select %310, %298, %309 : vector<8xi1>, vector<8xf32>
          %320 = llvm.select %312, %299, %311 : vector<8xi1>, vector<8xf32>
          %321 = llvm.select %314, %300, %313 : vector<8xi1>, vector<8xf32>
          %322 = llvm.extractvalue %35[0] : !llvm.array<7 x vector<8xf32>> 
          %323 = llvm.intr.fma(%322, %315, %245) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %324 = llvm.extractvalue %35[1] : !llvm.array<7 x vector<8xf32>> 
          %325 = llvm.intr.fma(%324, %316, %246) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %326 = llvm.extractvalue %35[2] : !llvm.array<7 x vector<8xf32>> 
          %327 = llvm.intr.fma(%326, %317, %247) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %328 = llvm.extractvalue %35[3] : !llvm.array<7 x vector<8xf32>> 
          %329 = llvm.intr.fma(%328, %318, %248) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %330 = llvm.extractvalue %35[4] : !llvm.array<7 x vector<8xf32>> 
          %331 = llvm.intr.fma(%330, %319, %249) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %332 = llvm.extractvalue %35[5] : !llvm.array<7 x vector<8xf32>> 
          %333 = llvm.intr.fma(%332, %320, %250) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %334 = llvm.extractvalue %35[6] : !llvm.array<7 x vector<8xf32>> 
          %335 = llvm.intr.fma(%334, %321, %251) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %336 = llvm.extractvalue %34[0] : !llvm.array<7 x vector<8xf32>> 
          %337 = llvm.intr.fma(%336, %315, %323) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %338 = llvm.extractvalue %34[1] : !llvm.array<7 x vector<8xf32>> 
          %339 = llvm.intr.fma(%338, %316, %325) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %340 = llvm.extractvalue %34[2] : !llvm.array<7 x vector<8xf32>> 
          %341 = llvm.intr.fma(%340, %317, %327) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %342 = llvm.extractvalue %34[3] : !llvm.array<7 x vector<8xf32>> 
          %343 = llvm.intr.fma(%342, %318, %329) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %344 = llvm.extractvalue %34[4] : !llvm.array<7 x vector<8xf32>> 
          %345 = llvm.intr.fma(%344, %319, %331) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %346 = llvm.extractvalue %34[5] : !llvm.array<7 x vector<8xf32>> 
          %347 = llvm.intr.fma(%346, %320, %333) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %348 = llvm.extractvalue %34[6] : !llvm.array<7 x vector<8xf32>> 
          %349 = llvm.intr.fma(%348, %321, %335) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %350 = llvm.extractvalue %33[0] : !llvm.array<7 x vector<8xf32>> 
          %351 = llvm.extractvalue %32[0] : !llvm.array<7 x vector<8xf32>> 
          %352 = llvm.intr.fma(%337, %350, %351) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %353 = llvm.extractvalue %33[1] : !llvm.array<7 x vector<8xf32>> 
          %354 = llvm.extractvalue %32[1] : !llvm.array<7 x vector<8xf32>> 
          %355 = llvm.intr.fma(%339, %353, %354) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %356 = llvm.extractvalue %33[2] : !llvm.array<7 x vector<8xf32>> 
          %357 = llvm.extractvalue %32[2] : !llvm.array<7 x vector<8xf32>> 
          %358 = llvm.intr.fma(%341, %356, %357) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %359 = llvm.extractvalue %33[3] : !llvm.array<7 x vector<8xf32>> 
          %360 = llvm.extractvalue %32[3] : !llvm.array<7 x vector<8xf32>> 
          %361 = llvm.intr.fma(%343, %359, %360) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %362 = llvm.extractvalue %33[4] : !llvm.array<7 x vector<8xf32>> 
          %363 = llvm.extractvalue %32[4] : !llvm.array<7 x vector<8xf32>> 
          %364 = llvm.intr.fma(%345, %362, %363) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %365 = llvm.extractvalue %33[5] : !llvm.array<7 x vector<8xf32>> 
          %366 = llvm.extractvalue %32[5] : !llvm.array<7 x vector<8xf32>> 
          %367 = llvm.intr.fma(%347, %365, %366) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %368 = llvm.extractvalue %33[6] : !llvm.array<7 x vector<8xf32>> 
          %369 = llvm.extractvalue %32[6] : !llvm.array<7 x vector<8xf32>> 
          %370 = llvm.intr.fma(%349, %368, %369) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %371 = llvm.extractvalue %31[0] : !llvm.array<7 x vector<8xf32>> 
          %372 = llvm.intr.fma(%352, %337, %371) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %373 = llvm.extractvalue %31[1] : !llvm.array<7 x vector<8xf32>> 
          %374 = llvm.intr.fma(%355, %339, %373) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %375 = llvm.extractvalue %31[2] : !llvm.array<7 x vector<8xf32>> 
          %376 = llvm.intr.fma(%358, %341, %375) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %377 = llvm.extractvalue %31[3] : !llvm.array<7 x vector<8xf32>> 
          %378 = llvm.intr.fma(%361, %343, %377) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %379 = llvm.extractvalue %31[4] : !llvm.array<7 x vector<8xf32>> 
          %380 = llvm.intr.fma(%364, %345, %379) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %381 = llvm.extractvalue %31[5] : !llvm.array<7 x vector<8xf32>> 
          %382 = llvm.intr.fma(%367, %347, %381) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %383 = llvm.extractvalue %31[6] : !llvm.array<7 x vector<8xf32>> 
          %384 = llvm.intr.fma(%370, %349, %383) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %385 = llvm.extractvalue %30[0] : !llvm.array<7 x vector<8xf32>> 
          %386 = llvm.intr.fma(%372, %337, %385) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %387 = llvm.extractvalue %30[1] : !llvm.array<7 x vector<8xf32>> 
          %388 = llvm.intr.fma(%374, %339, %387) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %389 = llvm.extractvalue %30[2] : !llvm.array<7 x vector<8xf32>> 
          %390 = llvm.intr.fma(%376, %341, %389) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %391 = llvm.extractvalue %30[3] : !llvm.array<7 x vector<8xf32>> 
          %392 = llvm.intr.fma(%378, %343, %391) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %393 = llvm.extractvalue %30[4] : !llvm.array<7 x vector<8xf32>> 
          %394 = llvm.intr.fma(%380, %345, %393) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %395 = llvm.extractvalue %30[5] : !llvm.array<7 x vector<8xf32>> 
          %396 = llvm.intr.fma(%382, %347, %395) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %397 = llvm.extractvalue %30[6] : !llvm.array<7 x vector<8xf32>> 
          %398 = llvm.intr.fma(%384, %349, %397) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %399 = llvm.extractvalue %29[0] : !llvm.array<7 x vector<8xf32>> 
          %400 = llvm.intr.fma(%386, %337, %399) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %401 = llvm.extractvalue %29[1] : !llvm.array<7 x vector<8xf32>> 
          %402 = llvm.intr.fma(%388, %339, %401) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %403 = llvm.extractvalue %29[2] : !llvm.array<7 x vector<8xf32>> 
          %404 = llvm.intr.fma(%390, %341, %403) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %405 = llvm.extractvalue %29[3] : !llvm.array<7 x vector<8xf32>> 
          %406 = llvm.intr.fma(%392, %343, %405) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %407 = llvm.extractvalue %29[4] : !llvm.array<7 x vector<8xf32>> 
          %408 = llvm.intr.fma(%394, %345, %407) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %409 = llvm.extractvalue %29[5] : !llvm.array<7 x vector<8xf32>> 
          %410 = llvm.intr.fma(%396, %347, %409) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %411 = llvm.extractvalue %29[6] : !llvm.array<7 x vector<8xf32>> 
          %412 = llvm.intr.fma(%398, %349, %411) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %413 = llvm.intr.fma(%400, %337, %253) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %414 = llvm.intr.fma(%402, %339, %256) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %415 = llvm.intr.fma(%404, %341, %259) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %416 = llvm.intr.fma(%406, %343, %262) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %417 = llvm.intr.fma(%408, %345, %265) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %418 = llvm.intr.fma(%410, %347, %268) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %419 = llvm.intr.fma(%412, %349, %271) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %420 = llvm.fmul %337, %337 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %421 = llvm.fmul %339, %339 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %422 = llvm.fmul %341, %341 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %423 = llvm.fmul %343, %343 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %424 = llvm.fmul %345, %345 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %425 = llvm.fmul %347, %347 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %426 = llvm.fmul %349, %349 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %427 = llvm.intr.fma(%413, %420, %337) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %428 = llvm.intr.fma(%414, %421, %339) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %429 = llvm.intr.fma(%415, %422, %341) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %430 = llvm.intr.fma(%416, %423, %343) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %431 = llvm.intr.fma(%417, %424, %345) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %432 = llvm.intr.fma(%418, %425, %347) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %433 = llvm.intr.fma(%419, %426, %349) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %434 = llvm.extractvalue %37[0] : !llvm.array<7 x vector<8xf32>> 
          %435 = llvm.fadd %427, %434 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %436 = llvm.extractvalue %37[1] : !llvm.array<7 x vector<8xf32>> 
          %437 = llvm.fadd %428, %436 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %438 = llvm.extractvalue %37[2] : !llvm.array<7 x vector<8xf32>> 
          %439 = llvm.fadd %429, %438 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %440 = llvm.extractvalue %37[3] : !llvm.array<7 x vector<8xf32>> 
          %441 = llvm.fadd %430, %440 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %442 = llvm.extractvalue %37[4] : !llvm.array<7 x vector<8xf32>> 
          %443 = llvm.fadd %431, %442 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %444 = llvm.extractvalue %37[5] : !llvm.array<7 x vector<8xf32>> 
          %445 = llvm.fadd %432, %444 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %446 = llvm.extractvalue %37[6] : !llvm.array<7 x vector<8xf32>> 
          %447 = llvm.fadd %433, %446 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %448 = llvm.fptosi %315 : vector<8xf32> to vector<8xi32>
          %449 = llvm.fptosi %316 : vector<8xf32> to vector<8xi32>
          %450 = llvm.fptosi %317 : vector<8xf32> to vector<8xi32>
          %451 = llvm.fptosi %318 : vector<8xf32> to vector<8xi32>
          %452 = llvm.fptosi %319 : vector<8xf32> to vector<8xi32>
          %453 = llvm.fptosi %320 : vector<8xf32> to vector<8xi32>
          %454 = llvm.fptosi %321 : vector<8xf32> to vector<8xi32>
          %455 = llvm.extractvalue %23[0] : !llvm.array<7 x vector<8xi32>> 
          %456 = llvm.add %448, %455 : vector<8xi32>
          %457 = llvm.extractvalue %23[1] : !llvm.array<7 x vector<8xi32>> 
          %458 = llvm.add %449, %457 : vector<8xi32>
          %459 = llvm.extractvalue %23[2] : !llvm.array<7 x vector<8xi32>> 
          %460 = llvm.add %450, %459 : vector<8xi32>
          %461 = llvm.extractvalue %23[3] : !llvm.array<7 x vector<8xi32>> 
          %462 = llvm.add %451, %461 : vector<8xi32>
          %463 = llvm.extractvalue %23[4] : !llvm.array<7 x vector<8xi32>> 
          %464 = llvm.add %452, %463 : vector<8xi32>
          %465 = llvm.extractvalue %23[5] : !llvm.array<7 x vector<8xi32>> 
          %466 = llvm.add %453, %465 : vector<8xi32>
          %467 = llvm.extractvalue %23[6] : !llvm.array<7 x vector<8xi32>> 
          %468 = llvm.add %454, %467 : vector<8xi32>
          %469 = llvm.extractvalue %24[0] : !llvm.array<7 x vector<8xi32>> 
          %470 = llvm.shl %456, %469 : vector<8xi32>
          %471 = llvm.extractvalue %24[1] : !llvm.array<7 x vector<8xi32>> 
          %472 = llvm.shl %458, %471 : vector<8xi32>
          %473 = llvm.extractvalue %24[2] : !llvm.array<7 x vector<8xi32>> 
          %474 = llvm.shl %460, %473 : vector<8xi32>
          %475 = llvm.extractvalue %24[3] : !llvm.array<7 x vector<8xi32>> 
          %476 = llvm.shl %462, %475 : vector<8xi32>
          %477 = llvm.extractvalue %24[4] : !llvm.array<7 x vector<8xi32>> 
          %478 = llvm.shl %464, %477 : vector<8xi32>
          %479 = llvm.extractvalue %24[5] : !llvm.array<7 x vector<8xi32>> 
          %480 = llvm.shl %466, %479 : vector<8xi32>
          %481 = llvm.extractvalue %24[6] : !llvm.array<7 x vector<8xi32>> 
          %482 = llvm.shl %468, %481 : vector<8xi32>
          %483 = llvm.bitcast %470 : vector<8xi32> to vector<8xf32>
          %484 = llvm.bitcast %472 : vector<8xi32> to vector<8xf32>
          %485 = llvm.bitcast %474 : vector<8xi32> to vector<8xf32>
          %486 = llvm.bitcast %476 : vector<8xi32> to vector<8xf32>
          %487 = llvm.bitcast %478 : vector<8xi32> to vector<8xf32>
          %488 = llvm.bitcast %480 : vector<8xi32> to vector<8xf32>
          %489 = llvm.bitcast %482 : vector<8xi32> to vector<8xf32>
          %490 = llvm.fmul %435, %483 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %491 = llvm.fmul %437, %484 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %492 = llvm.fmul %439, %485 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %493 = llvm.fmul %441, %486 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %494 = llvm.fmul %443, %487 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %495 = llvm.fmul %445, %488 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %496 = llvm.fmul %447, %489 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %497 = llvm.extractelement %138[%14 : i64] : vector<7xf32>
          %498 = "llvm.intr.vp.reduce.fadd"(%497, %490, %146, %13) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %499 = llvm.extractelement %138[%6 : i64] : vector<7xf32>
          %500 = "llvm.intr.vp.reduce.fadd"(%499, %491, %146, %13) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %501 = llvm.extractelement %138[%5 : i64] : vector<7xf32>
          %502 = "llvm.intr.vp.reduce.fadd"(%501, %492, %146, %13) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %503 = llvm.extractelement %138[%4 : i64] : vector<7xf32>
          %504 = "llvm.intr.vp.reduce.fadd"(%503, %493, %146, %13) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %505 = llvm.extractelement %138[%3 : i64] : vector<7xf32>
          %506 = "llvm.intr.vp.reduce.fadd"(%505, %494, %146, %13) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %507 = llvm.extractelement %138[%2 : i64] : vector<7xf32>
          %508 = "llvm.intr.vp.reduce.fadd"(%507, %495, %146, %13) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %509 = llvm.extractelement %138[%1 : i64] : vector<7xf32>
          %510 = "llvm.intr.vp.reduce.fadd"(%509, %496, %146, %13) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %511 = llvm.insertelement %498, %0[%14 : i64] : vector<7xf32>
          %512 = llvm.insertelement %500, %511[%6 : i64] : vector<7xf32>
          %513 = llvm.insertelement %502, %512[%5 : i64] : vector<7xf32>
          %514 = llvm.insertelement %504, %513[%4 : i64] : vector<7xf32>
          %515 = llvm.insertelement %506, %514[%3 : i64] : vector<7xf32>
          %516 = llvm.insertelement %508, %515[%2 : i64] : vector<7xf32>
          %517 = llvm.insertelement %510, %516[%1 : i64] : vector<7xf32>
          %518 = llvm.add %137, %51 : i64
          llvm.br ^bb7(%518, %517 : i64, vector<7xf32>)
        ^bb9:  // pred: ^bb7
          %519 = llvm.shufflevector %138, %138 [0, 1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<7xf32> 
          %520 = llvm.shufflevector %519, %39 [0, 1, 2, 3, 4, 5, 6, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %521 = llvm.shufflevector %519, %520 [56, 57, 58, 59, 60, 61, 62, 0, 1, 2, 3, 4, 5, 6, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %522 = llvm.shufflevector %519, %521 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 0, 1, 2, 3, 4, 5, 6, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %523 = llvm.shufflevector %519, %522 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 0, 1, 2, 3, 4, 5, 6, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %524 = llvm.shufflevector %519, %523 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 0, 1, 2, 3, 4, 5, 6, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %525 = llvm.shufflevector %519, %524 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 0, 1, 2, 3, 4, 5, 6, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %526 = llvm.shufflevector %519, %525 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 0, 1, 2, 3, 4, 5, 6, 105, 106, 107, 108, 109, 110, 111] : vector<56xf32> 
          %527 = llvm.shufflevector %519, %526 [56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 0, 1, 2, 3, 4, 5, 6] : vector<56xf32> 
          %528 = llvm.shufflevector %527, %527 [0, 7, 14, 21, 28, 35, 42, 49, 1, 8, 15, 22, 29, 36, 43, 50, 2, 9, 16, 23, 30, 37, 44, 51, 3, 10, 17, 24, 31, 38, 45, 52, 4, 11, 18, 25, 32, 39, 46, 53, 5, 12, 19, 26, 33, 40, 47, 54, 6, 13, 20, 27, 34, 41, 48, 55] : vector<56xf32> 
          %529 = llvm.shufflevector %528, %528 [0, 1, 2, 3, 4, 5, 6, 7] : vector<56xf32> 
          %530 = llvm.shufflevector %528, %528 [8, 9, 10, 11, 12, 13, 14, 15] : vector<56xf32> 
          %531 = llvm.shufflevector %528, %528 [16, 17, 18, 19, 20, 21, 22, 23] : vector<56xf32> 
          %532 = llvm.shufflevector %528, %528 [24, 25, 26, 27, 28, 29, 30, 31] : vector<56xf32> 
          %533 = llvm.shufflevector %528, %528 [32, 33, 34, 35, 36, 37, 38, 39] : vector<56xf32> 
          %534 = llvm.shufflevector %528, %528 [40, 41, 42, 43, 44, 45, 46, 47] : vector<56xf32> 
          %535 = llvm.shufflevector %528, %528 [48, 49, 50, 51, 52, 53, 54, 55] : vector<56xf32> 
          llvm.br ^bb10(%47 : i64)
        ^bb10(%536: i64):  // 2 preds: ^bb9, ^bb11
          %537 = llvm.icmp "slt" %536, %50 : i64
          llvm.cond_br %537, ^bb11, ^bb12
        ^bb11:  // pred: ^bb10
          %538 = llvm.sub %50, %536 : i64
          %539 = llvm.icmp "slt" %538, %51 : i64
          %540 = llvm.select %539, %538, %51 : i1, i64
          %541 = llvm.trunc %540 : i64 to i32
          %542 = llvm.insertelement %541, %16[%15 : i32] : vector<8xi32>
          %543 = llvm.shufflevector %542, %16 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %544 = llvm.icmp "sgt" %543, %41 : vector<8xi32>
          %545 = llvm.mul %78, %19 : i64
          %546 = llvm.mul %83, %50 : i64
          %547 = llvm.add %545, %546 : i64
          %548 = llvm.add %547, %536 : i64
          %549 = llvm.getelementptr %61[%548] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %550 = llvm.intr.masked.load %549, %544, %40 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %551 = llvm.add %83, %48 : i64
          %552 = llvm.mul %551, %50 : i64
          %553 = llvm.add %545, %552 : i64
          %554 = llvm.add %553, %536 : i64
          %555 = llvm.getelementptr %61[%554] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %556 = llvm.intr.masked.load %555, %544, %40 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %557 = llvm.add %83, %11 : i64
          %558 = llvm.mul %557, %50 : i64
          %559 = llvm.add %545, %558 : i64
          %560 = llvm.add %559, %536 : i64
          %561 = llvm.getelementptr %61[%560] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %562 = llvm.intr.masked.load %561, %544, %40 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %563 = llvm.add %83, %10 : i64
          %564 = llvm.mul %563, %50 : i64
          %565 = llvm.add %545, %564 : i64
          %566 = llvm.add %565, %536 : i64
          %567 = llvm.getelementptr %61[%566] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %568 = llvm.intr.masked.load %567, %544, %40 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %569 = llvm.add %83, %9 : i64
          %570 = llvm.mul %569, %50 : i64
          %571 = llvm.add %545, %570 : i64
          %572 = llvm.add %571, %536 : i64
          %573 = llvm.getelementptr %61[%572] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %574 = llvm.intr.masked.load %573, %544, %40 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %575 = llvm.add %83, %8 : i64
          %576 = llvm.mul %575, %50 : i64
          %577 = llvm.add %545, %576 : i64
          %578 = llvm.add %577, %536 : i64
          %579 = llvm.getelementptr %61[%578] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %580 = llvm.intr.masked.load %579, %544, %40 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %581 = llvm.add %83, %7 : i64
          %582 = llvm.mul %581, %50 : i64
          %583 = llvm.add %545, %582 : i64
          %584 = llvm.add %583, %536 : i64
          %585 = llvm.getelementptr %61[%584] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %586 = llvm.intr.masked.load %585, %544, %40 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %587 = llvm.extractvalue %42[0] : !llvm.array<7 x vector<8xf32>> 
          %588 = llvm.fmul %550, %587 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %589 = llvm.extractvalue %42[1] : !llvm.array<7 x vector<8xf32>> 
          %590 = llvm.fmul %556, %589 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %591 = llvm.extractvalue %42[2] : !llvm.array<7 x vector<8xf32>> 
          %592 = llvm.fmul %562, %591 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %593 = llvm.extractvalue %42[3] : !llvm.array<7 x vector<8xf32>> 
          %594 = llvm.fmul %568, %593 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %595 = llvm.extractvalue %42[4] : !llvm.array<7 x vector<8xf32>> 
          %596 = llvm.fmul %574, %595 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %597 = llvm.extractvalue %42[5] : !llvm.array<7 x vector<8xf32>> 
          %598 = llvm.fmul %580, %597 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %599 = llvm.extractvalue %42[6] : !llvm.array<7 x vector<8xf32>> 
          %600 = llvm.fmul %586, %599 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %601 = llvm.fsub %588, %130 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %602 = llvm.fsub %590, %131 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %603 = llvm.fsub %592, %132 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %604 = llvm.fsub %594, %133 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %605 = llvm.fsub %596, %134 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %606 = llvm.fsub %598, %135 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %607 = llvm.fsub %600, %136 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %608 = llvm.extractvalue %28[0] : !llvm.array<7 x vector<8xf32>> 
          %609 = llvm.fcmp "uge" %601, %608 : vector<8xf32>
          %610 = llvm.extractvalue %28[1] : !llvm.array<7 x vector<8xf32>> 
          %611 = llvm.fcmp "uge" %602, %610 : vector<8xf32>
          %612 = llvm.extractvalue %28[2] : !llvm.array<7 x vector<8xf32>> 
          %613 = llvm.fcmp "uge" %603, %612 : vector<8xf32>
          %614 = llvm.extractvalue %28[3] : !llvm.array<7 x vector<8xf32>> 
          %615 = llvm.fcmp "uge" %604, %614 : vector<8xf32>
          %616 = llvm.extractvalue %28[4] : !llvm.array<7 x vector<8xf32>> 
          %617 = llvm.fcmp "uge" %605, %616 : vector<8xf32>
          %618 = llvm.extractvalue %28[5] : !llvm.array<7 x vector<8xf32>> 
          %619 = llvm.fcmp "uge" %606, %618 : vector<8xf32>
          %620 = llvm.extractvalue %28[6] : !llvm.array<7 x vector<8xf32>> 
          %621 = llvm.fcmp "uge" %607, %620 : vector<8xf32>
          %622 = llvm.select %609, %601, %608 : vector<8xi1>, vector<8xf32>
          %623 = llvm.select %611, %602, %610 : vector<8xi1>, vector<8xf32>
          %624 = llvm.select %613, %603, %612 : vector<8xi1>, vector<8xf32>
          %625 = llvm.select %615, %604, %614 : vector<8xi1>, vector<8xf32>
          %626 = llvm.select %617, %605, %616 : vector<8xi1>, vector<8xf32>
          %627 = llvm.select %619, %606, %618 : vector<8xi1>, vector<8xf32>
          %628 = llvm.select %621, %607, %620 : vector<8xi1>, vector<8xf32>
          %629 = llvm.extractvalue %27[0] : !llvm.array<7 x vector<8xf32>> 
          %630 = llvm.fcmp "ule" %622, %629 : vector<8xf32>
          %631 = llvm.extractvalue %27[1] : !llvm.array<7 x vector<8xf32>> 
          %632 = llvm.fcmp "ule" %623, %631 : vector<8xf32>
          %633 = llvm.extractvalue %27[2] : !llvm.array<7 x vector<8xf32>> 
          %634 = llvm.fcmp "ule" %624, %633 : vector<8xf32>
          %635 = llvm.extractvalue %27[3] : !llvm.array<7 x vector<8xf32>> 
          %636 = llvm.fcmp "ule" %625, %635 : vector<8xf32>
          %637 = llvm.extractvalue %27[4] : !llvm.array<7 x vector<8xf32>> 
          %638 = llvm.fcmp "ule" %626, %637 : vector<8xf32>
          %639 = llvm.extractvalue %27[5] : !llvm.array<7 x vector<8xf32>> 
          %640 = llvm.fcmp "ule" %627, %639 : vector<8xf32>
          %641 = llvm.extractvalue %27[6] : !llvm.array<7 x vector<8xf32>> 
          %642 = llvm.fcmp "ule" %628, %641 : vector<8xf32>
          %643 = llvm.select %630, %622, %629 : vector<8xi1>, vector<8xf32>
          %644 = llvm.select %632, %623, %631 : vector<8xi1>, vector<8xf32>
          %645 = llvm.select %634, %624, %633 : vector<8xi1>, vector<8xf32>
          %646 = llvm.select %636, %625, %635 : vector<8xi1>, vector<8xf32>
          %647 = llvm.select %638, %626, %637 : vector<8xi1>, vector<8xf32>
          %648 = llvm.select %640, %627, %639 : vector<8xi1>, vector<8xf32>
          %649 = llvm.select %642, %628, %641 : vector<8xi1>, vector<8xf32>
          %650 = llvm.extractvalue %36[0] : !llvm.array<7 x vector<8xf32>> 
          %651 = llvm.extractvalue %38[0] : !llvm.array<7 x vector<8xf32>> 
          %652 = llvm.intr.fma(%643, %650, %651) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %653 = llvm.extractvalue %36[1] : !llvm.array<7 x vector<8xf32>> 
          %654 = llvm.extractvalue %38[1] : !llvm.array<7 x vector<8xf32>> 
          %655 = llvm.intr.fma(%644, %653, %654) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %656 = llvm.extractvalue %36[2] : !llvm.array<7 x vector<8xf32>> 
          %657 = llvm.extractvalue %38[2] : !llvm.array<7 x vector<8xf32>> 
          %658 = llvm.intr.fma(%645, %656, %657) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %659 = llvm.extractvalue %36[3] : !llvm.array<7 x vector<8xf32>> 
          %660 = llvm.extractvalue %38[3] : !llvm.array<7 x vector<8xf32>> 
          %661 = llvm.intr.fma(%646, %659, %660) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %662 = llvm.extractvalue %36[4] : !llvm.array<7 x vector<8xf32>> 
          %663 = llvm.extractvalue %38[4] : !llvm.array<7 x vector<8xf32>> 
          %664 = llvm.intr.fma(%647, %662, %663) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %665 = llvm.extractvalue %36[5] : !llvm.array<7 x vector<8xf32>> 
          %666 = llvm.extractvalue %38[5] : !llvm.array<7 x vector<8xf32>> 
          %667 = llvm.intr.fma(%648, %665, %666) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %668 = llvm.extractvalue %36[6] : !llvm.array<7 x vector<8xf32>> 
          %669 = llvm.extractvalue %38[6] : !llvm.array<7 x vector<8xf32>> 
          %670 = llvm.intr.fma(%649, %668, %669) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %671 = llvm.intr.floor(%652) : (vector<8xf32>) -> vector<8xf32>
          %672 = llvm.intr.floor(%655) : (vector<8xf32>) -> vector<8xf32>
          %673 = llvm.intr.floor(%658) : (vector<8xf32>) -> vector<8xf32>
          %674 = llvm.intr.floor(%661) : (vector<8xf32>) -> vector<8xf32>
          %675 = llvm.intr.floor(%664) : (vector<8xf32>) -> vector<8xf32>
          %676 = llvm.intr.floor(%667) : (vector<8xf32>) -> vector<8xf32>
          %677 = llvm.intr.floor(%670) : (vector<8xf32>) -> vector<8xf32>
          %678 = llvm.extractvalue %26[0] : !llvm.array<7 x vector<8xf32>> 
          %679 = llvm.fcmp "uge" %671, %678 : vector<8xf32>
          %680 = llvm.extractvalue %26[1] : !llvm.array<7 x vector<8xf32>> 
          %681 = llvm.fcmp "uge" %672, %680 : vector<8xf32>
          %682 = llvm.extractvalue %26[2] : !llvm.array<7 x vector<8xf32>> 
          %683 = llvm.fcmp "uge" %673, %682 : vector<8xf32>
          %684 = llvm.extractvalue %26[3] : !llvm.array<7 x vector<8xf32>> 
          %685 = llvm.fcmp "uge" %674, %684 : vector<8xf32>
          %686 = llvm.extractvalue %26[4] : !llvm.array<7 x vector<8xf32>> 
          %687 = llvm.fcmp "uge" %675, %686 : vector<8xf32>
          %688 = llvm.extractvalue %26[5] : !llvm.array<7 x vector<8xf32>> 
          %689 = llvm.fcmp "uge" %676, %688 : vector<8xf32>
          %690 = llvm.extractvalue %26[6] : !llvm.array<7 x vector<8xf32>> 
          %691 = llvm.fcmp "uge" %677, %690 : vector<8xf32>
          %692 = llvm.select %679, %671, %678 : vector<8xi1>, vector<8xf32>
          %693 = llvm.select %681, %672, %680 : vector<8xi1>, vector<8xf32>
          %694 = llvm.select %683, %673, %682 : vector<8xi1>, vector<8xf32>
          %695 = llvm.select %685, %674, %684 : vector<8xi1>, vector<8xf32>
          %696 = llvm.select %687, %675, %686 : vector<8xi1>, vector<8xf32>
          %697 = llvm.select %689, %676, %688 : vector<8xi1>, vector<8xf32>
          %698 = llvm.select %691, %677, %690 : vector<8xi1>, vector<8xf32>
          %699 = llvm.extractvalue %25[0] : !llvm.array<7 x vector<8xf32>> 
          %700 = llvm.fcmp "ule" %692, %699 : vector<8xf32>
          %701 = llvm.extractvalue %25[1] : !llvm.array<7 x vector<8xf32>> 
          %702 = llvm.fcmp "ule" %693, %701 : vector<8xf32>
          %703 = llvm.extractvalue %25[2] : !llvm.array<7 x vector<8xf32>> 
          %704 = llvm.fcmp "ule" %694, %703 : vector<8xf32>
          %705 = llvm.extractvalue %25[3] : !llvm.array<7 x vector<8xf32>> 
          %706 = llvm.fcmp "ule" %695, %705 : vector<8xf32>
          %707 = llvm.extractvalue %25[4] : !llvm.array<7 x vector<8xf32>> 
          %708 = llvm.fcmp "ule" %696, %707 : vector<8xf32>
          %709 = llvm.extractvalue %25[5] : !llvm.array<7 x vector<8xf32>> 
          %710 = llvm.fcmp "ule" %697, %709 : vector<8xf32>
          %711 = llvm.extractvalue %25[6] : !llvm.array<7 x vector<8xf32>> 
          %712 = llvm.fcmp "ule" %698, %711 : vector<8xf32>
          %713 = llvm.select %700, %692, %699 : vector<8xi1>, vector<8xf32>
          %714 = llvm.select %702, %693, %701 : vector<8xi1>, vector<8xf32>
          %715 = llvm.select %704, %694, %703 : vector<8xi1>, vector<8xf32>
          %716 = llvm.select %706, %695, %705 : vector<8xi1>, vector<8xf32>
          %717 = llvm.select %708, %696, %707 : vector<8xi1>, vector<8xf32>
          %718 = llvm.select %710, %697, %709 : vector<8xi1>, vector<8xf32>
          %719 = llvm.select %712, %698, %711 : vector<8xi1>, vector<8xf32>
          %720 = llvm.extractvalue %35[0] : !llvm.array<7 x vector<8xf32>> 
          %721 = llvm.intr.fma(%720, %713, %643) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %722 = llvm.extractvalue %35[1] : !llvm.array<7 x vector<8xf32>> 
          %723 = llvm.intr.fma(%722, %714, %644) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %724 = llvm.extractvalue %35[2] : !llvm.array<7 x vector<8xf32>> 
          %725 = llvm.intr.fma(%724, %715, %645) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %726 = llvm.extractvalue %35[3] : !llvm.array<7 x vector<8xf32>> 
          %727 = llvm.intr.fma(%726, %716, %646) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %728 = llvm.extractvalue %35[4] : !llvm.array<7 x vector<8xf32>> 
          %729 = llvm.intr.fma(%728, %717, %647) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %730 = llvm.extractvalue %35[5] : !llvm.array<7 x vector<8xf32>> 
          %731 = llvm.intr.fma(%730, %718, %648) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %732 = llvm.extractvalue %35[6] : !llvm.array<7 x vector<8xf32>> 
          %733 = llvm.intr.fma(%732, %719, %649) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %734 = llvm.extractvalue %34[0] : !llvm.array<7 x vector<8xf32>> 
          %735 = llvm.intr.fma(%734, %713, %721) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %736 = llvm.extractvalue %34[1] : !llvm.array<7 x vector<8xf32>> 
          %737 = llvm.intr.fma(%736, %714, %723) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %738 = llvm.extractvalue %34[2] : !llvm.array<7 x vector<8xf32>> 
          %739 = llvm.intr.fma(%738, %715, %725) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %740 = llvm.extractvalue %34[3] : !llvm.array<7 x vector<8xf32>> 
          %741 = llvm.intr.fma(%740, %716, %727) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %742 = llvm.extractvalue %34[4] : !llvm.array<7 x vector<8xf32>> 
          %743 = llvm.intr.fma(%742, %717, %729) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %744 = llvm.extractvalue %34[5] : !llvm.array<7 x vector<8xf32>> 
          %745 = llvm.intr.fma(%744, %718, %731) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %746 = llvm.extractvalue %34[6] : !llvm.array<7 x vector<8xf32>> 
          %747 = llvm.intr.fma(%746, %719, %733) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %748 = llvm.extractvalue %33[0] : !llvm.array<7 x vector<8xf32>> 
          %749 = llvm.extractvalue %32[0] : !llvm.array<7 x vector<8xf32>> 
          %750 = llvm.intr.fma(%735, %748, %749) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %751 = llvm.extractvalue %33[1] : !llvm.array<7 x vector<8xf32>> 
          %752 = llvm.extractvalue %32[1] : !llvm.array<7 x vector<8xf32>> 
          %753 = llvm.intr.fma(%737, %751, %752) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %754 = llvm.extractvalue %33[2] : !llvm.array<7 x vector<8xf32>> 
          %755 = llvm.extractvalue %32[2] : !llvm.array<7 x vector<8xf32>> 
          %756 = llvm.intr.fma(%739, %754, %755) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %757 = llvm.extractvalue %33[3] : !llvm.array<7 x vector<8xf32>> 
          %758 = llvm.extractvalue %32[3] : !llvm.array<7 x vector<8xf32>> 
          %759 = llvm.intr.fma(%741, %757, %758) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %760 = llvm.extractvalue %33[4] : !llvm.array<7 x vector<8xf32>> 
          %761 = llvm.extractvalue %32[4] : !llvm.array<7 x vector<8xf32>> 
          %762 = llvm.intr.fma(%743, %760, %761) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %763 = llvm.extractvalue %33[5] : !llvm.array<7 x vector<8xf32>> 
          %764 = llvm.extractvalue %32[5] : !llvm.array<7 x vector<8xf32>> 
          %765 = llvm.intr.fma(%745, %763, %764) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %766 = llvm.extractvalue %33[6] : !llvm.array<7 x vector<8xf32>> 
          %767 = llvm.extractvalue %32[6] : !llvm.array<7 x vector<8xf32>> 
          %768 = llvm.intr.fma(%747, %766, %767) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %769 = llvm.extractvalue %31[0] : !llvm.array<7 x vector<8xf32>> 
          %770 = llvm.intr.fma(%750, %735, %769) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %771 = llvm.extractvalue %31[1] : !llvm.array<7 x vector<8xf32>> 
          %772 = llvm.intr.fma(%753, %737, %771) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %773 = llvm.extractvalue %31[2] : !llvm.array<7 x vector<8xf32>> 
          %774 = llvm.intr.fma(%756, %739, %773) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %775 = llvm.extractvalue %31[3] : !llvm.array<7 x vector<8xf32>> 
          %776 = llvm.intr.fma(%759, %741, %775) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %777 = llvm.extractvalue %31[4] : !llvm.array<7 x vector<8xf32>> 
          %778 = llvm.intr.fma(%762, %743, %777) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %779 = llvm.extractvalue %31[5] : !llvm.array<7 x vector<8xf32>> 
          %780 = llvm.intr.fma(%765, %745, %779) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %781 = llvm.extractvalue %31[6] : !llvm.array<7 x vector<8xf32>> 
          %782 = llvm.intr.fma(%768, %747, %781) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %783 = llvm.extractvalue %30[0] : !llvm.array<7 x vector<8xf32>> 
          %784 = llvm.intr.fma(%770, %735, %783) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %785 = llvm.extractvalue %30[1] : !llvm.array<7 x vector<8xf32>> 
          %786 = llvm.intr.fma(%772, %737, %785) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %787 = llvm.extractvalue %30[2] : !llvm.array<7 x vector<8xf32>> 
          %788 = llvm.intr.fma(%774, %739, %787) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %789 = llvm.extractvalue %30[3] : !llvm.array<7 x vector<8xf32>> 
          %790 = llvm.intr.fma(%776, %741, %789) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %791 = llvm.extractvalue %30[4] : !llvm.array<7 x vector<8xf32>> 
          %792 = llvm.intr.fma(%778, %743, %791) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %793 = llvm.extractvalue %30[5] : !llvm.array<7 x vector<8xf32>> 
          %794 = llvm.intr.fma(%780, %745, %793) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %795 = llvm.extractvalue %30[6] : !llvm.array<7 x vector<8xf32>> 
          %796 = llvm.intr.fma(%782, %747, %795) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %797 = llvm.extractvalue %29[0] : !llvm.array<7 x vector<8xf32>> 
          %798 = llvm.intr.fma(%784, %735, %797) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %799 = llvm.extractvalue %29[1] : !llvm.array<7 x vector<8xf32>> 
          %800 = llvm.intr.fma(%786, %737, %799) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %801 = llvm.extractvalue %29[2] : !llvm.array<7 x vector<8xf32>> 
          %802 = llvm.intr.fma(%788, %739, %801) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %803 = llvm.extractvalue %29[3] : !llvm.array<7 x vector<8xf32>> 
          %804 = llvm.intr.fma(%790, %741, %803) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %805 = llvm.extractvalue %29[4] : !llvm.array<7 x vector<8xf32>> 
          %806 = llvm.intr.fma(%792, %743, %805) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %807 = llvm.extractvalue %29[5] : !llvm.array<7 x vector<8xf32>> 
          %808 = llvm.intr.fma(%794, %745, %807) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %809 = llvm.extractvalue %29[6] : !llvm.array<7 x vector<8xf32>> 
          %810 = llvm.intr.fma(%796, %747, %809) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %811 = llvm.intr.fma(%798, %735, %651) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %812 = llvm.intr.fma(%800, %737, %654) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %813 = llvm.intr.fma(%802, %739, %657) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %814 = llvm.intr.fma(%804, %741, %660) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %815 = llvm.intr.fma(%806, %743, %663) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %816 = llvm.intr.fma(%808, %745, %666) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %817 = llvm.intr.fma(%810, %747, %669) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %818 = llvm.fmul %735, %735 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %819 = llvm.fmul %737, %737 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %820 = llvm.fmul %739, %739 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %821 = llvm.fmul %741, %741 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %822 = llvm.fmul %743, %743 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %823 = llvm.fmul %745, %745 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %824 = llvm.fmul %747, %747 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %825 = llvm.intr.fma(%811, %818, %735) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %826 = llvm.intr.fma(%812, %819, %737) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %827 = llvm.intr.fma(%813, %820, %739) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %828 = llvm.intr.fma(%814, %821, %741) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %829 = llvm.intr.fma(%815, %822, %743) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %830 = llvm.intr.fma(%816, %823, %745) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %831 = llvm.intr.fma(%817, %824, %747) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %832 = llvm.extractvalue %37[0] : !llvm.array<7 x vector<8xf32>> 
          %833 = llvm.fadd %825, %832 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %834 = llvm.extractvalue %37[1] : !llvm.array<7 x vector<8xf32>> 
          %835 = llvm.fadd %826, %834 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %836 = llvm.extractvalue %37[2] : !llvm.array<7 x vector<8xf32>> 
          %837 = llvm.fadd %827, %836 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %838 = llvm.extractvalue %37[3] : !llvm.array<7 x vector<8xf32>> 
          %839 = llvm.fadd %828, %838 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %840 = llvm.extractvalue %37[4] : !llvm.array<7 x vector<8xf32>> 
          %841 = llvm.fadd %829, %840 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %842 = llvm.extractvalue %37[5] : !llvm.array<7 x vector<8xf32>> 
          %843 = llvm.fadd %830, %842 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %844 = llvm.extractvalue %37[6] : !llvm.array<7 x vector<8xf32>> 
          %845 = llvm.fadd %831, %844 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %846 = llvm.fptosi %713 : vector<8xf32> to vector<8xi32>
          %847 = llvm.fptosi %714 : vector<8xf32> to vector<8xi32>
          %848 = llvm.fptosi %715 : vector<8xf32> to vector<8xi32>
          %849 = llvm.fptosi %716 : vector<8xf32> to vector<8xi32>
          %850 = llvm.fptosi %717 : vector<8xf32> to vector<8xi32>
          %851 = llvm.fptosi %718 : vector<8xf32> to vector<8xi32>
          %852 = llvm.fptosi %719 : vector<8xf32> to vector<8xi32>
          %853 = llvm.extractvalue %23[0] : !llvm.array<7 x vector<8xi32>> 
          %854 = llvm.add %846, %853 : vector<8xi32>
          %855 = llvm.extractvalue %23[1] : !llvm.array<7 x vector<8xi32>> 
          %856 = llvm.add %847, %855 : vector<8xi32>
          %857 = llvm.extractvalue %23[2] : !llvm.array<7 x vector<8xi32>> 
          %858 = llvm.add %848, %857 : vector<8xi32>
          %859 = llvm.extractvalue %23[3] : !llvm.array<7 x vector<8xi32>> 
          %860 = llvm.add %849, %859 : vector<8xi32>
          %861 = llvm.extractvalue %23[4] : !llvm.array<7 x vector<8xi32>> 
          %862 = llvm.add %850, %861 : vector<8xi32>
          %863 = llvm.extractvalue %23[5] : !llvm.array<7 x vector<8xi32>> 
          %864 = llvm.add %851, %863 : vector<8xi32>
          %865 = llvm.extractvalue %23[6] : !llvm.array<7 x vector<8xi32>> 
          %866 = llvm.add %852, %865 : vector<8xi32>
          %867 = llvm.extractvalue %24[0] : !llvm.array<7 x vector<8xi32>> 
          %868 = llvm.shl %854, %867 : vector<8xi32>
          %869 = llvm.extractvalue %24[1] : !llvm.array<7 x vector<8xi32>> 
          %870 = llvm.shl %856, %869 : vector<8xi32>
          %871 = llvm.extractvalue %24[2] : !llvm.array<7 x vector<8xi32>> 
          %872 = llvm.shl %858, %871 : vector<8xi32>
          %873 = llvm.extractvalue %24[3] : !llvm.array<7 x vector<8xi32>> 
          %874 = llvm.shl %860, %873 : vector<8xi32>
          %875 = llvm.extractvalue %24[4] : !llvm.array<7 x vector<8xi32>> 
          %876 = llvm.shl %862, %875 : vector<8xi32>
          %877 = llvm.extractvalue %24[5] : !llvm.array<7 x vector<8xi32>> 
          %878 = llvm.shl %864, %877 : vector<8xi32>
          %879 = llvm.extractvalue %24[6] : !llvm.array<7 x vector<8xi32>> 
          %880 = llvm.shl %866, %879 : vector<8xi32>
          %881 = llvm.bitcast %868 : vector<8xi32> to vector<8xf32>
          %882 = llvm.bitcast %870 : vector<8xi32> to vector<8xf32>
          %883 = llvm.bitcast %872 : vector<8xi32> to vector<8xf32>
          %884 = llvm.bitcast %874 : vector<8xi32> to vector<8xf32>
          %885 = llvm.bitcast %876 : vector<8xi32> to vector<8xf32>
          %886 = llvm.bitcast %878 : vector<8xi32> to vector<8xf32>
          %887 = llvm.bitcast %880 : vector<8xi32> to vector<8xf32>
          %888 = llvm.fmul %833, %881 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %889 = llvm.fmul %835, %882 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %890 = llvm.fmul %837, %883 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %891 = llvm.fmul %839, %884 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %892 = llvm.fmul %841, %885 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %893 = llvm.fmul %843, %886 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %894 = llvm.fmul %845, %887 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %895 = llvm.fdiv %888, %529 : vector<8xf32>
          %896 = llvm.fdiv %889, %530 : vector<8xf32>
          %897 = llvm.fdiv %890, %531 : vector<8xf32>
          %898 = llvm.fdiv %891, %532 : vector<8xf32>
          %899 = llvm.fdiv %892, %533 : vector<8xf32>
          %900 = llvm.fdiv %893, %534 : vector<8xf32>
          %901 = llvm.fdiv %894, %535 : vector<8xf32>
          %902 = llvm.getelementptr %68[%548] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %895, %902, %544 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %903 = llvm.getelementptr %68[%554] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %896, %903, %544 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %904 = llvm.getelementptr %68[%560] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %897, %904, %544 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %905 = llvm.getelementptr %68[%566] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %898, %905, %544 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %906 = llvm.getelementptr %68[%572] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %899, %906, %544 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %907 = llvm.getelementptr %68[%578] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %900, %907, %544 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %908 = llvm.getelementptr %68[%584] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %901, %908, %544 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %909 = llvm.add %536, %51 : i64
          llvm.br ^bb10(%909 : i64)
        ^bb12:  // pred: ^bb10
          llvm.return %15 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_153_embedded_elf_riscv_64_main_graph$async_dispatch_153_softmax_8x49x49xf32_dispatch_tensor_store_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_153_embedded_elf_riscv_64_main_graph$async_dispatch_153_softmax_8x49x49xf32_dispatch_tensor_store_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_153_embedded_elf_riscv_64_main_graph$async_dispatch_153_softmax_8x49x49xf32_dispatch_tensor_store(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c677376_i32 = arith.constant 677376 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_153_embedded_elf_riscv_64_main_graph$async_dispatch_153_softmax_8x49x49xf32_dispatch_tensor_store_buffer = util.global.load immutable @main_graph$async_dispatch_153_embedded_elf_riscv_64_main_graph$async_dispatch_153_softmax_8x49x49xf32_dispatch_tensor_store_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_153::@embedded_elf_riscv_64::@main_graph$async_dispatch_153_softmax_8x49x49xf32_dispatch_tensor_store) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_153) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_153::@embedded_elf_riscv_64::@main_graph$async_dispatch_153_softmax_8x49x49xf32_dispatch_tensor_store) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c677376_i32]) bindings([
      (%main_graph$async_dispatch_153_embedded_elf_riscv_64_main_graph$async_dispatch_153_softmax_8x49x49xf32_dispatch_tensor_store_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_153_embedded_elf_riscv_64_main_graph$async_dispatch_153_softmax_8x49x49xf32_dispatch_tensor_store_buffer : !hal.buffer)[%c32172032, %c32172032]
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
