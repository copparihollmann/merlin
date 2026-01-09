#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_61 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_61_softmax_2x784x49xf32_dispatch_tensor_store ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c28 = arith.constant 28 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c28, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_61_softmax_2x784x49xf32_dispatch_tensor_store(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(7 : i64) : i64
          %1 = llvm.mlir.constant(6 : i64) : i64
          %2 = llvm.mlir.constant(5 : i64) : i64
          %3 = llvm.mlir.constant(4 : i64) : i64
          %4 = llvm.mlir.constant(3 : i64) : i64
          %5 = llvm.mlir.constant(2 : i64) : i64
          %6 = llvm.mlir.constant(1 : i64) : i64
          %7 = llvm.mlir.poison : vector<8xi64>
          %8 = llvm.mlir.poison : vector<1xf32>
          %9 = llvm.mlir.constant(8 : i32) : i32
          %10 = llvm.mlir.constant(0 : i64) : i64
          %11 = llvm.mlir.constant(0 : i32) : i32
          %12 = llvm.mlir.poison : vector<8xi32>
          %13 = llvm.mlir.constant(64 : index) : i64
          %14 = llvm.mlir.constant(true) : i1
          %15 = llvm.mlir.constant(38416 : index) : i64
          %16 = llvm.mlir.constant(8 : i64) : i64
          %17 = llvm.mlir.constant(32 : i64) : i64
          %18 = llvm.mlir.constant(7 : index) : i64
          %19 = llvm.mlir.constant(6 : index) : i64
          %20 = llvm.mlir.constant(5 : index) : i64
          %21 = llvm.mlir.constant(4 : index) : i64
          %22 = llvm.mlir.constant(3 : index) : i64
          %23 = llvm.mlir.constant(dense<false> : vector<8xi1>) : vector<8xi1>
          %24 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi64>) : vector<8xi64>
          %25 = llvm.mlir.constant(dense<127> : vector<8x8xi32>) : !llvm.array<8 x vector<8xi32>>
          %26 = llvm.mlir.constant(dense<23> : vector<8x8xi32>) : !llvm.array<8 x vector<8xi32>>
          %27 = llvm.mlir.constant(dense<1.270000e+02> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %28 = llvm.mlir.constant(dense<-1.270000e+02> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %29 = llvm.mlir.constant(dense<8.880000e+01> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %30 = llvm.mlir.constant(dense<-8.780000e+01> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %31 = llvm.mlir.constant(dense<0.166666657> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %32 = llvm.mlir.constant(dense<0.0416657962> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %33 = llvm.mlir.constant(dense<0.00833345205> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %34 = llvm.mlir.constant(dense<0.00139819994> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %35 = llvm.mlir.constant(dense<1.98756912E-4> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %36 = llvm.mlir.constant(dense<2.12194442E-4> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %37 = llvm.mlir.constant(dense<-0.693359375> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %38 = llvm.mlir.constant(dense<1.44269502> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %39 = llvm.mlir.constant(dense<1.000000e+00> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %40 = llvm.mlir.constant(dense<5.000000e-01> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %41 = llvm.mlir.poison : vector<64xf32>
          %42 = llvm.mlir.poison : vector<8xf32>
          %43 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %44 = llvm.mlir.constant(dense<0.176776692> : vector<8x8xf32>) : !llvm.array<8 x vector<8xf32>>
          %45 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %46 = llvm.mlir.constant(dense<0.176776692> : vector<8xf32>) : vector<8xf32>
          %47 = llvm.mlir.constant(dense<0xFFC00000> : vector<8xf32>) : vector<8xf32>
          %48 = llvm.mlir.constant(1003520 : index) : i64
          %49 = llvm.mlir.constant(1317120 : index) : i64
          %50 = llvm.mlir.constant(1 : index) : i64
          %51 = llvm.mlir.constant(0 : index) : i64
          %52 = llvm.mlir.constant(49 : index) : i64
          %53 = llvm.mlir.constant(8 : index) : i64
          %54 = llvm.mlir.constant(2 : index) : i64
          %55 = llvm.mlir.constant(28 : index) : i64
          %56 = llvm.alloca %53 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %57 = llvm.alloca %53 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %58 = llvm.alloca %53 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %59 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %60 = llvm.extractvalue %59[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %61 = llvm.load %60 : !llvm.ptr -> !llvm.ptr
          %62 = llvm.mul %49, %16 : i64
          %63 = llvm.udiv %62, %17 : i64
          %64 = llvm.getelementptr %61[%63] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %14 ["align"(%64, %13 : !llvm.ptr, i64)] : i1
          %65 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %66 = llvm.extractvalue %65[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %67 = llvm.getelementptr %66[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %68 = llvm.load %67 : !llvm.ptr -> !llvm.ptr
          %69 = llvm.mul %48, %16 : i64
          %70 = llvm.udiv %69, %17 : i64
          %71 = llvm.getelementptr %68[%70] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %14 ["align"(%71, %13 : !llvm.ptr, i64)] : i1
          %72 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %73 = llvm.extractvalue %72[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %74 = llvm.zext %73 : i32 to i64
          %75 = llvm.mul %74, %55 overflow<nsw> : i64
          llvm.br ^bb1(%51 : i64)
        ^bb1(%76: i64):  // 2 preds: ^bb0, ^bb24
          %77 = llvm.icmp "slt" %76, %54 : i64
          llvm.cond_br %77, ^bb2(%51 : i64), ^bb25
        ^bb2(%78: i64):  // 2 preds: ^bb1, ^bb23
          %79 = llvm.icmp "slt" %78, %55 : i64
          llvm.cond_br %79, ^bb3, ^bb24
        ^bb3:  // pred: ^bb2
          %80 = llvm.sub %55, %78 : i64
          %81 = llvm.icmp "slt" %80, %53 : i64
          %82 = llvm.select %81, %80, %53 : i1, i64
          %83 = llvm.add %78, %75 : i64
          %84 = llvm.trunc %82 : i64 to i32
          %85 = llvm.insertelement %84, %12[%11 : i32] : vector<8xi32>
          %86 = llvm.shufflevector %85, %12 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %87 = llvm.icmp "sgt" %86, %43 : vector<8xi32>
          %88 = llvm.mul %51, %53 : i64
          %89 = llvm.add %88, %51 : i64
          %90 = llvm.getelementptr %58[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %47, %90, %87 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          llvm.br ^bb4(%51 : i64)
        ^bb4(%91: i64):  // 2 preds: ^bb3, ^bb5
          %92 = llvm.icmp "slt" %91, %82 : i64
          llvm.cond_br %92, ^bb5, ^bb6(%51 : i64)
        ^bb5:  // pred: ^bb4
          %93 = llvm.mul %51, %53 overflow<nsw, nuw> : i64
          %94 = llvm.add %93, %91 overflow<nsw, nuw> : i64
          %95 = llvm.getelementptr inbounds|nuw %58[%94] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %96 = llvm.load %95 : !llvm.ptr -> f32
          %97 = llvm.getelementptr inbounds|nuw %56[%94] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %96, %97 : f32, !llvm.ptr
          %98 = llvm.add %91, %50 : i64
          llvm.br ^bb4(%98 : i64)
        ^bb6(%99: i64):  // 2 preds: ^bb4, ^bb10
          %100 = llvm.icmp "slt" %99, %82 : i64
          llvm.cond_br %100, ^bb7, ^bb11
        ^bb7:  // pred: ^bb6
          %101 = llvm.add %88, %99 : i64
          %102 = llvm.getelementptr %56[%101] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %103 = llvm.load %102 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          llvm.br ^bb8(%51, %103 : i64, vector<1xf32>)
        ^bb8(%104: i64, %105: vector<1xf32>):  // 2 preds: ^bb7, ^bb9
          %106 = llvm.icmp "slt" %104, %52 : i64
          llvm.cond_br %106, ^bb9, ^bb10
        ^bb9:  // pred: ^bb8
          %107 = llvm.sub %52, %104 : i64
          %108 = llvm.icmp "slt" %107, %53 : i64
          %109 = llvm.select %108, %107, %53 : i1, i64
          %110 = llvm.trunc %109 : i64 to i32
          %111 = llvm.insertelement %110, %12[%11 : i32] : vector<8xi32>
          %112 = llvm.shufflevector %111, %12 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %113 = llvm.icmp "sgt" %112, %43 : vector<8xi32>
          %114 = llvm.add %83, %99 : i64
          %115 = llvm.mul %76, %15 : i64
          %116 = llvm.mul %114, %52 : i64
          %117 = llvm.add %115, %116 : i64
          %118 = llvm.add %117, %104 : i64
          %119 = llvm.getelementptr %64[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %120 = llvm.intr.masked.load %119, %113, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %121 = llvm.fmul %120, %46 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %122 = llvm.extractelement %105[%10 : i64] : vector<1xf32>
          %123 = "llvm.intr.vp.reduce.fmax"(%122, %121, %113, %9) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %124 = llvm.insertelement %123, %8[%11 : i32] : vector<1xf32>
          %125 = llvm.add %104, %53 : i64
          llvm.br ^bb8(%125, %124 : i64, vector<1xf32>)
        ^bb10:  // pred: ^bb8
          %126 = llvm.extractelement %105[%10 : i64] : vector<1xf32>
          %127 = llvm.mul %51, %53 overflow<nsw, nuw> : i64
          %128 = llvm.add %127, %99 overflow<nsw, nuw> : i64
          %129 = llvm.getelementptr inbounds|nuw %56[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %126, %129 : f32, !llvm.ptr
          %130 = llvm.add %99, %50 : i64
          llvm.br ^bb6(%130 : i64)
        ^bb11:  // pred: ^bb6
          %131 = llvm.getelementptr %57[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %45, %131, %87 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %132 = llvm.getelementptr %56[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %133 = llvm.intr.masked.load %132, %87, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %134 = llvm.shufflevector %133, %133 [0, 1, 2, 3, 4, 5, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %135 = llvm.shufflevector %134, %41 [0, 1, 2, 3, 4, 5, 6, 7, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %136 = llvm.shufflevector %134, %135 [64, 65, 66, 67, 68, 69, 70, 71, 0, 1, 2, 3, 4, 5, 6, 7, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %137 = llvm.shufflevector %134, %136 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 0, 1, 2, 3, 4, 5, 6, 7, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %138 = llvm.shufflevector %134, %137 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 0, 1, 2, 3, 4, 5, 6, 7, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %139 = llvm.shufflevector %134, %138 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 0, 1, 2, 3, 4, 5, 6, 7, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %140 = llvm.shufflevector %134, %139 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 0, 1, 2, 3, 4, 5, 6, 7, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %141 = llvm.shufflevector %134, %140 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 0, 1, 2, 3, 4, 5, 6, 7, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %142 = llvm.shufflevector %134, %141 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 0, 1, 2, 3, 4, 5, 6, 7] : vector<64xf32> 
          %143 = llvm.shufflevector %142, %142 [0, 8, 16, 24, 32, 40, 48, 56, 1, 9, 17, 25, 33, 41, 49, 57, 2, 10, 18, 26, 34, 42, 50, 58, 3, 11, 19, 27, 35, 43, 51, 59, 4, 12, 20, 28, 36, 44, 52, 60, 5, 13, 21, 29, 37, 45, 53, 61, 6, 14, 22, 30, 38, 46, 54, 62, 7, 15, 23, 31, 39, 47, 55, 63] : vector<64xf32> 
          %144 = llvm.shufflevector %143, %143 [0, 1, 2, 3, 4, 5, 6, 7] : vector<64xf32> 
          %145 = llvm.shufflevector %143, %143 [8, 9, 10, 11, 12, 13, 14, 15] : vector<64xf32> 
          %146 = llvm.shufflevector %143, %143 [16, 17, 18, 19, 20, 21, 22, 23] : vector<64xf32> 
          %147 = llvm.shufflevector %143, %143 [24, 25, 26, 27, 28, 29, 30, 31] : vector<64xf32> 
          %148 = llvm.shufflevector %143, %143 [32, 33, 34, 35, 36, 37, 38, 39] : vector<64xf32> 
          %149 = llvm.shufflevector %143, %143 [40, 41, 42, 43, 44, 45, 46, 47] : vector<64xf32> 
          %150 = llvm.shufflevector %143, %143 [48, 49, 50, 51, 52, 53, 54, 55] : vector<64xf32> 
          %151 = llvm.shufflevector %143, %143 [56, 57, 58, 59, 60, 61, 62, 63] : vector<64xf32> 
          %152 = llvm.intr.masked.load %131, %87, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          llvm.br ^bb12(%51, %152 : i64, vector<8xf32>)
        ^bb12(%153: i64, %154: vector<8xf32>):  // 2 preds: ^bb11, ^bb13
          %155 = llvm.icmp "slt" %153, %52 : i64
          llvm.cond_br %155, ^bb13, ^bb14
        ^bb13:  // pred: ^bb12
          %156 = llvm.sub %52, %153 : i64
          %157 = llvm.icmp "slt" %156, %53 : i64
          %158 = llvm.select %157, %156, %53 : i1, i64
          %159 = llvm.insertelement %158, %7[%11 : i32] : vector<8xi64>
          %160 = llvm.shufflevector %159, %7 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi64> 
          %161 = llvm.icmp "sgt" %160, %24 : vector<8xi64>
          %162 = llvm.icmp "sgt" %82, %51 : i64
          %163 = llvm.select %162, %161, %23 : i1, vector<8xi1>
          %164 = llvm.icmp "sgt" %82, %50 : i64
          %165 = llvm.select %164, %161, %23 : i1, vector<8xi1>
          %166 = llvm.icmp "sgt" %82, %54 : i64
          %167 = llvm.select %166, %161, %23 : i1, vector<8xi1>
          %168 = llvm.icmp "sgt" %82, %22 : i64
          %169 = llvm.select %168, %161, %23 : i1, vector<8xi1>
          %170 = llvm.icmp "sgt" %82, %21 : i64
          %171 = llvm.select %170, %161, %23 : i1, vector<8xi1>
          %172 = llvm.icmp "sgt" %82, %20 : i64
          %173 = llvm.select %172, %161, %23 : i1, vector<8xi1>
          %174 = llvm.icmp "sgt" %82, %19 : i64
          %175 = llvm.select %174, %161, %23 : i1, vector<8xi1>
          %176 = llvm.icmp "sgt" %82, %18 : i64
          %177 = llvm.select %176, %161, %23 : i1, vector<8xi1>
          %178 = llvm.mul %76, %15 : i64
          %179 = llvm.mul %83, %52 : i64
          %180 = llvm.add %178, %179 : i64
          %181 = llvm.add %180, %153 : i64
          %182 = llvm.getelementptr %64[%181] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %183 = llvm.intr.masked.load %182, %163, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %184 = llvm.add %83, %50 : i64
          %185 = llvm.mul %184, %52 : i64
          %186 = llvm.add %178, %185 : i64
          %187 = llvm.add %186, %153 : i64
          %188 = llvm.getelementptr %64[%187] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %189 = llvm.intr.masked.load %188, %165, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %190 = llvm.add %83, %54 : i64
          %191 = llvm.mul %190, %52 : i64
          %192 = llvm.add %178, %191 : i64
          %193 = llvm.add %192, %153 : i64
          %194 = llvm.getelementptr %64[%193] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %195 = llvm.intr.masked.load %194, %167, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %196 = llvm.add %83, %22 : i64
          %197 = llvm.mul %196, %52 : i64
          %198 = llvm.add %178, %197 : i64
          %199 = llvm.add %198, %153 : i64
          %200 = llvm.getelementptr %64[%199] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %201 = llvm.intr.masked.load %200, %169, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %202 = llvm.add %83, %21 : i64
          %203 = llvm.mul %202, %52 : i64
          %204 = llvm.add %178, %203 : i64
          %205 = llvm.add %204, %153 : i64
          %206 = llvm.getelementptr %64[%205] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %207 = llvm.intr.masked.load %206, %171, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %208 = llvm.add %83, %20 : i64
          %209 = llvm.mul %208, %52 : i64
          %210 = llvm.add %178, %209 : i64
          %211 = llvm.add %210, %153 : i64
          %212 = llvm.getelementptr %64[%211] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %213 = llvm.intr.masked.load %212, %173, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %214 = llvm.add %83, %19 : i64
          %215 = llvm.mul %214, %52 : i64
          %216 = llvm.add %178, %215 : i64
          %217 = llvm.add %216, %153 : i64
          %218 = llvm.getelementptr %64[%217] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %219 = llvm.intr.masked.load %218, %175, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %220 = llvm.add %83, %18 : i64
          %221 = llvm.mul %220, %52 : i64
          %222 = llvm.add %178, %221 : i64
          %223 = llvm.add %222, %153 : i64
          %224 = llvm.getelementptr %64[%223] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %225 = llvm.intr.masked.load %224, %177, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %226 = llvm.extractvalue %44[0] : !llvm.array<8 x vector<8xf32>> 
          %227 = llvm.fmul %183, %226 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %228 = llvm.extractvalue %44[1] : !llvm.array<8 x vector<8xf32>> 
          %229 = llvm.fmul %189, %228 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %230 = llvm.extractvalue %44[2] : !llvm.array<8 x vector<8xf32>> 
          %231 = llvm.fmul %195, %230 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %232 = llvm.extractvalue %44[3] : !llvm.array<8 x vector<8xf32>> 
          %233 = llvm.fmul %201, %232 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %234 = llvm.extractvalue %44[4] : !llvm.array<8 x vector<8xf32>> 
          %235 = llvm.fmul %207, %234 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %236 = llvm.extractvalue %44[5] : !llvm.array<8 x vector<8xf32>> 
          %237 = llvm.fmul %213, %236 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %238 = llvm.extractvalue %44[6] : !llvm.array<8 x vector<8xf32>> 
          %239 = llvm.fmul %219, %238 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %240 = llvm.extractvalue %44[7] : !llvm.array<8 x vector<8xf32>> 
          %241 = llvm.fmul %225, %240 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %242 = llvm.fsub %227, %144 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %243 = llvm.fsub %229, %145 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %244 = llvm.fsub %231, %146 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %245 = llvm.fsub %233, %147 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %246 = llvm.fsub %235, %148 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %247 = llvm.fsub %237, %149 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %248 = llvm.fsub %239, %150 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %249 = llvm.fsub %241, %151 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %250 = llvm.extractvalue %30[0] : !llvm.array<8 x vector<8xf32>> 
          %251 = llvm.fcmp "uge" %242, %250 : vector<8xf32>
          %252 = llvm.extractvalue %30[1] : !llvm.array<8 x vector<8xf32>> 
          %253 = llvm.fcmp "uge" %243, %252 : vector<8xf32>
          %254 = llvm.extractvalue %30[2] : !llvm.array<8 x vector<8xf32>> 
          %255 = llvm.fcmp "uge" %244, %254 : vector<8xf32>
          %256 = llvm.extractvalue %30[3] : !llvm.array<8 x vector<8xf32>> 
          %257 = llvm.fcmp "uge" %245, %256 : vector<8xf32>
          %258 = llvm.extractvalue %30[4] : !llvm.array<8 x vector<8xf32>> 
          %259 = llvm.fcmp "uge" %246, %258 : vector<8xf32>
          %260 = llvm.extractvalue %30[5] : !llvm.array<8 x vector<8xf32>> 
          %261 = llvm.fcmp "uge" %247, %260 : vector<8xf32>
          %262 = llvm.extractvalue %30[6] : !llvm.array<8 x vector<8xf32>> 
          %263 = llvm.fcmp "uge" %248, %262 : vector<8xf32>
          %264 = llvm.extractvalue %30[7] : !llvm.array<8 x vector<8xf32>> 
          %265 = llvm.fcmp "uge" %249, %264 : vector<8xf32>
          %266 = llvm.select %251, %242, %250 : vector<8xi1>, vector<8xf32>
          %267 = llvm.select %253, %243, %252 : vector<8xi1>, vector<8xf32>
          %268 = llvm.select %255, %244, %254 : vector<8xi1>, vector<8xf32>
          %269 = llvm.select %257, %245, %256 : vector<8xi1>, vector<8xf32>
          %270 = llvm.select %259, %246, %258 : vector<8xi1>, vector<8xf32>
          %271 = llvm.select %261, %247, %260 : vector<8xi1>, vector<8xf32>
          %272 = llvm.select %263, %248, %262 : vector<8xi1>, vector<8xf32>
          %273 = llvm.select %265, %249, %264 : vector<8xi1>, vector<8xf32>
          %274 = llvm.extractvalue %29[0] : !llvm.array<8 x vector<8xf32>> 
          %275 = llvm.fcmp "ule" %266, %274 : vector<8xf32>
          %276 = llvm.extractvalue %29[1] : !llvm.array<8 x vector<8xf32>> 
          %277 = llvm.fcmp "ule" %267, %276 : vector<8xf32>
          %278 = llvm.extractvalue %29[2] : !llvm.array<8 x vector<8xf32>> 
          %279 = llvm.fcmp "ule" %268, %278 : vector<8xf32>
          %280 = llvm.extractvalue %29[3] : !llvm.array<8 x vector<8xf32>> 
          %281 = llvm.fcmp "ule" %269, %280 : vector<8xf32>
          %282 = llvm.extractvalue %29[4] : !llvm.array<8 x vector<8xf32>> 
          %283 = llvm.fcmp "ule" %270, %282 : vector<8xf32>
          %284 = llvm.extractvalue %29[5] : !llvm.array<8 x vector<8xf32>> 
          %285 = llvm.fcmp "ule" %271, %284 : vector<8xf32>
          %286 = llvm.extractvalue %29[6] : !llvm.array<8 x vector<8xf32>> 
          %287 = llvm.fcmp "ule" %272, %286 : vector<8xf32>
          %288 = llvm.extractvalue %29[7] : !llvm.array<8 x vector<8xf32>> 
          %289 = llvm.fcmp "ule" %273, %288 : vector<8xf32>
          %290 = llvm.select %275, %266, %274 : vector<8xi1>, vector<8xf32>
          %291 = llvm.select %277, %267, %276 : vector<8xi1>, vector<8xf32>
          %292 = llvm.select %279, %268, %278 : vector<8xi1>, vector<8xf32>
          %293 = llvm.select %281, %269, %280 : vector<8xi1>, vector<8xf32>
          %294 = llvm.select %283, %270, %282 : vector<8xi1>, vector<8xf32>
          %295 = llvm.select %285, %271, %284 : vector<8xi1>, vector<8xf32>
          %296 = llvm.select %287, %272, %286 : vector<8xi1>, vector<8xf32>
          %297 = llvm.select %289, %273, %288 : vector<8xi1>, vector<8xf32>
          %298 = llvm.extractvalue %38[0] : !llvm.array<8 x vector<8xf32>> 
          %299 = llvm.extractvalue %40[0] : !llvm.array<8 x vector<8xf32>> 
          %300 = llvm.intr.fma(%290, %298, %299) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %301 = llvm.extractvalue %38[1] : !llvm.array<8 x vector<8xf32>> 
          %302 = llvm.extractvalue %40[1] : !llvm.array<8 x vector<8xf32>> 
          %303 = llvm.intr.fma(%291, %301, %302) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %304 = llvm.extractvalue %38[2] : !llvm.array<8 x vector<8xf32>> 
          %305 = llvm.extractvalue %40[2] : !llvm.array<8 x vector<8xf32>> 
          %306 = llvm.intr.fma(%292, %304, %305) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %307 = llvm.extractvalue %38[3] : !llvm.array<8 x vector<8xf32>> 
          %308 = llvm.extractvalue %40[3] : !llvm.array<8 x vector<8xf32>> 
          %309 = llvm.intr.fma(%293, %307, %308) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %310 = llvm.extractvalue %38[4] : !llvm.array<8 x vector<8xf32>> 
          %311 = llvm.extractvalue %40[4] : !llvm.array<8 x vector<8xf32>> 
          %312 = llvm.intr.fma(%294, %310, %311) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %313 = llvm.extractvalue %38[5] : !llvm.array<8 x vector<8xf32>> 
          %314 = llvm.extractvalue %40[5] : !llvm.array<8 x vector<8xf32>> 
          %315 = llvm.intr.fma(%295, %313, %314) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %316 = llvm.extractvalue %38[6] : !llvm.array<8 x vector<8xf32>> 
          %317 = llvm.extractvalue %40[6] : !llvm.array<8 x vector<8xf32>> 
          %318 = llvm.intr.fma(%296, %316, %317) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %319 = llvm.extractvalue %38[7] : !llvm.array<8 x vector<8xf32>> 
          %320 = llvm.extractvalue %40[7] : !llvm.array<8 x vector<8xf32>> 
          %321 = llvm.intr.fma(%297, %319, %320) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %322 = llvm.intr.floor(%300) : (vector<8xf32>) -> vector<8xf32>
          %323 = llvm.intr.floor(%303) : (vector<8xf32>) -> vector<8xf32>
          %324 = llvm.intr.floor(%306) : (vector<8xf32>) -> vector<8xf32>
          %325 = llvm.intr.floor(%309) : (vector<8xf32>) -> vector<8xf32>
          %326 = llvm.intr.floor(%312) : (vector<8xf32>) -> vector<8xf32>
          %327 = llvm.intr.floor(%315) : (vector<8xf32>) -> vector<8xf32>
          %328 = llvm.intr.floor(%318) : (vector<8xf32>) -> vector<8xf32>
          %329 = llvm.intr.floor(%321) : (vector<8xf32>) -> vector<8xf32>
          %330 = llvm.extractvalue %28[0] : !llvm.array<8 x vector<8xf32>> 
          %331 = llvm.fcmp "uge" %322, %330 : vector<8xf32>
          %332 = llvm.extractvalue %28[1] : !llvm.array<8 x vector<8xf32>> 
          %333 = llvm.fcmp "uge" %323, %332 : vector<8xf32>
          %334 = llvm.extractvalue %28[2] : !llvm.array<8 x vector<8xf32>> 
          %335 = llvm.fcmp "uge" %324, %334 : vector<8xf32>
          %336 = llvm.extractvalue %28[3] : !llvm.array<8 x vector<8xf32>> 
          %337 = llvm.fcmp "uge" %325, %336 : vector<8xf32>
          %338 = llvm.extractvalue %28[4] : !llvm.array<8 x vector<8xf32>> 
          %339 = llvm.fcmp "uge" %326, %338 : vector<8xf32>
          %340 = llvm.extractvalue %28[5] : !llvm.array<8 x vector<8xf32>> 
          %341 = llvm.fcmp "uge" %327, %340 : vector<8xf32>
          %342 = llvm.extractvalue %28[6] : !llvm.array<8 x vector<8xf32>> 
          %343 = llvm.fcmp "uge" %328, %342 : vector<8xf32>
          %344 = llvm.extractvalue %28[7] : !llvm.array<8 x vector<8xf32>> 
          %345 = llvm.fcmp "uge" %329, %344 : vector<8xf32>
          %346 = llvm.select %331, %322, %330 : vector<8xi1>, vector<8xf32>
          %347 = llvm.select %333, %323, %332 : vector<8xi1>, vector<8xf32>
          %348 = llvm.select %335, %324, %334 : vector<8xi1>, vector<8xf32>
          %349 = llvm.select %337, %325, %336 : vector<8xi1>, vector<8xf32>
          %350 = llvm.select %339, %326, %338 : vector<8xi1>, vector<8xf32>
          %351 = llvm.select %341, %327, %340 : vector<8xi1>, vector<8xf32>
          %352 = llvm.select %343, %328, %342 : vector<8xi1>, vector<8xf32>
          %353 = llvm.select %345, %329, %344 : vector<8xi1>, vector<8xf32>
          %354 = llvm.extractvalue %27[0] : !llvm.array<8 x vector<8xf32>> 
          %355 = llvm.fcmp "ule" %346, %354 : vector<8xf32>
          %356 = llvm.extractvalue %27[1] : !llvm.array<8 x vector<8xf32>> 
          %357 = llvm.fcmp "ule" %347, %356 : vector<8xf32>
          %358 = llvm.extractvalue %27[2] : !llvm.array<8 x vector<8xf32>> 
          %359 = llvm.fcmp "ule" %348, %358 : vector<8xf32>
          %360 = llvm.extractvalue %27[3] : !llvm.array<8 x vector<8xf32>> 
          %361 = llvm.fcmp "ule" %349, %360 : vector<8xf32>
          %362 = llvm.extractvalue %27[4] : !llvm.array<8 x vector<8xf32>> 
          %363 = llvm.fcmp "ule" %350, %362 : vector<8xf32>
          %364 = llvm.extractvalue %27[5] : !llvm.array<8 x vector<8xf32>> 
          %365 = llvm.fcmp "ule" %351, %364 : vector<8xf32>
          %366 = llvm.extractvalue %27[6] : !llvm.array<8 x vector<8xf32>> 
          %367 = llvm.fcmp "ule" %352, %366 : vector<8xf32>
          %368 = llvm.extractvalue %27[7] : !llvm.array<8 x vector<8xf32>> 
          %369 = llvm.fcmp "ule" %353, %368 : vector<8xf32>
          %370 = llvm.select %355, %346, %354 : vector<8xi1>, vector<8xf32>
          %371 = llvm.select %357, %347, %356 : vector<8xi1>, vector<8xf32>
          %372 = llvm.select %359, %348, %358 : vector<8xi1>, vector<8xf32>
          %373 = llvm.select %361, %349, %360 : vector<8xi1>, vector<8xf32>
          %374 = llvm.select %363, %350, %362 : vector<8xi1>, vector<8xf32>
          %375 = llvm.select %365, %351, %364 : vector<8xi1>, vector<8xf32>
          %376 = llvm.select %367, %352, %366 : vector<8xi1>, vector<8xf32>
          %377 = llvm.select %369, %353, %368 : vector<8xi1>, vector<8xf32>
          %378 = llvm.extractvalue %37[0] : !llvm.array<8 x vector<8xf32>> 
          %379 = llvm.intr.fma(%378, %370, %290) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %380 = llvm.extractvalue %37[1] : !llvm.array<8 x vector<8xf32>> 
          %381 = llvm.intr.fma(%380, %371, %291) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %382 = llvm.extractvalue %37[2] : !llvm.array<8 x vector<8xf32>> 
          %383 = llvm.intr.fma(%382, %372, %292) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %384 = llvm.extractvalue %37[3] : !llvm.array<8 x vector<8xf32>> 
          %385 = llvm.intr.fma(%384, %373, %293) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %386 = llvm.extractvalue %37[4] : !llvm.array<8 x vector<8xf32>> 
          %387 = llvm.intr.fma(%386, %374, %294) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %388 = llvm.extractvalue %37[5] : !llvm.array<8 x vector<8xf32>> 
          %389 = llvm.intr.fma(%388, %375, %295) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %390 = llvm.extractvalue %37[6] : !llvm.array<8 x vector<8xf32>> 
          %391 = llvm.intr.fma(%390, %376, %296) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %392 = llvm.extractvalue %37[7] : !llvm.array<8 x vector<8xf32>> 
          %393 = llvm.intr.fma(%392, %377, %297) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %394 = llvm.extractvalue %36[0] : !llvm.array<8 x vector<8xf32>> 
          %395 = llvm.intr.fma(%394, %370, %379) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %396 = llvm.extractvalue %36[1] : !llvm.array<8 x vector<8xf32>> 
          %397 = llvm.intr.fma(%396, %371, %381) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %398 = llvm.extractvalue %36[2] : !llvm.array<8 x vector<8xf32>> 
          %399 = llvm.intr.fma(%398, %372, %383) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %400 = llvm.extractvalue %36[3] : !llvm.array<8 x vector<8xf32>> 
          %401 = llvm.intr.fma(%400, %373, %385) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %402 = llvm.extractvalue %36[4] : !llvm.array<8 x vector<8xf32>> 
          %403 = llvm.intr.fma(%402, %374, %387) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %404 = llvm.extractvalue %36[5] : !llvm.array<8 x vector<8xf32>> 
          %405 = llvm.intr.fma(%404, %375, %389) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %406 = llvm.extractvalue %36[6] : !llvm.array<8 x vector<8xf32>> 
          %407 = llvm.intr.fma(%406, %376, %391) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %408 = llvm.extractvalue %36[7] : !llvm.array<8 x vector<8xf32>> 
          %409 = llvm.intr.fma(%408, %377, %393) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %410 = llvm.extractvalue %35[0] : !llvm.array<8 x vector<8xf32>> 
          %411 = llvm.extractvalue %34[0] : !llvm.array<8 x vector<8xf32>> 
          %412 = llvm.intr.fma(%395, %410, %411) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %413 = llvm.extractvalue %35[1] : !llvm.array<8 x vector<8xf32>> 
          %414 = llvm.extractvalue %34[1] : !llvm.array<8 x vector<8xf32>> 
          %415 = llvm.intr.fma(%397, %413, %414) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %416 = llvm.extractvalue %35[2] : !llvm.array<8 x vector<8xf32>> 
          %417 = llvm.extractvalue %34[2] : !llvm.array<8 x vector<8xf32>> 
          %418 = llvm.intr.fma(%399, %416, %417) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %419 = llvm.extractvalue %35[3] : !llvm.array<8 x vector<8xf32>> 
          %420 = llvm.extractvalue %34[3] : !llvm.array<8 x vector<8xf32>> 
          %421 = llvm.intr.fma(%401, %419, %420) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %422 = llvm.extractvalue %35[4] : !llvm.array<8 x vector<8xf32>> 
          %423 = llvm.extractvalue %34[4] : !llvm.array<8 x vector<8xf32>> 
          %424 = llvm.intr.fma(%403, %422, %423) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %425 = llvm.extractvalue %35[5] : !llvm.array<8 x vector<8xf32>> 
          %426 = llvm.extractvalue %34[5] : !llvm.array<8 x vector<8xf32>> 
          %427 = llvm.intr.fma(%405, %425, %426) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %428 = llvm.extractvalue %35[6] : !llvm.array<8 x vector<8xf32>> 
          %429 = llvm.extractvalue %34[6] : !llvm.array<8 x vector<8xf32>> 
          %430 = llvm.intr.fma(%407, %428, %429) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %431 = llvm.extractvalue %35[7] : !llvm.array<8 x vector<8xf32>> 
          %432 = llvm.extractvalue %34[7] : !llvm.array<8 x vector<8xf32>> 
          %433 = llvm.intr.fma(%409, %431, %432) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %434 = llvm.extractvalue %33[0] : !llvm.array<8 x vector<8xf32>> 
          %435 = llvm.intr.fma(%412, %395, %434) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %436 = llvm.extractvalue %33[1] : !llvm.array<8 x vector<8xf32>> 
          %437 = llvm.intr.fma(%415, %397, %436) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %438 = llvm.extractvalue %33[2] : !llvm.array<8 x vector<8xf32>> 
          %439 = llvm.intr.fma(%418, %399, %438) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %440 = llvm.extractvalue %33[3] : !llvm.array<8 x vector<8xf32>> 
          %441 = llvm.intr.fma(%421, %401, %440) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %442 = llvm.extractvalue %33[4] : !llvm.array<8 x vector<8xf32>> 
          %443 = llvm.intr.fma(%424, %403, %442) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %444 = llvm.extractvalue %33[5] : !llvm.array<8 x vector<8xf32>> 
          %445 = llvm.intr.fma(%427, %405, %444) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %446 = llvm.extractvalue %33[6] : !llvm.array<8 x vector<8xf32>> 
          %447 = llvm.intr.fma(%430, %407, %446) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %448 = llvm.extractvalue %33[7] : !llvm.array<8 x vector<8xf32>> 
          %449 = llvm.intr.fma(%433, %409, %448) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %450 = llvm.extractvalue %32[0] : !llvm.array<8 x vector<8xf32>> 
          %451 = llvm.intr.fma(%435, %395, %450) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %452 = llvm.extractvalue %32[1] : !llvm.array<8 x vector<8xf32>> 
          %453 = llvm.intr.fma(%437, %397, %452) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %454 = llvm.extractvalue %32[2] : !llvm.array<8 x vector<8xf32>> 
          %455 = llvm.intr.fma(%439, %399, %454) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %456 = llvm.extractvalue %32[3] : !llvm.array<8 x vector<8xf32>> 
          %457 = llvm.intr.fma(%441, %401, %456) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %458 = llvm.extractvalue %32[4] : !llvm.array<8 x vector<8xf32>> 
          %459 = llvm.intr.fma(%443, %403, %458) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %460 = llvm.extractvalue %32[5] : !llvm.array<8 x vector<8xf32>> 
          %461 = llvm.intr.fma(%445, %405, %460) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %462 = llvm.extractvalue %32[6] : !llvm.array<8 x vector<8xf32>> 
          %463 = llvm.intr.fma(%447, %407, %462) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %464 = llvm.extractvalue %32[7] : !llvm.array<8 x vector<8xf32>> 
          %465 = llvm.intr.fma(%449, %409, %464) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %466 = llvm.extractvalue %31[0] : !llvm.array<8 x vector<8xf32>> 
          %467 = llvm.intr.fma(%451, %395, %466) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %468 = llvm.extractvalue %31[1] : !llvm.array<8 x vector<8xf32>> 
          %469 = llvm.intr.fma(%453, %397, %468) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %470 = llvm.extractvalue %31[2] : !llvm.array<8 x vector<8xf32>> 
          %471 = llvm.intr.fma(%455, %399, %470) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %472 = llvm.extractvalue %31[3] : !llvm.array<8 x vector<8xf32>> 
          %473 = llvm.intr.fma(%457, %401, %472) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %474 = llvm.extractvalue %31[4] : !llvm.array<8 x vector<8xf32>> 
          %475 = llvm.intr.fma(%459, %403, %474) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %476 = llvm.extractvalue %31[5] : !llvm.array<8 x vector<8xf32>> 
          %477 = llvm.intr.fma(%461, %405, %476) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %478 = llvm.extractvalue %31[6] : !llvm.array<8 x vector<8xf32>> 
          %479 = llvm.intr.fma(%463, %407, %478) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %480 = llvm.extractvalue %31[7] : !llvm.array<8 x vector<8xf32>> 
          %481 = llvm.intr.fma(%465, %409, %480) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %482 = llvm.intr.fma(%467, %395, %299) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %483 = llvm.intr.fma(%469, %397, %302) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %484 = llvm.intr.fma(%471, %399, %305) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %485 = llvm.intr.fma(%473, %401, %308) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %486 = llvm.intr.fma(%475, %403, %311) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %487 = llvm.intr.fma(%477, %405, %314) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %488 = llvm.intr.fma(%479, %407, %317) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %489 = llvm.intr.fma(%481, %409, %320) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %490 = llvm.fmul %395, %395 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %491 = llvm.fmul %397, %397 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %492 = llvm.fmul %399, %399 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %493 = llvm.fmul %401, %401 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %494 = llvm.fmul %403, %403 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %495 = llvm.fmul %405, %405 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %496 = llvm.fmul %407, %407 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %497 = llvm.fmul %409, %409 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %498 = llvm.intr.fma(%482, %490, %395) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %499 = llvm.intr.fma(%483, %491, %397) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %500 = llvm.intr.fma(%484, %492, %399) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %501 = llvm.intr.fma(%485, %493, %401) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %502 = llvm.intr.fma(%486, %494, %403) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %503 = llvm.intr.fma(%487, %495, %405) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %504 = llvm.intr.fma(%488, %496, %407) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %505 = llvm.intr.fma(%489, %497, %409) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %506 = llvm.extractvalue %39[0] : !llvm.array<8 x vector<8xf32>> 
          %507 = llvm.fadd %498, %506 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %508 = llvm.extractvalue %39[1] : !llvm.array<8 x vector<8xf32>> 
          %509 = llvm.fadd %499, %508 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %510 = llvm.extractvalue %39[2] : !llvm.array<8 x vector<8xf32>> 
          %511 = llvm.fadd %500, %510 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %512 = llvm.extractvalue %39[3] : !llvm.array<8 x vector<8xf32>> 
          %513 = llvm.fadd %501, %512 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %514 = llvm.extractvalue %39[4] : !llvm.array<8 x vector<8xf32>> 
          %515 = llvm.fadd %502, %514 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %516 = llvm.extractvalue %39[5] : !llvm.array<8 x vector<8xf32>> 
          %517 = llvm.fadd %503, %516 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %518 = llvm.extractvalue %39[6] : !llvm.array<8 x vector<8xf32>> 
          %519 = llvm.fadd %504, %518 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %520 = llvm.extractvalue %39[7] : !llvm.array<8 x vector<8xf32>> 
          %521 = llvm.fadd %505, %520 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %522 = llvm.fptosi %370 : vector<8xf32> to vector<8xi32>
          %523 = llvm.fptosi %371 : vector<8xf32> to vector<8xi32>
          %524 = llvm.fptosi %372 : vector<8xf32> to vector<8xi32>
          %525 = llvm.fptosi %373 : vector<8xf32> to vector<8xi32>
          %526 = llvm.fptosi %374 : vector<8xf32> to vector<8xi32>
          %527 = llvm.fptosi %375 : vector<8xf32> to vector<8xi32>
          %528 = llvm.fptosi %376 : vector<8xf32> to vector<8xi32>
          %529 = llvm.fptosi %377 : vector<8xf32> to vector<8xi32>
          %530 = llvm.extractvalue %25[0] : !llvm.array<8 x vector<8xi32>> 
          %531 = llvm.add %522, %530 : vector<8xi32>
          %532 = llvm.extractvalue %25[1] : !llvm.array<8 x vector<8xi32>> 
          %533 = llvm.add %523, %532 : vector<8xi32>
          %534 = llvm.extractvalue %25[2] : !llvm.array<8 x vector<8xi32>> 
          %535 = llvm.add %524, %534 : vector<8xi32>
          %536 = llvm.extractvalue %25[3] : !llvm.array<8 x vector<8xi32>> 
          %537 = llvm.add %525, %536 : vector<8xi32>
          %538 = llvm.extractvalue %25[4] : !llvm.array<8 x vector<8xi32>> 
          %539 = llvm.add %526, %538 : vector<8xi32>
          %540 = llvm.extractvalue %25[5] : !llvm.array<8 x vector<8xi32>> 
          %541 = llvm.add %527, %540 : vector<8xi32>
          %542 = llvm.extractvalue %25[6] : !llvm.array<8 x vector<8xi32>> 
          %543 = llvm.add %528, %542 : vector<8xi32>
          %544 = llvm.extractvalue %25[7] : !llvm.array<8 x vector<8xi32>> 
          %545 = llvm.add %529, %544 : vector<8xi32>
          %546 = llvm.extractvalue %26[0] : !llvm.array<8 x vector<8xi32>> 
          %547 = llvm.shl %531, %546 : vector<8xi32>
          %548 = llvm.extractvalue %26[1] : !llvm.array<8 x vector<8xi32>> 
          %549 = llvm.shl %533, %548 : vector<8xi32>
          %550 = llvm.extractvalue %26[2] : !llvm.array<8 x vector<8xi32>> 
          %551 = llvm.shl %535, %550 : vector<8xi32>
          %552 = llvm.extractvalue %26[3] : !llvm.array<8 x vector<8xi32>> 
          %553 = llvm.shl %537, %552 : vector<8xi32>
          %554 = llvm.extractvalue %26[4] : !llvm.array<8 x vector<8xi32>> 
          %555 = llvm.shl %539, %554 : vector<8xi32>
          %556 = llvm.extractvalue %26[5] : !llvm.array<8 x vector<8xi32>> 
          %557 = llvm.shl %541, %556 : vector<8xi32>
          %558 = llvm.extractvalue %26[6] : !llvm.array<8 x vector<8xi32>> 
          %559 = llvm.shl %543, %558 : vector<8xi32>
          %560 = llvm.extractvalue %26[7] : !llvm.array<8 x vector<8xi32>> 
          %561 = llvm.shl %545, %560 : vector<8xi32>
          %562 = llvm.bitcast %547 : vector<8xi32> to vector<8xf32>
          %563 = llvm.bitcast %549 : vector<8xi32> to vector<8xf32>
          %564 = llvm.bitcast %551 : vector<8xi32> to vector<8xf32>
          %565 = llvm.bitcast %553 : vector<8xi32> to vector<8xf32>
          %566 = llvm.bitcast %555 : vector<8xi32> to vector<8xf32>
          %567 = llvm.bitcast %557 : vector<8xi32> to vector<8xf32>
          %568 = llvm.bitcast %559 : vector<8xi32> to vector<8xf32>
          %569 = llvm.bitcast %561 : vector<8xi32> to vector<8xf32>
          %570 = llvm.fmul %507, %562 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %571 = llvm.fmul %509, %563 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %572 = llvm.fmul %511, %564 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %573 = llvm.fmul %513, %565 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %574 = llvm.fmul %515, %566 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %575 = llvm.fmul %517, %567 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %576 = llvm.fmul %519, %568 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %577 = llvm.fmul %521, %569 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %578 = llvm.extractelement %154[%10 : i64] : vector<8xf32>
          %579 = "llvm.intr.vp.reduce.fadd"(%578, %570, %163, %9) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %580 = llvm.extractelement %154[%6 : i64] : vector<8xf32>
          %581 = "llvm.intr.vp.reduce.fadd"(%580, %571, %165, %9) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %582 = llvm.extractelement %154[%5 : i64] : vector<8xf32>
          %583 = "llvm.intr.vp.reduce.fadd"(%582, %572, %167, %9) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %584 = llvm.extractelement %154[%4 : i64] : vector<8xf32>
          %585 = "llvm.intr.vp.reduce.fadd"(%584, %573, %169, %9) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %586 = llvm.extractelement %154[%3 : i64] : vector<8xf32>
          %587 = "llvm.intr.vp.reduce.fadd"(%586, %574, %171, %9) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %588 = llvm.extractelement %154[%2 : i64] : vector<8xf32>
          %589 = "llvm.intr.vp.reduce.fadd"(%588, %575, %173, %9) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %590 = llvm.extractelement %154[%1 : i64] : vector<8xf32>
          %591 = "llvm.intr.vp.reduce.fadd"(%590, %576, %175, %9) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %592 = llvm.extractelement %154[%0 : i64] : vector<8xf32>
          %593 = "llvm.intr.vp.reduce.fadd"(%592, %577, %177, %9) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %594 = llvm.insertelement %579, %42[%10 : i64] : vector<8xf32>
          %595 = llvm.insertelement %581, %594[%6 : i64] : vector<8xf32>
          %596 = llvm.insertelement %583, %595[%5 : i64] : vector<8xf32>
          %597 = llvm.insertelement %585, %596[%4 : i64] : vector<8xf32>
          %598 = llvm.insertelement %587, %597[%3 : i64] : vector<8xf32>
          %599 = llvm.insertelement %589, %598[%2 : i64] : vector<8xf32>
          %600 = llvm.insertelement %591, %599[%1 : i64] : vector<8xf32>
          %601 = llvm.insertelement %593, %600[%0 : i64] : vector<8xf32>
          %602 = llvm.add %153, %53 : i64
          llvm.br ^bb12(%602, %601 : i64, vector<8xf32>)
        ^bb14:  // pred: ^bb12
          llvm.intr.masked.store %154, %131, %87 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          llvm.br ^bb15(%51 : i64)
        ^bb15(%603: i64):  // 2 preds: ^bb14, ^bb19
          %604 = llvm.icmp "slt" %603, %82 : i64
          llvm.cond_br %604, ^bb16, ^bb20
        ^bb16:  // pred: ^bb15
          %605 = llvm.add %88, %603 : i64
          %606 = llvm.getelementptr %58[%605] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %607 = llvm.load %606 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          llvm.br ^bb17(%51, %607 : i64, vector<1xf32>)
        ^bb17(%608: i64, %609: vector<1xf32>):  // 2 preds: ^bb16, ^bb18
          %610 = llvm.icmp "slt" %608, %52 : i64
          llvm.cond_br %610, ^bb18, ^bb19
        ^bb18:  // pred: ^bb17
          %611 = llvm.sub %52, %608 : i64
          %612 = llvm.icmp "slt" %611, %53 : i64
          %613 = llvm.select %612, %611, %53 : i1, i64
          %614 = llvm.trunc %613 : i64 to i32
          %615 = llvm.insertelement %614, %12[%11 : i32] : vector<8xi32>
          %616 = llvm.shufflevector %615, %12 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %617 = llvm.icmp "sgt" %616, %43 : vector<8xi32>
          %618 = llvm.add %83, %603 : i64
          %619 = llvm.mul %76, %15 : i64
          %620 = llvm.mul %618, %52 : i64
          %621 = llvm.add %619, %620 : i64
          %622 = llvm.add %621, %608 : i64
          %623 = llvm.getelementptr %64[%622] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %624 = llvm.intr.masked.load %623, %617, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %625 = llvm.fmul %624, %46 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %626 = llvm.extractelement %609[%10 : i64] : vector<1xf32>
          %627 = "llvm.intr.vp.reduce.fmax"(%626, %625, %617, %9) : (f32, vector<8xf32>, vector<8xi1>, i32) -> f32
          %628 = llvm.insertelement %627, %8[%11 : i32] : vector<1xf32>
          %629 = llvm.add %608, %53 : i64
          llvm.br ^bb17(%629, %628 : i64, vector<1xf32>)
        ^bb19:  // pred: ^bb17
          %630 = llvm.extractelement %609[%10 : i64] : vector<1xf32>
          %631 = llvm.mul %51, %53 overflow<nsw, nuw> : i64
          %632 = llvm.add %631, %603 overflow<nsw, nuw> : i64
          %633 = llvm.getelementptr inbounds|nuw %58[%632] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %630, %633 : f32, !llvm.ptr
          %634 = llvm.add %603, %50 : i64
          llvm.br ^bb15(%634 : i64)
        ^bb20:  // pred: ^bb15
          %635 = llvm.intr.masked.load %90, %87, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %636 = llvm.shufflevector %635, %635 [0, 1, 2, 3, 4, 5, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %637 = llvm.shufflevector %636, %41 [0, 1, 2, 3, 4, 5, 6, 7, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %638 = llvm.shufflevector %636, %637 [64, 65, 66, 67, 68, 69, 70, 71, 0, 1, 2, 3, 4, 5, 6, 7, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %639 = llvm.shufflevector %636, %638 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 0, 1, 2, 3, 4, 5, 6, 7, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %640 = llvm.shufflevector %636, %639 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 0, 1, 2, 3, 4, 5, 6, 7, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %641 = llvm.shufflevector %636, %640 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 0, 1, 2, 3, 4, 5, 6, 7, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %642 = llvm.shufflevector %636, %641 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 0, 1, 2, 3, 4, 5, 6, 7, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %643 = llvm.shufflevector %636, %642 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 0, 1, 2, 3, 4, 5, 6, 7, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %644 = llvm.shufflevector %636, %643 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 0, 1, 2, 3, 4, 5, 6, 7] : vector<64xf32> 
          %645 = llvm.shufflevector %644, %644 [0, 8, 16, 24, 32, 40, 48, 56, 1, 9, 17, 25, 33, 41, 49, 57, 2, 10, 18, 26, 34, 42, 50, 58, 3, 11, 19, 27, 35, 43, 51, 59, 4, 12, 20, 28, 36, 44, 52, 60, 5, 13, 21, 29, 37, 45, 53, 61, 6, 14, 22, 30, 38, 46, 54, 62, 7, 15, 23, 31, 39, 47, 55, 63] : vector<64xf32> 
          %646 = llvm.shufflevector %645, %645 [0, 1, 2, 3, 4, 5, 6, 7] : vector<64xf32> 
          %647 = llvm.shufflevector %645, %645 [8, 9, 10, 11, 12, 13, 14, 15] : vector<64xf32> 
          %648 = llvm.shufflevector %645, %645 [16, 17, 18, 19, 20, 21, 22, 23] : vector<64xf32> 
          %649 = llvm.shufflevector %645, %645 [24, 25, 26, 27, 28, 29, 30, 31] : vector<64xf32> 
          %650 = llvm.shufflevector %645, %645 [32, 33, 34, 35, 36, 37, 38, 39] : vector<64xf32> 
          %651 = llvm.shufflevector %645, %645 [40, 41, 42, 43, 44, 45, 46, 47] : vector<64xf32> 
          %652 = llvm.shufflevector %645, %645 [48, 49, 50, 51, 52, 53, 54, 55] : vector<64xf32> 
          %653 = llvm.shufflevector %645, %645 [56, 57, 58, 59, 60, 61, 62, 63] : vector<64xf32> 
          %654 = llvm.intr.masked.load %131, %87, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %655 = llvm.shufflevector %654, %654 [0, 1, 2, 3, 4, 5, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %656 = llvm.shufflevector %655, %41 [0, 1, 2, 3, 4, 5, 6, 7, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %657 = llvm.shufflevector %655, %656 [64, 65, 66, 67, 68, 69, 70, 71, 0, 1, 2, 3, 4, 5, 6, 7, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %658 = llvm.shufflevector %655, %657 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 0, 1, 2, 3, 4, 5, 6, 7, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %659 = llvm.shufflevector %655, %658 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 0, 1, 2, 3, 4, 5, 6, 7, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %660 = llvm.shufflevector %655, %659 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 0, 1, 2, 3, 4, 5, 6, 7, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %661 = llvm.shufflevector %655, %660 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 0, 1, 2, 3, 4, 5, 6, 7, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %662 = llvm.shufflevector %655, %661 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 0, 1, 2, 3, 4, 5, 6, 7, 120, 121, 122, 123, 124, 125, 126, 127] : vector<64xf32> 
          %663 = llvm.shufflevector %655, %662 [64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 0, 1, 2, 3, 4, 5, 6, 7] : vector<64xf32> 
          %664 = llvm.shufflevector %663, %663 [0, 8, 16, 24, 32, 40, 48, 56, 1, 9, 17, 25, 33, 41, 49, 57, 2, 10, 18, 26, 34, 42, 50, 58, 3, 11, 19, 27, 35, 43, 51, 59, 4, 12, 20, 28, 36, 44, 52, 60, 5, 13, 21, 29, 37, 45, 53, 61, 6, 14, 22, 30, 38, 46, 54, 62, 7, 15, 23, 31, 39, 47, 55, 63] : vector<64xf32> 
          %665 = llvm.shufflevector %664, %664 [0, 1, 2, 3, 4, 5, 6, 7] : vector<64xf32> 
          %666 = llvm.shufflevector %664, %664 [8, 9, 10, 11, 12, 13, 14, 15] : vector<64xf32> 
          %667 = llvm.shufflevector %664, %664 [16, 17, 18, 19, 20, 21, 22, 23] : vector<64xf32> 
          %668 = llvm.shufflevector %664, %664 [24, 25, 26, 27, 28, 29, 30, 31] : vector<64xf32> 
          %669 = llvm.shufflevector %664, %664 [32, 33, 34, 35, 36, 37, 38, 39] : vector<64xf32> 
          %670 = llvm.shufflevector %664, %664 [40, 41, 42, 43, 44, 45, 46, 47] : vector<64xf32> 
          %671 = llvm.shufflevector %664, %664 [48, 49, 50, 51, 52, 53, 54, 55] : vector<64xf32> 
          %672 = llvm.shufflevector %664, %664 [56, 57, 58, 59, 60, 61, 62, 63] : vector<64xf32> 
          llvm.br ^bb21(%51 : i64)
        ^bb21(%673: i64):  // 2 preds: ^bb20, ^bb22
          %674 = llvm.icmp "slt" %673, %52 : i64
          llvm.cond_br %674, ^bb22, ^bb23
        ^bb22:  // pred: ^bb21
          %675 = llvm.sub %52, %673 : i64
          %676 = llvm.icmp "slt" %675, %53 : i64
          %677 = llvm.select %676, %675, %53 : i1, i64
          %678 = llvm.insertelement %677, %7[%11 : i32] : vector<8xi64>
          %679 = llvm.shufflevector %678, %7 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi64> 
          %680 = llvm.icmp "sgt" %679, %24 : vector<8xi64>
          %681 = llvm.icmp "sgt" %82, %51 : i64
          %682 = llvm.select %681, %680, %23 : i1, vector<8xi1>
          %683 = llvm.icmp "sgt" %82, %50 : i64
          %684 = llvm.select %683, %680, %23 : i1, vector<8xi1>
          %685 = llvm.icmp "sgt" %82, %54 : i64
          %686 = llvm.select %685, %680, %23 : i1, vector<8xi1>
          %687 = llvm.icmp "sgt" %82, %22 : i64
          %688 = llvm.select %687, %680, %23 : i1, vector<8xi1>
          %689 = llvm.icmp "sgt" %82, %21 : i64
          %690 = llvm.select %689, %680, %23 : i1, vector<8xi1>
          %691 = llvm.icmp "sgt" %82, %20 : i64
          %692 = llvm.select %691, %680, %23 : i1, vector<8xi1>
          %693 = llvm.icmp "sgt" %82, %19 : i64
          %694 = llvm.select %693, %680, %23 : i1, vector<8xi1>
          %695 = llvm.icmp "sgt" %82, %18 : i64
          %696 = llvm.select %695, %680, %23 : i1, vector<8xi1>
          %697 = llvm.mul %76, %15 : i64
          %698 = llvm.mul %83, %52 : i64
          %699 = llvm.add %697, %698 : i64
          %700 = llvm.add %699, %673 : i64
          %701 = llvm.getelementptr %64[%700] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %702 = llvm.intr.masked.load %701, %682, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %703 = llvm.add %83, %50 : i64
          %704 = llvm.mul %703, %52 : i64
          %705 = llvm.add %697, %704 : i64
          %706 = llvm.add %705, %673 : i64
          %707 = llvm.getelementptr %64[%706] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %708 = llvm.intr.masked.load %707, %684, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %709 = llvm.add %83, %54 : i64
          %710 = llvm.mul %709, %52 : i64
          %711 = llvm.add %697, %710 : i64
          %712 = llvm.add %711, %673 : i64
          %713 = llvm.getelementptr %64[%712] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %714 = llvm.intr.masked.load %713, %686, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %715 = llvm.add %83, %22 : i64
          %716 = llvm.mul %715, %52 : i64
          %717 = llvm.add %697, %716 : i64
          %718 = llvm.add %717, %673 : i64
          %719 = llvm.getelementptr %64[%718] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %720 = llvm.intr.masked.load %719, %688, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %721 = llvm.add %83, %21 : i64
          %722 = llvm.mul %721, %52 : i64
          %723 = llvm.add %697, %722 : i64
          %724 = llvm.add %723, %673 : i64
          %725 = llvm.getelementptr %64[%724] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %726 = llvm.intr.masked.load %725, %690, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %727 = llvm.add %83, %20 : i64
          %728 = llvm.mul %727, %52 : i64
          %729 = llvm.add %697, %728 : i64
          %730 = llvm.add %729, %673 : i64
          %731 = llvm.getelementptr %64[%730] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %732 = llvm.intr.masked.load %731, %692, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %733 = llvm.add %83, %19 : i64
          %734 = llvm.mul %733, %52 : i64
          %735 = llvm.add %697, %734 : i64
          %736 = llvm.add %735, %673 : i64
          %737 = llvm.getelementptr %64[%736] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %738 = llvm.intr.masked.load %737, %694, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %739 = llvm.add %83, %18 : i64
          %740 = llvm.mul %739, %52 : i64
          %741 = llvm.add %697, %740 : i64
          %742 = llvm.add %741, %673 : i64
          %743 = llvm.getelementptr %64[%742] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %744 = llvm.intr.masked.load %743, %696, %42 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %745 = llvm.extractvalue %44[0] : !llvm.array<8 x vector<8xf32>> 
          %746 = llvm.fmul %702, %745 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %747 = llvm.extractvalue %44[1] : !llvm.array<8 x vector<8xf32>> 
          %748 = llvm.fmul %708, %747 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %749 = llvm.extractvalue %44[2] : !llvm.array<8 x vector<8xf32>> 
          %750 = llvm.fmul %714, %749 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %751 = llvm.extractvalue %44[3] : !llvm.array<8 x vector<8xf32>> 
          %752 = llvm.fmul %720, %751 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %753 = llvm.extractvalue %44[4] : !llvm.array<8 x vector<8xf32>> 
          %754 = llvm.fmul %726, %753 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %755 = llvm.extractvalue %44[5] : !llvm.array<8 x vector<8xf32>> 
          %756 = llvm.fmul %732, %755 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %757 = llvm.extractvalue %44[6] : !llvm.array<8 x vector<8xf32>> 
          %758 = llvm.fmul %738, %757 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %759 = llvm.extractvalue %44[7] : !llvm.array<8 x vector<8xf32>> 
          %760 = llvm.fmul %744, %759 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %761 = llvm.fsub %746, %646 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %762 = llvm.fsub %748, %647 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %763 = llvm.fsub %750, %648 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %764 = llvm.fsub %752, %649 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %765 = llvm.fsub %754, %650 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %766 = llvm.fsub %756, %651 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %767 = llvm.fsub %758, %652 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %768 = llvm.fsub %760, %653 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %769 = llvm.extractvalue %30[0] : !llvm.array<8 x vector<8xf32>> 
          %770 = llvm.fcmp "uge" %761, %769 : vector<8xf32>
          %771 = llvm.extractvalue %30[1] : !llvm.array<8 x vector<8xf32>> 
          %772 = llvm.fcmp "uge" %762, %771 : vector<8xf32>
          %773 = llvm.extractvalue %30[2] : !llvm.array<8 x vector<8xf32>> 
          %774 = llvm.fcmp "uge" %763, %773 : vector<8xf32>
          %775 = llvm.extractvalue %30[3] : !llvm.array<8 x vector<8xf32>> 
          %776 = llvm.fcmp "uge" %764, %775 : vector<8xf32>
          %777 = llvm.extractvalue %30[4] : !llvm.array<8 x vector<8xf32>> 
          %778 = llvm.fcmp "uge" %765, %777 : vector<8xf32>
          %779 = llvm.extractvalue %30[5] : !llvm.array<8 x vector<8xf32>> 
          %780 = llvm.fcmp "uge" %766, %779 : vector<8xf32>
          %781 = llvm.extractvalue %30[6] : !llvm.array<8 x vector<8xf32>> 
          %782 = llvm.fcmp "uge" %767, %781 : vector<8xf32>
          %783 = llvm.extractvalue %30[7] : !llvm.array<8 x vector<8xf32>> 
          %784 = llvm.fcmp "uge" %768, %783 : vector<8xf32>
          %785 = llvm.select %770, %761, %769 : vector<8xi1>, vector<8xf32>
          %786 = llvm.select %772, %762, %771 : vector<8xi1>, vector<8xf32>
          %787 = llvm.select %774, %763, %773 : vector<8xi1>, vector<8xf32>
          %788 = llvm.select %776, %764, %775 : vector<8xi1>, vector<8xf32>
          %789 = llvm.select %778, %765, %777 : vector<8xi1>, vector<8xf32>
          %790 = llvm.select %780, %766, %779 : vector<8xi1>, vector<8xf32>
          %791 = llvm.select %782, %767, %781 : vector<8xi1>, vector<8xf32>
          %792 = llvm.select %784, %768, %783 : vector<8xi1>, vector<8xf32>
          %793 = llvm.extractvalue %29[0] : !llvm.array<8 x vector<8xf32>> 
          %794 = llvm.fcmp "ule" %785, %793 : vector<8xf32>
          %795 = llvm.extractvalue %29[1] : !llvm.array<8 x vector<8xf32>> 
          %796 = llvm.fcmp "ule" %786, %795 : vector<8xf32>
          %797 = llvm.extractvalue %29[2] : !llvm.array<8 x vector<8xf32>> 
          %798 = llvm.fcmp "ule" %787, %797 : vector<8xf32>
          %799 = llvm.extractvalue %29[3] : !llvm.array<8 x vector<8xf32>> 
          %800 = llvm.fcmp "ule" %788, %799 : vector<8xf32>
          %801 = llvm.extractvalue %29[4] : !llvm.array<8 x vector<8xf32>> 
          %802 = llvm.fcmp "ule" %789, %801 : vector<8xf32>
          %803 = llvm.extractvalue %29[5] : !llvm.array<8 x vector<8xf32>> 
          %804 = llvm.fcmp "ule" %790, %803 : vector<8xf32>
          %805 = llvm.extractvalue %29[6] : !llvm.array<8 x vector<8xf32>> 
          %806 = llvm.fcmp "ule" %791, %805 : vector<8xf32>
          %807 = llvm.extractvalue %29[7] : !llvm.array<8 x vector<8xf32>> 
          %808 = llvm.fcmp "ule" %792, %807 : vector<8xf32>
          %809 = llvm.select %794, %785, %793 : vector<8xi1>, vector<8xf32>
          %810 = llvm.select %796, %786, %795 : vector<8xi1>, vector<8xf32>
          %811 = llvm.select %798, %787, %797 : vector<8xi1>, vector<8xf32>
          %812 = llvm.select %800, %788, %799 : vector<8xi1>, vector<8xf32>
          %813 = llvm.select %802, %789, %801 : vector<8xi1>, vector<8xf32>
          %814 = llvm.select %804, %790, %803 : vector<8xi1>, vector<8xf32>
          %815 = llvm.select %806, %791, %805 : vector<8xi1>, vector<8xf32>
          %816 = llvm.select %808, %792, %807 : vector<8xi1>, vector<8xf32>
          %817 = llvm.extractvalue %38[0] : !llvm.array<8 x vector<8xf32>> 
          %818 = llvm.extractvalue %40[0] : !llvm.array<8 x vector<8xf32>> 
          %819 = llvm.intr.fma(%809, %817, %818) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %820 = llvm.extractvalue %38[1] : !llvm.array<8 x vector<8xf32>> 
          %821 = llvm.extractvalue %40[1] : !llvm.array<8 x vector<8xf32>> 
          %822 = llvm.intr.fma(%810, %820, %821) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %823 = llvm.extractvalue %38[2] : !llvm.array<8 x vector<8xf32>> 
          %824 = llvm.extractvalue %40[2] : !llvm.array<8 x vector<8xf32>> 
          %825 = llvm.intr.fma(%811, %823, %824) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %826 = llvm.extractvalue %38[3] : !llvm.array<8 x vector<8xf32>> 
          %827 = llvm.extractvalue %40[3] : !llvm.array<8 x vector<8xf32>> 
          %828 = llvm.intr.fma(%812, %826, %827) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %829 = llvm.extractvalue %38[4] : !llvm.array<8 x vector<8xf32>> 
          %830 = llvm.extractvalue %40[4] : !llvm.array<8 x vector<8xf32>> 
          %831 = llvm.intr.fma(%813, %829, %830) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %832 = llvm.extractvalue %38[5] : !llvm.array<8 x vector<8xf32>> 
          %833 = llvm.extractvalue %40[5] : !llvm.array<8 x vector<8xf32>> 
          %834 = llvm.intr.fma(%814, %832, %833) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %835 = llvm.extractvalue %38[6] : !llvm.array<8 x vector<8xf32>> 
          %836 = llvm.extractvalue %40[6] : !llvm.array<8 x vector<8xf32>> 
          %837 = llvm.intr.fma(%815, %835, %836) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %838 = llvm.extractvalue %38[7] : !llvm.array<8 x vector<8xf32>> 
          %839 = llvm.extractvalue %40[7] : !llvm.array<8 x vector<8xf32>> 
          %840 = llvm.intr.fma(%816, %838, %839) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %841 = llvm.intr.floor(%819) : (vector<8xf32>) -> vector<8xf32>
          %842 = llvm.intr.floor(%822) : (vector<8xf32>) -> vector<8xf32>
          %843 = llvm.intr.floor(%825) : (vector<8xf32>) -> vector<8xf32>
          %844 = llvm.intr.floor(%828) : (vector<8xf32>) -> vector<8xf32>
          %845 = llvm.intr.floor(%831) : (vector<8xf32>) -> vector<8xf32>
          %846 = llvm.intr.floor(%834) : (vector<8xf32>) -> vector<8xf32>
          %847 = llvm.intr.floor(%837) : (vector<8xf32>) -> vector<8xf32>
          %848 = llvm.intr.floor(%840) : (vector<8xf32>) -> vector<8xf32>
          %849 = llvm.extractvalue %28[0] : !llvm.array<8 x vector<8xf32>> 
          %850 = llvm.fcmp "uge" %841, %849 : vector<8xf32>
          %851 = llvm.extractvalue %28[1] : !llvm.array<8 x vector<8xf32>> 
          %852 = llvm.fcmp "uge" %842, %851 : vector<8xf32>
          %853 = llvm.extractvalue %28[2] : !llvm.array<8 x vector<8xf32>> 
          %854 = llvm.fcmp "uge" %843, %853 : vector<8xf32>
          %855 = llvm.extractvalue %28[3] : !llvm.array<8 x vector<8xf32>> 
          %856 = llvm.fcmp "uge" %844, %855 : vector<8xf32>
          %857 = llvm.extractvalue %28[4] : !llvm.array<8 x vector<8xf32>> 
          %858 = llvm.fcmp "uge" %845, %857 : vector<8xf32>
          %859 = llvm.extractvalue %28[5] : !llvm.array<8 x vector<8xf32>> 
          %860 = llvm.fcmp "uge" %846, %859 : vector<8xf32>
          %861 = llvm.extractvalue %28[6] : !llvm.array<8 x vector<8xf32>> 
          %862 = llvm.fcmp "uge" %847, %861 : vector<8xf32>
          %863 = llvm.extractvalue %28[7] : !llvm.array<8 x vector<8xf32>> 
          %864 = llvm.fcmp "uge" %848, %863 : vector<8xf32>
          %865 = llvm.select %850, %841, %849 : vector<8xi1>, vector<8xf32>
          %866 = llvm.select %852, %842, %851 : vector<8xi1>, vector<8xf32>
          %867 = llvm.select %854, %843, %853 : vector<8xi1>, vector<8xf32>
          %868 = llvm.select %856, %844, %855 : vector<8xi1>, vector<8xf32>
          %869 = llvm.select %858, %845, %857 : vector<8xi1>, vector<8xf32>
          %870 = llvm.select %860, %846, %859 : vector<8xi1>, vector<8xf32>
          %871 = llvm.select %862, %847, %861 : vector<8xi1>, vector<8xf32>
          %872 = llvm.select %864, %848, %863 : vector<8xi1>, vector<8xf32>
          %873 = llvm.extractvalue %27[0] : !llvm.array<8 x vector<8xf32>> 
          %874 = llvm.fcmp "ule" %865, %873 : vector<8xf32>
          %875 = llvm.extractvalue %27[1] : !llvm.array<8 x vector<8xf32>> 
          %876 = llvm.fcmp "ule" %866, %875 : vector<8xf32>
          %877 = llvm.extractvalue %27[2] : !llvm.array<8 x vector<8xf32>> 
          %878 = llvm.fcmp "ule" %867, %877 : vector<8xf32>
          %879 = llvm.extractvalue %27[3] : !llvm.array<8 x vector<8xf32>> 
          %880 = llvm.fcmp "ule" %868, %879 : vector<8xf32>
          %881 = llvm.extractvalue %27[4] : !llvm.array<8 x vector<8xf32>> 
          %882 = llvm.fcmp "ule" %869, %881 : vector<8xf32>
          %883 = llvm.extractvalue %27[5] : !llvm.array<8 x vector<8xf32>> 
          %884 = llvm.fcmp "ule" %870, %883 : vector<8xf32>
          %885 = llvm.extractvalue %27[6] : !llvm.array<8 x vector<8xf32>> 
          %886 = llvm.fcmp "ule" %871, %885 : vector<8xf32>
          %887 = llvm.extractvalue %27[7] : !llvm.array<8 x vector<8xf32>> 
          %888 = llvm.fcmp "ule" %872, %887 : vector<8xf32>
          %889 = llvm.select %874, %865, %873 : vector<8xi1>, vector<8xf32>
          %890 = llvm.select %876, %866, %875 : vector<8xi1>, vector<8xf32>
          %891 = llvm.select %878, %867, %877 : vector<8xi1>, vector<8xf32>
          %892 = llvm.select %880, %868, %879 : vector<8xi1>, vector<8xf32>
          %893 = llvm.select %882, %869, %881 : vector<8xi1>, vector<8xf32>
          %894 = llvm.select %884, %870, %883 : vector<8xi1>, vector<8xf32>
          %895 = llvm.select %886, %871, %885 : vector<8xi1>, vector<8xf32>
          %896 = llvm.select %888, %872, %887 : vector<8xi1>, vector<8xf32>
          %897 = llvm.extractvalue %37[0] : !llvm.array<8 x vector<8xf32>> 
          %898 = llvm.intr.fma(%897, %889, %809) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %899 = llvm.extractvalue %37[1] : !llvm.array<8 x vector<8xf32>> 
          %900 = llvm.intr.fma(%899, %890, %810) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %901 = llvm.extractvalue %37[2] : !llvm.array<8 x vector<8xf32>> 
          %902 = llvm.intr.fma(%901, %891, %811) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %903 = llvm.extractvalue %37[3] : !llvm.array<8 x vector<8xf32>> 
          %904 = llvm.intr.fma(%903, %892, %812) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %905 = llvm.extractvalue %37[4] : !llvm.array<8 x vector<8xf32>> 
          %906 = llvm.intr.fma(%905, %893, %813) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %907 = llvm.extractvalue %37[5] : !llvm.array<8 x vector<8xf32>> 
          %908 = llvm.intr.fma(%907, %894, %814) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %909 = llvm.extractvalue %37[6] : !llvm.array<8 x vector<8xf32>> 
          %910 = llvm.intr.fma(%909, %895, %815) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %911 = llvm.extractvalue %37[7] : !llvm.array<8 x vector<8xf32>> 
          %912 = llvm.intr.fma(%911, %896, %816) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %913 = llvm.extractvalue %36[0] : !llvm.array<8 x vector<8xf32>> 
          %914 = llvm.intr.fma(%913, %889, %898) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %915 = llvm.extractvalue %36[1] : !llvm.array<8 x vector<8xf32>> 
          %916 = llvm.intr.fma(%915, %890, %900) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %917 = llvm.extractvalue %36[2] : !llvm.array<8 x vector<8xf32>> 
          %918 = llvm.intr.fma(%917, %891, %902) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %919 = llvm.extractvalue %36[3] : !llvm.array<8 x vector<8xf32>> 
          %920 = llvm.intr.fma(%919, %892, %904) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %921 = llvm.extractvalue %36[4] : !llvm.array<8 x vector<8xf32>> 
          %922 = llvm.intr.fma(%921, %893, %906) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %923 = llvm.extractvalue %36[5] : !llvm.array<8 x vector<8xf32>> 
          %924 = llvm.intr.fma(%923, %894, %908) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %925 = llvm.extractvalue %36[6] : !llvm.array<8 x vector<8xf32>> 
          %926 = llvm.intr.fma(%925, %895, %910) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %927 = llvm.extractvalue %36[7] : !llvm.array<8 x vector<8xf32>> 
          %928 = llvm.intr.fma(%927, %896, %912) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %929 = llvm.extractvalue %35[0] : !llvm.array<8 x vector<8xf32>> 
          %930 = llvm.extractvalue %34[0] : !llvm.array<8 x vector<8xf32>> 
          %931 = llvm.intr.fma(%914, %929, %930) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %932 = llvm.extractvalue %35[1] : !llvm.array<8 x vector<8xf32>> 
          %933 = llvm.extractvalue %34[1] : !llvm.array<8 x vector<8xf32>> 
          %934 = llvm.intr.fma(%916, %932, %933) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %935 = llvm.extractvalue %35[2] : !llvm.array<8 x vector<8xf32>> 
          %936 = llvm.extractvalue %34[2] : !llvm.array<8 x vector<8xf32>> 
          %937 = llvm.intr.fma(%918, %935, %936) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %938 = llvm.extractvalue %35[3] : !llvm.array<8 x vector<8xf32>> 
          %939 = llvm.extractvalue %34[3] : !llvm.array<8 x vector<8xf32>> 
          %940 = llvm.intr.fma(%920, %938, %939) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %941 = llvm.extractvalue %35[4] : !llvm.array<8 x vector<8xf32>> 
          %942 = llvm.extractvalue %34[4] : !llvm.array<8 x vector<8xf32>> 
          %943 = llvm.intr.fma(%922, %941, %942) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %944 = llvm.extractvalue %35[5] : !llvm.array<8 x vector<8xf32>> 
          %945 = llvm.extractvalue %34[5] : !llvm.array<8 x vector<8xf32>> 
          %946 = llvm.intr.fma(%924, %944, %945) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %947 = llvm.extractvalue %35[6] : !llvm.array<8 x vector<8xf32>> 
          %948 = llvm.extractvalue %34[6] : !llvm.array<8 x vector<8xf32>> 
          %949 = llvm.intr.fma(%926, %947, %948) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %950 = llvm.extractvalue %35[7] : !llvm.array<8 x vector<8xf32>> 
          %951 = llvm.extractvalue %34[7] : !llvm.array<8 x vector<8xf32>> 
          %952 = llvm.intr.fma(%928, %950, %951) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %953 = llvm.extractvalue %33[0] : !llvm.array<8 x vector<8xf32>> 
          %954 = llvm.intr.fma(%931, %914, %953) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %955 = llvm.extractvalue %33[1] : !llvm.array<8 x vector<8xf32>> 
          %956 = llvm.intr.fma(%934, %916, %955) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %957 = llvm.extractvalue %33[2] : !llvm.array<8 x vector<8xf32>> 
          %958 = llvm.intr.fma(%937, %918, %957) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %959 = llvm.extractvalue %33[3] : !llvm.array<8 x vector<8xf32>> 
          %960 = llvm.intr.fma(%940, %920, %959) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %961 = llvm.extractvalue %33[4] : !llvm.array<8 x vector<8xf32>> 
          %962 = llvm.intr.fma(%943, %922, %961) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %963 = llvm.extractvalue %33[5] : !llvm.array<8 x vector<8xf32>> 
          %964 = llvm.intr.fma(%946, %924, %963) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %965 = llvm.extractvalue %33[6] : !llvm.array<8 x vector<8xf32>> 
          %966 = llvm.intr.fma(%949, %926, %965) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %967 = llvm.extractvalue %33[7] : !llvm.array<8 x vector<8xf32>> 
          %968 = llvm.intr.fma(%952, %928, %967) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %969 = llvm.extractvalue %32[0] : !llvm.array<8 x vector<8xf32>> 
          %970 = llvm.intr.fma(%954, %914, %969) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %971 = llvm.extractvalue %32[1] : !llvm.array<8 x vector<8xf32>> 
          %972 = llvm.intr.fma(%956, %916, %971) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %973 = llvm.extractvalue %32[2] : !llvm.array<8 x vector<8xf32>> 
          %974 = llvm.intr.fma(%958, %918, %973) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %975 = llvm.extractvalue %32[3] : !llvm.array<8 x vector<8xf32>> 
          %976 = llvm.intr.fma(%960, %920, %975) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %977 = llvm.extractvalue %32[4] : !llvm.array<8 x vector<8xf32>> 
          %978 = llvm.intr.fma(%962, %922, %977) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %979 = llvm.extractvalue %32[5] : !llvm.array<8 x vector<8xf32>> 
          %980 = llvm.intr.fma(%964, %924, %979) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %981 = llvm.extractvalue %32[6] : !llvm.array<8 x vector<8xf32>> 
          %982 = llvm.intr.fma(%966, %926, %981) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %983 = llvm.extractvalue %32[7] : !llvm.array<8 x vector<8xf32>> 
          %984 = llvm.intr.fma(%968, %928, %983) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %985 = llvm.extractvalue %31[0] : !llvm.array<8 x vector<8xf32>> 
          %986 = llvm.intr.fma(%970, %914, %985) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %987 = llvm.extractvalue %31[1] : !llvm.array<8 x vector<8xf32>> 
          %988 = llvm.intr.fma(%972, %916, %987) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %989 = llvm.extractvalue %31[2] : !llvm.array<8 x vector<8xf32>> 
          %990 = llvm.intr.fma(%974, %918, %989) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %991 = llvm.extractvalue %31[3] : !llvm.array<8 x vector<8xf32>> 
          %992 = llvm.intr.fma(%976, %920, %991) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %993 = llvm.extractvalue %31[4] : !llvm.array<8 x vector<8xf32>> 
          %994 = llvm.intr.fma(%978, %922, %993) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %995 = llvm.extractvalue %31[5] : !llvm.array<8 x vector<8xf32>> 
          %996 = llvm.intr.fma(%980, %924, %995) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %997 = llvm.extractvalue %31[6] : !llvm.array<8 x vector<8xf32>> 
          %998 = llvm.intr.fma(%982, %926, %997) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %999 = llvm.extractvalue %31[7] : !llvm.array<8 x vector<8xf32>> 
          %1000 = llvm.intr.fma(%984, %928, %999) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %1001 = llvm.intr.fma(%986, %914, %818) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %1002 = llvm.intr.fma(%988, %916, %821) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %1003 = llvm.intr.fma(%990, %918, %824) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %1004 = llvm.intr.fma(%992, %920, %827) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %1005 = llvm.intr.fma(%994, %922, %830) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %1006 = llvm.intr.fma(%996, %924, %833) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %1007 = llvm.intr.fma(%998, %926, %836) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %1008 = llvm.intr.fma(%1000, %928, %839) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %1009 = llvm.fmul %914, %914 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1010 = llvm.fmul %916, %916 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1011 = llvm.fmul %918, %918 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1012 = llvm.fmul %920, %920 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1013 = llvm.fmul %922, %922 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1014 = llvm.fmul %924, %924 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1015 = llvm.fmul %926, %926 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1016 = llvm.fmul %928, %928 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1017 = llvm.intr.fma(%1001, %1009, %914) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %1018 = llvm.intr.fma(%1002, %1010, %916) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %1019 = llvm.intr.fma(%1003, %1011, %918) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %1020 = llvm.intr.fma(%1004, %1012, %920) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %1021 = llvm.intr.fma(%1005, %1013, %922) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %1022 = llvm.intr.fma(%1006, %1014, %924) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %1023 = llvm.intr.fma(%1007, %1015, %926) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %1024 = llvm.intr.fma(%1008, %1016, %928) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %1025 = llvm.extractvalue %39[0] : !llvm.array<8 x vector<8xf32>> 
          %1026 = llvm.fadd %1017, %1025 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1027 = llvm.extractvalue %39[1] : !llvm.array<8 x vector<8xf32>> 
          %1028 = llvm.fadd %1018, %1027 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1029 = llvm.extractvalue %39[2] : !llvm.array<8 x vector<8xf32>> 
          %1030 = llvm.fadd %1019, %1029 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1031 = llvm.extractvalue %39[3] : !llvm.array<8 x vector<8xf32>> 
          %1032 = llvm.fadd %1020, %1031 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1033 = llvm.extractvalue %39[4] : !llvm.array<8 x vector<8xf32>> 
          %1034 = llvm.fadd %1021, %1033 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1035 = llvm.extractvalue %39[5] : !llvm.array<8 x vector<8xf32>> 
          %1036 = llvm.fadd %1022, %1035 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1037 = llvm.extractvalue %39[6] : !llvm.array<8 x vector<8xf32>> 
          %1038 = llvm.fadd %1023, %1037 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1039 = llvm.extractvalue %39[7] : !llvm.array<8 x vector<8xf32>> 
          %1040 = llvm.fadd %1024, %1039 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1041 = llvm.fptosi %889 : vector<8xf32> to vector<8xi32>
          %1042 = llvm.fptosi %890 : vector<8xf32> to vector<8xi32>
          %1043 = llvm.fptosi %891 : vector<8xf32> to vector<8xi32>
          %1044 = llvm.fptosi %892 : vector<8xf32> to vector<8xi32>
          %1045 = llvm.fptosi %893 : vector<8xf32> to vector<8xi32>
          %1046 = llvm.fptosi %894 : vector<8xf32> to vector<8xi32>
          %1047 = llvm.fptosi %895 : vector<8xf32> to vector<8xi32>
          %1048 = llvm.fptosi %896 : vector<8xf32> to vector<8xi32>
          %1049 = llvm.extractvalue %25[0] : !llvm.array<8 x vector<8xi32>> 
          %1050 = llvm.add %1041, %1049 : vector<8xi32>
          %1051 = llvm.extractvalue %25[1] : !llvm.array<8 x vector<8xi32>> 
          %1052 = llvm.add %1042, %1051 : vector<8xi32>
          %1053 = llvm.extractvalue %25[2] : !llvm.array<8 x vector<8xi32>> 
          %1054 = llvm.add %1043, %1053 : vector<8xi32>
          %1055 = llvm.extractvalue %25[3] : !llvm.array<8 x vector<8xi32>> 
          %1056 = llvm.add %1044, %1055 : vector<8xi32>
          %1057 = llvm.extractvalue %25[4] : !llvm.array<8 x vector<8xi32>> 
          %1058 = llvm.add %1045, %1057 : vector<8xi32>
          %1059 = llvm.extractvalue %25[5] : !llvm.array<8 x vector<8xi32>> 
          %1060 = llvm.add %1046, %1059 : vector<8xi32>
          %1061 = llvm.extractvalue %25[6] : !llvm.array<8 x vector<8xi32>> 
          %1062 = llvm.add %1047, %1061 : vector<8xi32>
          %1063 = llvm.extractvalue %25[7] : !llvm.array<8 x vector<8xi32>> 
          %1064 = llvm.add %1048, %1063 : vector<8xi32>
          %1065 = llvm.extractvalue %26[0] : !llvm.array<8 x vector<8xi32>> 
          %1066 = llvm.shl %1050, %1065 : vector<8xi32>
          %1067 = llvm.extractvalue %26[1] : !llvm.array<8 x vector<8xi32>> 
          %1068 = llvm.shl %1052, %1067 : vector<8xi32>
          %1069 = llvm.extractvalue %26[2] : !llvm.array<8 x vector<8xi32>> 
          %1070 = llvm.shl %1054, %1069 : vector<8xi32>
          %1071 = llvm.extractvalue %26[3] : !llvm.array<8 x vector<8xi32>> 
          %1072 = llvm.shl %1056, %1071 : vector<8xi32>
          %1073 = llvm.extractvalue %26[4] : !llvm.array<8 x vector<8xi32>> 
          %1074 = llvm.shl %1058, %1073 : vector<8xi32>
          %1075 = llvm.extractvalue %26[5] : !llvm.array<8 x vector<8xi32>> 
          %1076 = llvm.shl %1060, %1075 : vector<8xi32>
          %1077 = llvm.extractvalue %26[6] : !llvm.array<8 x vector<8xi32>> 
          %1078 = llvm.shl %1062, %1077 : vector<8xi32>
          %1079 = llvm.extractvalue %26[7] : !llvm.array<8 x vector<8xi32>> 
          %1080 = llvm.shl %1064, %1079 : vector<8xi32>
          %1081 = llvm.bitcast %1066 : vector<8xi32> to vector<8xf32>
          %1082 = llvm.bitcast %1068 : vector<8xi32> to vector<8xf32>
          %1083 = llvm.bitcast %1070 : vector<8xi32> to vector<8xf32>
          %1084 = llvm.bitcast %1072 : vector<8xi32> to vector<8xf32>
          %1085 = llvm.bitcast %1074 : vector<8xi32> to vector<8xf32>
          %1086 = llvm.bitcast %1076 : vector<8xi32> to vector<8xf32>
          %1087 = llvm.bitcast %1078 : vector<8xi32> to vector<8xf32>
          %1088 = llvm.bitcast %1080 : vector<8xi32> to vector<8xf32>
          %1089 = llvm.fmul %1026, %1081 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1090 = llvm.fmul %1028, %1082 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1091 = llvm.fmul %1030, %1083 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1092 = llvm.fmul %1032, %1084 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1093 = llvm.fmul %1034, %1085 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1094 = llvm.fmul %1036, %1086 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1095 = llvm.fmul %1038, %1087 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1096 = llvm.fmul %1040, %1088 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %1097 = llvm.fdiv %1089, %665 : vector<8xf32>
          %1098 = llvm.fdiv %1090, %666 : vector<8xf32>
          %1099 = llvm.fdiv %1091, %667 : vector<8xf32>
          %1100 = llvm.fdiv %1092, %668 : vector<8xf32>
          %1101 = llvm.fdiv %1093, %669 : vector<8xf32>
          %1102 = llvm.fdiv %1094, %670 : vector<8xf32>
          %1103 = llvm.fdiv %1095, %671 : vector<8xf32>
          %1104 = llvm.fdiv %1096, %672 : vector<8xf32>
          %1105 = llvm.getelementptr %71[%700] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %1097, %1105, %682 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %1106 = llvm.getelementptr %71[%706] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %1098, %1106, %684 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %1107 = llvm.getelementptr %71[%712] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %1099, %1107, %686 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %1108 = llvm.getelementptr %71[%718] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %1100, %1108, %688 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %1109 = llvm.getelementptr %71[%724] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %1101, %1109, %690 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %1110 = llvm.getelementptr %71[%730] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %1102, %1110, %692 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %1111 = llvm.getelementptr %71[%736] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %1103, %1111, %694 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %1112 = llvm.getelementptr %71[%742] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %1104, %1112, %696 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %1113 = llvm.add %673, %53 : i64
          llvm.br ^bb21(%1113 : i64)
        ^bb23:  // pred: ^bb21
          %1114 = llvm.add %78, %53 : i64
          llvm.br ^bb2(%1114 : i64)
        ^bb24:  // pred: ^bb2
          %1115 = llvm.add %76, %50 : i64
          llvm.br ^bb1(%1115 : i64)
        ^bb25:  // pred: ^bb1
          llvm.return %11 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_61_embedded_elf_riscv_64_main_graph$async_dispatch_61_softmax_2x784x49xf32_dispatch_tensor_store_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_61_embedded_elf_riscv_64_main_graph$async_dispatch_61_softmax_2x784x49xf32_dispatch_tensor_store_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_61_embedded_elf_riscv_64_main_graph$async_dispatch_61_softmax_2x784x49xf32_dispatch_tensor_store(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_61_embedded_elf_riscv_64_main_graph$async_dispatch_61_softmax_2x784x49xf32_dispatch_tensor_store_buffer = util.global.load immutable @main_graph$async_dispatch_61_embedded_elf_riscv_64_main_graph$async_dispatch_61_softmax_2x784x49xf32_dispatch_tensor_store_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_61::@embedded_elf_riscv_64::@main_graph$async_dispatch_61_softmax_2x784x49xf32_dispatch_tensor_store) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_61) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_61::@embedded_elf_riscv_64::@main_graph$async_dispatch_61_softmax_2x784x49xf32_dispatch_tensor_store) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_61_embedded_elf_riscv_64_main_graph$async_dispatch_61_softmax_2x784x49xf32_dispatch_tensor_store_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_61_embedded_elf_riscv_64_main_graph$async_dispatch_61_softmax_2x784x49xf32_dispatch_tensor_store_buffer : !hal.buffer)[%c32172032, %c32172032]
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
