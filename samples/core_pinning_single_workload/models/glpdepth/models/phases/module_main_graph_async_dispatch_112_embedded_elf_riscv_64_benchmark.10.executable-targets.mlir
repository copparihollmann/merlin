#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_112 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_112_unpack_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c7 = arith.constant 7 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c7, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_112_unpack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<7xi64>
          %2 = llvm.mlir.constant(160 : index) : i64
          %3 = llvm.mlir.constant(64 : index) : i64
          %4 = llvm.mlir.constant(true) : i1
          %5 = llvm.mlir.constant(7840 : index) : i64
          %6 = llvm.mlir.constant(1568 : index) : i64
          %7 = llvm.mlir.constant(224 : index) : i64
          %8 = llvm.mlir.constant(8 : i64) : i64
          %9 = llvm.mlir.constant(32 : i64) : i64
          %10 = llvm.mlir.constant(31 : index) : i64
          %11 = llvm.mlir.constant(30 : index) : i64
          %12 = llvm.mlir.constant(29 : index) : i64
          %13 = llvm.mlir.constant(28 : index) : i64
          %14 = llvm.mlir.constant(27 : index) : i64
          %15 = llvm.mlir.constant(26 : index) : i64
          %16 = llvm.mlir.constant(25 : index) : i64
          %17 = llvm.mlir.constant(24 : index) : i64
          %18 = llvm.mlir.constant(23 : index) : i64
          %19 = llvm.mlir.constant(22 : index) : i64
          %20 = llvm.mlir.constant(21 : index) : i64
          %21 = llvm.mlir.constant(20 : index) : i64
          %22 = llvm.mlir.constant(19 : index) : i64
          %23 = llvm.mlir.constant(18 : index) : i64
          %24 = llvm.mlir.constant(17 : index) : i64
          %25 = llvm.mlir.constant(16 : index) : i64
          %26 = llvm.mlir.constant(15 : index) : i64
          %27 = llvm.mlir.constant(14 : index) : i64
          %28 = llvm.mlir.constant(13 : index) : i64
          %29 = llvm.mlir.constant(12 : index) : i64
          %30 = llvm.mlir.constant(11 : index) : i64
          %31 = llvm.mlir.constant(10 : index) : i64
          %32 = llvm.mlir.constant(9 : index) : i64
          %33 = llvm.mlir.constant(8 : index) : i64
          %34 = llvm.mlir.constant(dense<false> : vector<7xi1>) : vector<7xi1>
          %35 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6]> : vector<7xi64>) : vector<7xi64>
          %36 = llvm.mlir.constant(-32 : index) : i64
          %37 = llvm.mlir.constant(196 : index) : i64
          %38 = llvm.mlir.constant(-1 : index) : i64
          %39 = llvm.mlir.poison : vector<224xf32>
          %40 = llvm.mlir.constant(6 : index) : i64
          %41 = llvm.mlir.constant(4 : index) : i64
          %42 = llvm.mlir.constant(3 : index) : i64
          %43 = llvm.mlir.constant(2 : index) : i64
          %44 = llvm.mlir.constant(7 : index) : i64
          %45 = llvm.mlir.constant(1 : index) : i64
          %46 = llvm.mlir.constant(32 : index) : i64
          %47 = llvm.mlir.constant(5 : index) : i64
          %48 = llvm.mlir.constant(0 : index) : i64
          %49 = llvm.mlir.constant(1003520 : index) : i64
          %50 = llvm.mlir.constant(401408 : index) : i64
          %51 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %52 = llvm.extractvalue %51[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %53 = llvm.load %52 : !llvm.ptr -> !llvm.ptr
          %54 = llvm.mul %49, %8 : i64
          %55 = llvm.udiv %54, %9 : i64
          %56 = llvm.getelementptr %53[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
          %57 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %58 = llvm.extractvalue %57[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %59 = llvm.getelementptr %58[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %60 = llvm.load %59 : !llvm.ptr -> !llvm.ptr
          %61 = llvm.mul %50, %8 : i64
          %62 = llvm.udiv %61, %9 : i64
          %63 = llvm.getelementptr %60[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
          %64 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %65 = llvm.extractvalue %64[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %66 = llvm.zext %65 : i32 to i64
          %67 = llvm.mul %66, %46 overflow<nsw> : i64
          %68 = llvm.mul %66, %36 overflow<nsw> : i64
          %69 = llvm.add %68, %37 : i64
          %70 = llvm.icmp "slt" %69, %46 : i64
          %71 = llvm.select %70, %69, %46 : i1, i64
          %72 = llvm.icmp "slt" %67, %48 : i64
          %73 = llvm.sub %38, %67 : i64
          %74 = llvm.select %72, %73, %67 : i1, i64
          %75 = llvm.sdiv %74, %46 : i64
          %76 = llvm.sub %38, %75 : i64
          %77 = llvm.select %72, %76, %75 : i1, i64
          llvm.br ^bb1(%48 : i64)
        ^bb1(%78: i64):  // 2 preds: ^bb0, ^bb7
          %79 = llvm.icmp "slt" %78, %71 : i64
          llvm.cond_br %79, ^bb2, ^bb8
        ^bb2:  // pred: ^bb1
          %80 = llvm.sub %71, %78 : i64
          %81 = llvm.icmp "slt" %80, %46 : i64
          %82 = llvm.select %81, %80, %46 : i1, i64
          %83 = llvm.icmp "slt" %78, %48 : i64
          %84 = llvm.sub %38, %78 : i64
          %85 = llvm.select %83, %84, %78 : i1, i64
          %86 = llvm.sdiv %85, %46 : i64
          %87 = llvm.sub %38, %86 : i64
          %88 = llvm.select %83, %87, %86 : i1, i64
          llvm.br ^bb3(%48 : i64)
        ^bb3(%89: i64):  // 2 preds: ^bb2, ^bb6
          %90 = llvm.icmp "slt" %89, %47 : i64
          llvm.cond_br %90, ^bb4(%48 : i64), ^bb7
        ^bb4(%91: i64):  // 2 preds: ^bb3, ^bb5
          %92 = llvm.icmp "slt" %91, %46 : i64
          llvm.cond_br %92, ^bb5, ^bb6
        ^bb5:  // pred: ^bb4
          %93 = llvm.sub %46, %91 : i64
          %94 = llvm.icmp "slt" %93, %44 : i64
          %95 = llvm.select %94, %93, %44 : i1, i64
          %96 = llvm.icmp "slt" %91, %48 : i64
          %97 = llvm.sub %38, %91 : i64
          %98 = llvm.select %96, %97, %91 : i1, i64
          %99 = llvm.sdiv %98, %44 : i64
          %100 = llvm.sub %38, %99 : i64
          %101 = llvm.select %96, %100, %99 : i1, i64
          %102 = llvm.add %88, %77 : i64
          %103 = llvm.mul %89, %5 : i64
          %104 = llvm.mul %101, %6 : i64
          %105 = llvm.add %103, %104 : i64
          %106 = llvm.mul %102, %7 : i64
          %107 = llvm.add %105, %106 : i64
          %108 = llvm.mul %48, %46 : i64
          %109 = llvm.add %107, %108 : i64
          %110 = llvm.add %109, %48 : i64
          %111 = llvm.getelementptr %56[%110] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %112 = llvm.load %111 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %113 = llvm.mul %45, %46 : i64
          %114 = llvm.add %107, %113 : i64
          %115 = llvm.add %114, %48 : i64
          %116 = llvm.getelementptr %56[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %117 = llvm.load %116 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %118 = llvm.mul %43, %46 : i64
          %119 = llvm.add %107, %118 : i64
          %120 = llvm.add %119, %48 : i64
          %121 = llvm.getelementptr %56[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %122 = llvm.load %121 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %123 = llvm.mul %42, %46 : i64
          %124 = llvm.add %107, %123 : i64
          %125 = llvm.add %124, %48 : i64
          %126 = llvm.getelementptr %56[%125] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %127 = llvm.load %126 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %128 = llvm.mul %41, %46 : i64
          %129 = llvm.add %107, %128 : i64
          %130 = llvm.add %129, %48 : i64
          %131 = llvm.getelementptr %56[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %132 = llvm.load %131 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %133 = llvm.mul %47, %46 : i64
          %134 = llvm.add %107, %133 : i64
          %135 = llvm.add %134, %48 : i64
          %136 = llvm.getelementptr %56[%135] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %137 = llvm.load %136 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %138 = llvm.mul %40, %46 : i64
          %139 = llvm.add %107, %138 : i64
          %140 = llvm.add %139, %48 : i64
          %141 = llvm.getelementptr %56[%140] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %142 = llvm.load %141 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %143 = llvm.shufflevector %112, %112 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %144 = llvm.shufflevector %143, %39 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %145 = llvm.shufflevector %117, %117 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %146 = llvm.shufflevector %145, %144 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %147 = llvm.shufflevector %122, %122 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %148 = llvm.shufflevector %147, %146 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %149 = llvm.shufflevector %127, %127 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %150 = llvm.shufflevector %149, %148 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %151 = llvm.shufflevector %132, %132 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %152 = llvm.shufflevector %151, %150 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %153 = llvm.shufflevector %137, %137 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %154 = llvm.shufflevector %153, %152 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %155 = llvm.shufflevector %142, %142 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %156 = llvm.shufflevector %155, %154 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31] : vector<224xf32> 
          %157 = llvm.shufflevector %156, %156 [0, 32, 64, 96, 128, 160, 192, 1, 33, 65, 97, 129, 161, 193, 2, 34, 66, 98, 130, 162, 194, 3, 35, 67, 99, 131, 163, 195, 4, 36, 68, 100, 132, 164, 196, 5, 37, 69, 101, 133, 165, 197, 6, 38, 70, 102, 134, 166, 198, 7, 39, 71, 103, 135, 167, 199, 8, 40, 72, 104, 136, 168, 200, 9, 41, 73, 105, 137, 169, 201, 10, 42, 74, 106, 138, 170, 202, 11, 43, 75, 107, 139, 171, 203, 12, 44, 76, 108, 140, 172, 204, 13, 45, 77, 109, 141, 173, 205, 14, 46, 78, 110, 142, 174, 206, 15, 47, 79, 111, 143, 175, 207, 16, 48, 80, 112, 144, 176, 208, 17, 49, 81, 113, 145, 177, 209, 18, 50, 82, 114, 146, 178, 210, 19, 51, 83, 115, 147, 179, 211, 20, 52, 84, 116, 148, 180, 212, 21, 53, 85, 117, 149, 181, 213, 22, 54, 86, 118, 150, 182, 214, 23, 55, 87, 119, 151, 183, 215, 24, 56, 88, 120, 152, 184, 216, 25, 57, 89, 121, 153, 185, 217, 26, 58, 90, 122, 154, 186, 218, 27, 59, 91, 123, 155, 187, 219, 28, 60, 92, 124, 156, 188, 220, 29, 61, 93, 125, 157, 189, 221, 30, 62, 94, 126, 158, 190, 222, 31, 63, 95, 127, 159, 191, 223] : vector<224xf32> 
          %158 = llvm.shufflevector %157, %157 [0, 1, 2, 3, 4, 5, 6] : vector<224xf32> 
          %159 = llvm.shufflevector %157, %157 [7, 8, 9, 10, 11, 12, 13] : vector<224xf32> 
          %160 = llvm.shufflevector %157, %157 [14, 15, 16, 17, 18, 19, 20] : vector<224xf32> 
          %161 = llvm.shufflevector %157, %157 [21, 22, 23, 24, 25, 26, 27] : vector<224xf32> 
          %162 = llvm.shufflevector %157, %157 [28, 29, 30, 31, 32, 33, 34] : vector<224xf32> 
          %163 = llvm.shufflevector %157, %157 [35, 36, 37, 38, 39, 40, 41] : vector<224xf32> 
          %164 = llvm.shufflevector %157, %157 [42, 43, 44, 45, 46, 47, 48] : vector<224xf32> 
          %165 = llvm.shufflevector %157, %157 [49, 50, 51, 52, 53, 54, 55] : vector<224xf32> 
          %166 = llvm.shufflevector %157, %157 [56, 57, 58, 59, 60, 61, 62] : vector<224xf32> 
          %167 = llvm.shufflevector %157, %157 [63, 64, 65, 66, 67, 68, 69] : vector<224xf32> 
          %168 = llvm.shufflevector %157, %157 [70, 71, 72, 73, 74, 75, 76] : vector<224xf32> 
          %169 = llvm.shufflevector %157, %157 [77, 78, 79, 80, 81, 82, 83] : vector<224xf32> 
          %170 = llvm.shufflevector %157, %157 [84, 85, 86, 87, 88, 89, 90] : vector<224xf32> 
          %171 = llvm.shufflevector %157, %157 [91, 92, 93, 94, 95, 96, 97] : vector<224xf32> 
          %172 = llvm.shufflevector %157, %157 [98, 99, 100, 101, 102, 103, 104] : vector<224xf32> 
          %173 = llvm.shufflevector %157, %157 [105, 106, 107, 108, 109, 110, 111] : vector<224xf32> 
          %174 = llvm.shufflevector %157, %157 [112, 113, 114, 115, 116, 117, 118] : vector<224xf32> 
          %175 = llvm.shufflevector %157, %157 [119, 120, 121, 122, 123, 124, 125] : vector<224xf32> 
          %176 = llvm.shufflevector %157, %157 [126, 127, 128, 129, 130, 131, 132] : vector<224xf32> 
          %177 = llvm.shufflevector %157, %157 [133, 134, 135, 136, 137, 138, 139] : vector<224xf32> 
          %178 = llvm.shufflevector %157, %157 [140, 141, 142, 143, 144, 145, 146] : vector<224xf32> 
          %179 = llvm.shufflevector %157, %157 [147, 148, 149, 150, 151, 152, 153] : vector<224xf32> 
          %180 = llvm.shufflevector %157, %157 [154, 155, 156, 157, 158, 159, 160] : vector<224xf32> 
          %181 = llvm.shufflevector %157, %157 [161, 162, 163, 164, 165, 166, 167] : vector<224xf32> 
          %182 = llvm.shufflevector %157, %157 [168, 169, 170, 171, 172, 173, 174] : vector<224xf32> 
          %183 = llvm.shufflevector %157, %157 [175, 176, 177, 178, 179, 180, 181] : vector<224xf32> 
          %184 = llvm.shufflevector %157, %157 [182, 183, 184, 185, 186, 187, 188] : vector<224xf32> 
          %185 = llvm.shufflevector %157, %157 [189, 190, 191, 192, 193, 194, 195] : vector<224xf32> 
          %186 = llvm.shufflevector %157, %157 [196, 197, 198, 199, 200, 201, 202] : vector<224xf32> 
          %187 = llvm.shufflevector %157, %157 [203, 204, 205, 206, 207, 208, 209] : vector<224xf32> 
          %188 = llvm.shufflevector %157, %157 [210, 211, 212, 213, 214, 215, 216] : vector<224xf32> 
          %189 = llvm.shufflevector %157, %157 [217, 218, 219, 220, 221, 222, 223] : vector<224xf32> 
          %190 = llvm.insertelement %95, %1[%0 : i32] : vector<7xi64>
          %191 = llvm.shufflevector %190, %1 [0, 0, 0, 0, 0, 0, 0] : vector<7xi64> 
          %192 = llvm.icmp "sgt" %191, %35 : vector<7xi64>
          %193 = llvm.icmp "sgt" %82, %48 : i64
          %194 = llvm.select %193, %192, %34 : i1, vector<7xi1>
          %195 = llvm.icmp "sgt" %82, %45 : i64
          %196 = llvm.select %195, %192, %34 : i1, vector<7xi1>
          %197 = llvm.icmp "sgt" %82, %43 : i64
          %198 = llvm.select %197, %192, %34 : i1, vector<7xi1>
          %199 = llvm.icmp "sgt" %82, %42 : i64
          %200 = llvm.select %199, %192, %34 : i1, vector<7xi1>
          %201 = llvm.icmp "sgt" %82, %41 : i64
          %202 = llvm.select %201, %192, %34 : i1, vector<7xi1>
          %203 = llvm.icmp "sgt" %82, %47 : i64
          %204 = llvm.select %203, %192, %34 : i1, vector<7xi1>
          %205 = llvm.icmp "sgt" %82, %40 : i64
          %206 = llvm.select %205, %192, %34 : i1, vector<7xi1>
          %207 = llvm.icmp "sgt" %82, %44 : i64
          %208 = llvm.select %207, %192, %34 : i1, vector<7xi1>
          %209 = llvm.icmp "sgt" %82, %33 : i64
          %210 = llvm.select %209, %192, %34 : i1, vector<7xi1>
          %211 = llvm.icmp "sgt" %82, %32 : i64
          %212 = llvm.select %211, %192, %34 : i1, vector<7xi1>
          %213 = llvm.icmp "sgt" %82, %31 : i64
          %214 = llvm.select %213, %192, %34 : i1, vector<7xi1>
          %215 = llvm.icmp "sgt" %82, %30 : i64
          %216 = llvm.select %215, %192, %34 : i1, vector<7xi1>
          %217 = llvm.icmp "sgt" %82, %29 : i64
          %218 = llvm.select %217, %192, %34 : i1, vector<7xi1>
          %219 = llvm.icmp "sgt" %82, %28 : i64
          %220 = llvm.select %219, %192, %34 : i1, vector<7xi1>
          %221 = llvm.icmp "sgt" %82, %27 : i64
          %222 = llvm.select %221, %192, %34 : i1, vector<7xi1>
          %223 = llvm.icmp "sgt" %82, %26 : i64
          %224 = llvm.select %223, %192, %34 : i1, vector<7xi1>
          %225 = llvm.icmp "sgt" %82, %25 : i64
          %226 = llvm.select %225, %192, %34 : i1, vector<7xi1>
          %227 = llvm.icmp "sgt" %82, %24 : i64
          %228 = llvm.select %227, %192, %34 : i1, vector<7xi1>
          %229 = llvm.icmp "sgt" %82, %23 : i64
          %230 = llvm.select %229, %192, %34 : i1, vector<7xi1>
          %231 = llvm.icmp "sgt" %82, %22 : i64
          %232 = llvm.select %231, %192, %34 : i1, vector<7xi1>
          %233 = llvm.icmp "sgt" %82, %21 : i64
          %234 = llvm.select %233, %192, %34 : i1, vector<7xi1>
          %235 = llvm.icmp "sgt" %82, %20 : i64
          %236 = llvm.select %235, %192, %34 : i1, vector<7xi1>
          %237 = llvm.icmp "sgt" %82, %19 : i64
          %238 = llvm.select %237, %192, %34 : i1, vector<7xi1>
          %239 = llvm.icmp "sgt" %82, %18 : i64
          %240 = llvm.select %239, %192, %34 : i1, vector<7xi1>
          %241 = llvm.icmp "sgt" %82, %17 : i64
          %242 = llvm.select %241, %192, %34 : i1, vector<7xi1>
          %243 = llvm.icmp "sgt" %82, %16 : i64
          %244 = llvm.select %243, %192, %34 : i1, vector<7xi1>
          %245 = llvm.icmp "sgt" %82, %15 : i64
          %246 = llvm.select %245, %192, %34 : i1, vector<7xi1>
          %247 = llvm.icmp "sgt" %82, %14 : i64
          %248 = llvm.select %247, %192, %34 : i1, vector<7xi1>
          %249 = llvm.icmp "sgt" %82, %13 : i64
          %250 = llvm.select %249, %192, %34 : i1, vector<7xi1>
          %251 = llvm.icmp "sgt" %82, %12 : i64
          %252 = llvm.select %251, %192, %34 : i1, vector<7xi1>
          %253 = llvm.icmp "sgt" %82, %11 : i64
          %254 = llvm.select %253, %192, %34 : i1, vector<7xi1>
          %255 = llvm.icmp "sgt" %82, %10 : i64
          %256 = llvm.select %255, %192, %34 : i1, vector<7xi1>
          %257 = llvm.add %67, %78 : i64
          %258 = llvm.mul %257, %2 : i64
          %259 = llvm.mul %89, %46 : i64
          %260 = llvm.add %258, %259 : i64
          %261 = llvm.add %260, %91 : i64
          %262 = llvm.getelementptr %63[%261] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %158, %262, %194 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %263 = llvm.add %257, %45 : i64
          %264 = llvm.mul %263, %2 : i64
          %265 = llvm.add %264, %259 : i64
          %266 = llvm.add %265, %91 : i64
          %267 = llvm.getelementptr %63[%266] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %159, %267, %196 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %268 = llvm.add %257, %43 : i64
          %269 = llvm.mul %268, %2 : i64
          %270 = llvm.add %269, %259 : i64
          %271 = llvm.add %270, %91 : i64
          %272 = llvm.getelementptr %63[%271] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %160, %272, %198 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %273 = llvm.add %257, %42 : i64
          %274 = llvm.mul %273, %2 : i64
          %275 = llvm.add %274, %259 : i64
          %276 = llvm.add %275, %91 : i64
          %277 = llvm.getelementptr %63[%276] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %161, %277, %200 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %278 = llvm.add %257, %41 : i64
          %279 = llvm.mul %278, %2 : i64
          %280 = llvm.add %279, %259 : i64
          %281 = llvm.add %280, %91 : i64
          %282 = llvm.getelementptr %63[%281] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %162, %282, %202 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %283 = llvm.add %257, %47 : i64
          %284 = llvm.mul %283, %2 : i64
          %285 = llvm.add %284, %259 : i64
          %286 = llvm.add %285, %91 : i64
          %287 = llvm.getelementptr %63[%286] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %163, %287, %204 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %288 = llvm.add %257, %40 : i64
          %289 = llvm.mul %288, %2 : i64
          %290 = llvm.add %289, %259 : i64
          %291 = llvm.add %290, %91 : i64
          %292 = llvm.getelementptr %63[%291] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %164, %292, %206 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %293 = llvm.add %257, %44 : i64
          %294 = llvm.mul %293, %2 : i64
          %295 = llvm.add %294, %259 : i64
          %296 = llvm.add %295, %91 : i64
          %297 = llvm.getelementptr %63[%296] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %165, %297, %208 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %298 = llvm.add %257, %33 : i64
          %299 = llvm.mul %298, %2 : i64
          %300 = llvm.add %299, %259 : i64
          %301 = llvm.add %300, %91 : i64
          %302 = llvm.getelementptr %63[%301] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %166, %302, %210 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %303 = llvm.add %257, %32 : i64
          %304 = llvm.mul %303, %2 : i64
          %305 = llvm.add %304, %259 : i64
          %306 = llvm.add %305, %91 : i64
          %307 = llvm.getelementptr %63[%306] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %167, %307, %212 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %308 = llvm.add %257, %31 : i64
          %309 = llvm.mul %308, %2 : i64
          %310 = llvm.add %309, %259 : i64
          %311 = llvm.add %310, %91 : i64
          %312 = llvm.getelementptr %63[%311] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %168, %312, %214 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %313 = llvm.add %257, %30 : i64
          %314 = llvm.mul %313, %2 : i64
          %315 = llvm.add %314, %259 : i64
          %316 = llvm.add %315, %91 : i64
          %317 = llvm.getelementptr %63[%316] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %169, %317, %216 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %318 = llvm.add %257, %29 : i64
          %319 = llvm.mul %318, %2 : i64
          %320 = llvm.add %319, %259 : i64
          %321 = llvm.add %320, %91 : i64
          %322 = llvm.getelementptr %63[%321] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %170, %322, %218 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %323 = llvm.add %257, %28 : i64
          %324 = llvm.mul %323, %2 : i64
          %325 = llvm.add %324, %259 : i64
          %326 = llvm.add %325, %91 : i64
          %327 = llvm.getelementptr %63[%326] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %171, %327, %220 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %328 = llvm.add %257, %27 : i64
          %329 = llvm.mul %328, %2 : i64
          %330 = llvm.add %329, %259 : i64
          %331 = llvm.add %330, %91 : i64
          %332 = llvm.getelementptr %63[%331] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %172, %332, %222 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %333 = llvm.add %257, %26 : i64
          %334 = llvm.mul %333, %2 : i64
          %335 = llvm.add %334, %259 : i64
          %336 = llvm.add %335, %91 : i64
          %337 = llvm.getelementptr %63[%336] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %173, %337, %224 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %338 = llvm.add %257, %25 : i64
          %339 = llvm.mul %338, %2 : i64
          %340 = llvm.add %339, %259 : i64
          %341 = llvm.add %340, %91 : i64
          %342 = llvm.getelementptr %63[%341] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %174, %342, %226 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %343 = llvm.add %257, %24 : i64
          %344 = llvm.mul %343, %2 : i64
          %345 = llvm.add %344, %259 : i64
          %346 = llvm.add %345, %91 : i64
          %347 = llvm.getelementptr %63[%346] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %175, %347, %228 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %348 = llvm.add %257, %23 : i64
          %349 = llvm.mul %348, %2 : i64
          %350 = llvm.add %349, %259 : i64
          %351 = llvm.add %350, %91 : i64
          %352 = llvm.getelementptr %63[%351] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %176, %352, %230 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %353 = llvm.add %257, %22 : i64
          %354 = llvm.mul %353, %2 : i64
          %355 = llvm.add %354, %259 : i64
          %356 = llvm.add %355, %91 : i64
          %357 = llvm.getelementptr %63[%356] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %177, %357, %232 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %358 = llvm.add %257, %21 : i64
          %359 = llvm.mul %358, %2 : i64
          %360 = llvm.add %359, %259 : i64
          %361 = llvm.add %360, %91 : i64
          %362 = llvm.getelementptr %63[%361] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %178, %362, %234 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %363 = llvm.add %257, %20 : i64
          %364 = llvm.mul %363, %2 : i64
          %365 = llvm.add %364, %259 : i64
          %366 = llvm.add %365, %91 : i64
          %367 = llvm.getelementptr %63[%366] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %179, %367, %236 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %368 = llvm.add %257, %19 : i64
          %369 = llvm.mul %368, %2 : i64
          %370 = llvm.add %369, %259 : i64
          %371 = llvm.add %370, %91 : i64
          %372 = llvm.getelementptr %63[%371] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %180, %372, %238 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %373 = llvm.add %257, %18 : i64
          %374 = llvm.mul %373, %2 : i64
          %375 = llvm.add %374, %259 : i64
          %376 = llvm.add %375, %91 : i64
          %377 = llvm.getelementptr %63[%376] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %181, %377, %240 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %378 = llvm.add %257, %17 : i64
          %379 = llvm.mul %378, %2 : i64
          %380 = llvm.add %379, %259 : i64
          %381 = llvm.add %380, %91 : i64
          %382 = llvm.getelementptr %63[%381] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %182, %382, %242 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %383 = llvm.add %257, %16 : i64
          %384 = llvm.mul %383, %2 : i64
          %385 = llvm.add %384, %259 : i64
          %386 = llvm.add %385, %91 : i64
          %387 = llvm.getelementptr %63[%386] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %183, %387, %244 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %388 = llvm.add %257, %15 : i64
          %389 = llvm.mul %388, %2 : i64
          %390 = llvm.add %389, %259 : i64
          %391 = llvm.add %390, %91 : i64
          %392 = llvm.getelementptr %63[%391] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %184, %392, %246 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %393 = llvm.add %257, %14 : i64
          %394 = llvm.mul %393, %2 : i64
          %395 = llvm.add %394, %259 : i64
          %396 = llvm.add %395, %91 : i64
          %397 = llvm.getelementptr %63[%396] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %185, %397, %248 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %398 = llvm.add %257, %13 : i64
          %399 = llvm.mul %398, %2 : i64
          %400 = llvm.add %399, %259 : i64
          %401 = llvm.add %400, %91 : i64
          %402 = llvm.getelementptr %63[%401] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %186, %402, %250 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %403 = llvm.add %257, %12 : i64
          %404 = llvm.mul %403, %2 : i64
          %405 = llvm.add %404, %259 : i64
          %406 = llvm.add %405, %91 : i64
          %407 = llvm.getelementptr %63[%406] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %187, %407, %252 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %408 = llvm.add %257, %11 : i64
          %409 = llvm.mul %408, %2 : i64
          %410 = llvm.add %409, %259 : i64
          %411 = llvm.add %410, %91 : i64
          %412 = llvm.getelementptr %63[%411] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %188, %412, %254 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %413 = llvm.add %257, %10 : i64
          %414 = llvm.mul %413, %2 : i64
          %415 = llvm.add %414, %259 : i64
          %416 = llvm.add %415, %91 : i64
          %417 = llvm.getelementptr %63[%416] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %189, %417, %256 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %418 = llvm.add %91, %44 : i64
          llvm.br ^bb4(%418 : i64)
        ^bb6:  // pred: ^bb4
          %419 = llvm.add %89, %45 : i64
          llvm.br ^bb3(%419 : i64)
        ^bb7:  // pred: ^bb3
          %420 = llvm.add %78, %46 : i64
          llvm.br ^bb1(%420 : i64)
        ^bb8:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_112_embedded_elf_riscv_64_main_graph$async_dispatch_112_unpack_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_112_embedded_elf_riscv_64_main_graph$async_dispatch_112_unpack_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_112_embedded_elf_riscv_64_main_graph$async_dispatch_112_unpack_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_112_embedded_elf_riscv_64_main_graph$async_dispatch_112_unpack_f32_buffer = util.global.load immutable @main_graph$async_dispatch_112_embedded_elf_riscv_64_main_graph$async_dispatch_112_unpack_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_112::@embedded_elf_riscv_64::@main_graph$async_dispatch_112_unpack_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_112) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_112::@embedded_elf_riscv_64::@main_graph$async_dispatch_112_unpack_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_112_embedded_elf_riscv_64_main_graph$async_dispatch_112_unpack_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_112_embedded_elf_riscv_64_main_graph$async_dispatch_112_unpack_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
