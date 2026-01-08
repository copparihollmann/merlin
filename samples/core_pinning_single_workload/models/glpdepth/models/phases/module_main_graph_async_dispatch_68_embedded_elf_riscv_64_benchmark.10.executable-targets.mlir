#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_68 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_68_unpack_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c13 = arith.constant 13 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c13, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_68_unpack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<7xi64>
          %2 = llvm.mlir.constant(true) : i1
          %3 = llvm.mlir.constant(5600 : index) : i64
          %4 = llvm.mlir.constant(224 : index) : i64
          %5 = llvm.mlir.constant(8 : i64) : i64
          %6 = llvm.mlir.constant(32 : i64) : i64
          %7 = llvm.mlir.constant(31 : index) : i64
          %8 = llvm.mlir.constant(30 : index) : i64
          %9 = llvm.mlir.constant(29 : index) : i64
          %10 = llvm.mlir.constant(28 : index) : i64
          %11 = llvm.mlir.constant(27 : index) : i64
          %12 = llvm.mlir.constant(26 : index) : i64
          %13 = llvm.mlir.constant(25 : index) : i64
          %14 = llvm.mlir.constant(24 : index) : i64
          %15 = llvm.mlir.constant(23 : index) : i64
          %16 = llvm.mlir.constant(22 : index) : i64
          %17 = llvm.mlir.constant(21 : index) : i64
          %18 = llvm.mlir.constant(20 : index) : i64
          %19 = llvm.mlir.constant(19 : index) : i64
          %20 = llvm.mlir.constant(18 : index) : i64
          %21 = llvm.mlir.constant(17 : index) : i64
          %22 = llvm.mlir.constant(16 : index) : i64
          %23 = llvm.mlir.constant(15 : index) : i64
          %24 = llvm.mlir.constant(14 : index) : i64
          %25 = llvm.mlir.constant(13 : index) : i64
          %26 = llvm.mlir.constant(12 : index) : i64
          %27 = llvm.mlir.constant(11 : index) : i64
          %28 = llvm.mlir.constant(10 : index) : i64
          %29 = llvm.mlir.constant(9 : index) : i64
          %30 = llvm.mlir.constant(8 : index) : i64
          %31 = llvm.mlir.constant(dense<false> : vector<7xi1>) : vector<7xi1>
          %32 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6]> : vector<7xi64>) : vector<7xi64>
          %33 = llvm.mlir.constant(-64 : index) : i64
          %34 = llvm.mlir.constant(784 : index) : i64
          %35 = llvm.mlir.constant(-1 : index) : i64
          %36 = llvm.mlir.poison : vector<224xf32>
          %37 = llvm.mlir.constant(6 : index) : i64
          %38 = llvm.mlir.constant(5 : index) : i64
          %39 = llvm.mlir.constant(4 : index) : i64
          %40 = llvm.mlir.constant(3 : index) : i64
          %41 = llvm.mlir.constant(2 : index) : i64
          %42 = llvm.mlir.constant(1 : index) : i64
          %43 = llvm.mlir.constant(7 : index) : i64
          %44 = llvm.mlir.constant(32 : index) : i64
          %45 = llvm.mlir.constant(64 : index) : i64
          %46 = llvm.mlir.constant(0 : index) : i64
          %47 = llvm.mlir.constant(401408 : index) : i64
          %48 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %49 = llvm.extractvalue %48[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %50 = llvm.load %49 : !llvm.ptr -> i32
          %51 = llvm.zext %50 : i32 to i64
          %52 = llvm.extractvalue %48[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %53 = llvm.load %52 : !llvm.ptr -> !llvm.ptr
          %54 = llvm.mul %51, %5 : i64
          %55 = llvm.udiv %54, %6 : i64
          %56 = llvm.getelementptr %53[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %2 ["align"(%56, %45 : !llvm.ptr, i64)] : i1
          %57 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %58 = llvm.extractvalue %57[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %59 = llvm.getelementptr %58[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %60 = llvm.load %59 : !llvm.ptr -> !llvm.ptr
          %61 = llvm.mul %47, %5 : i64
          %62 = llvm.udiv %61, %6 : i64
          %63 = llvm.getelementptr %60[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %2 ["align"(%63, %45 : !llvm.ptr, i64)] : i1
          %64 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %65 = llvm.extractvalue %64[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %66 = llvm.zext %65 : i32 to i64
          %67 = llvm.mul %66, %45 overflow<nsw> : i64
          %68 = llvm.mul %66, %33 overflow<nsw> : i64
          %69 = llvm.add %68, %34 : i64
          %70 = llvm.icmp "slt" %69, %45 : i64
          %71 = llvm.select %70, %69, %45 : i1, i64
          %72 = llvm.icmp "slt" %67, %46 : i64
          %73 = llvm.sub %35, %67 : i64
          %74 = llvm.select %72, %73, %67 : i1, i64
          %75 = llvm.sdiv %74, %44 : i64
          %76 = llvm.sub %35, %75 : i64
          %77 = llvm.select %72, %76, %75 : i1, i64
          llvm.br ^bb1(%46 : i64)
        ^bb1(%78: i64):  // 2 preds: ^bb0, ^bb5
          %79 = llvm.icmp "slt" %78, %71 : i64
          llvm.cond_br %79, ^bb2, ^bb6
        ^bb2:  // pred: ^bb1
          %80 = llvm.sub %71, %78 : i64
          %81 = llvm.icmp "slt" %80, %44 : i64
          %82 = llvm.select %81, %80, %44 : i1, i64
          %83 = llvm.icmp "slt" %78, %46 : i64
          %84 = llvm.sub %35, %78 : i64
          %85 = llvm.select %83, %84, %78 : i1, i64
          %86 = llvm.sdiv %85, %44 : i64
          %87 = llvm.sub %35, %86 : i64
          %88 = llvm.select %83, %87, %86 : i1, i64
          llvm.br ^bb3(%46 : i64)
        ^bb3(%89: i64):  // 2 preds: ^bb2, ^bb4
          %90 = llvm.icmp "slt" %89, %45 : i64
          llvm.cond_br %90, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %91 = llvm.sub %45, %89 : i64
          %92 = llvm.icmp "slt" %91, %43 : i64
          %93 = llvm.select %92, %91, %43 : i1, i64
          %94 = llvm.icmp "slt" %89, %46 : i64
          %95 = llvm.sub %35, %89 : i64
          %96 = llvm.select %94, %95, %89 : i1, i64
          %97 = llvm.sdiv %96, %43 : i64
          %98 = llvm.sub %35, %97 : i64
          %99 = llvm.select %94, %98, %97 : i1, i64
          %100 = llvm.add %88, %77 : i64
          %101 = llvm.mul %99, %3 : i64
          %102 = llvm.mul %100, %4 : i64
          %103 = llvm.add %101, %102 : i64
          %104 = llvm.mul %46, %44 : i64
          %105 = llvm.add %103, %104 : i64
          %106 = llvm.add %105, %46 : i64
          %107 = llvm.getelementptr %56[%106] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %108 = llvm.load %107 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %109 = llvm.mul %42, %44 : i64
          %110 = llvm.add %103, %109 : i64
          %111 = llvm.add %110, %46 : i64
          %112 = llvm.getelementptr %56[%111] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %113 = llvm.load %112 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %114 = llvm.mul %41, %44 : i64
          %115 = llvm.add %103, %114 : i64
          %116 = llvm.add %115, %46 : i64
          %117 = llvm.getelementptr %56[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %118 = llvm.load %117 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %119 = llvm.mul %40, %44 : i64
          %120 = llvm.add %103, %119 : i64
          %121 = llvm.add %120, %46 : i64
          %122 = llvm.getelementptr %56[%121] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %123 = llvm.load %122 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %124 = llvm.mul %39, %44 : i64
          %125 = llvm.add %103, %124 : i64
          %126 = llvm.add %125, %46 : i64
          %127 = llvm.getelementptr %56[%126] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %128 = llvm.load %127 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %129 = llvm.mul %38, %44 : i64
          %130 = llvm.add %103, %129 : i64
          %131 = llvm.add %130, %46 : i64
          %132 = llvm.getelementptr %56[%131] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %133 = llvm.load %132 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %134 = llvm.mul %37, %44 : i64
          %135 = llvm.add %103, %134 : i64
          %136 = llvm.add %135, %46 : i64
          %137 = llvm.getelementptr %56[%136] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %138 = llvm.load %137 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %139 = llvm.shufflevector %108, %108 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %140 = llvm.shufflevector %139, %36 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %141 = llvm.shufflevector %113, %113 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %142 = llvm.shufflevector %141, %140 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %143 = llvm.shufflevector %118, %118 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %144 = llvm.shufflevector %143, %142 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %145 = llvm.shufflevector %123, %123 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %146 = llvm.shufflevector %145, %144 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %147 = llvm.shufflevector %128, %128 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %148 = llvm.shufflevector %147, %146 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %149 = llvm.shufflevector %133, %133 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %150 = llvm.shufflevector %149, %148 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %151 = llvm.shufflevector %138, %138 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %152 = llvm.shufflevector %151, %150 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31] : vector<224xf32> 
          %153 = llvm.shufflevector %152, %152 [0, 32, 64, 96, 128, 160, 192, 1, 33, 65, 97, 129, 161, 193, 2, 34, 66, 98, 130, 162, 194, 3, 35, 67, 99, 131, 163, 195, 4, 36, 68, 100, 132, 164, 196, 5, 37, 69, 101, 133, 165, 197, 6, 38, 70, 102, 134, 166, 198, 7, 39, 71, 103, 135, 167, 199, 8, 40, 72, 104, 136, 168, 200, 9, 41, 73, 105, 137, 169, 201, 10, 42, 74, 106, 138, 170, 202, 11, 43, 75, 107, 139, 171, 203, 12, 44, 76, 108, 140, 172, 204, 13, 45, 77, 109, 141, 173, 205, 14, 46, 78, 110, 142, 174, 206, 15, 47, 79, 111, 143, 175, 207, 16, 48, 80, 112, 144, 176, 208, 17, 49, 81, 113, 145, 177, 209, 18, 50, 82, 114, 146, 178, 210, 19, 51, 83, 115, 147, 179, 211, 20, 52, 84, 116, 148, 180, 212, 21, 53, 85, 117, 149, 181, 213, 22, 54, 86, 118, 150, 182, 214, 23, 55, 87, 119, 151, 183, 215, 24, 56, 88, 120, 152, 184, 216, 25, 57, 89, 121, 153, 185, 217, 26, 58, 90, 122, 154, 186, 218, 27, 59, 91, 123, 155, 187, 219, 28, 60, 92, 124, 156, 188, 220, 29, 61, 93, 125, 157, 189, 221, 30, 62, 94, 126, 158, 190, 222, 31, 63, 95, 127, 159, 191, 223] : vector<224xf32> 
          %154 = llvm.shufflevector %153, %153 [0, 1, 2, 3, 4, 5, 6] : vector<224xf32> 
          %155 = llvm.shufflevector %153, %153 [7, 8, 9, 10, 11, 12, 13] : vector<224xf32> 
          %156 = llvm.shufflevector %153, %153 [14, 15, 16, 17, 18, 19, 20] : vector<224xf32> 
          %157 = llvm.shufflevector %153, %153 [21, 22, 23, 24, 25, 26, 27] : vector<224xf32> 
          %158 = llvm.shufflevector %153, %153 [28, 29, 30, 31, 32, 33, 34] : vector<224xf32> 
          %159 = llvm.shufflevector %153, %153 [35, 36, 37, 38, 39, 40, 41] : vector<224xf32> 
          %160 = llvm.shufflevector %153, %153 [42, 43, 44, 45, 46, 47, 48] : vector<224xf32> 
          %161 = llvm.shufflevector %153, %153 [49, 50, 51, 52, 53, 54, 55] : vector<224xf32> 
          %162 = llvm.shufflevector %153, %153 [56, 57, 58, 59, 60, 61, 62] : vector<224xf32> 
          %163 = llvm.shufflevector %153, %153 [63, 64, 65, 66, 67, 68, 69] : vector<224xf32> 
          %164 = llvm.shufflevector %153, %153 [70, 71, 72, 73, 74, 75, 76] : vector<224xf32> 
          %165 = llvm.shufflevector %153, %153 [77, 78, 79, 80, 81, 82, 83] : vector<224xf32> 
          %166 = llvm.shufflevector %153, %153 [84, 85, 86, 87, 88, 89, 90] : vector<224xf32> 
          %167 = llvm.shufflevector %153, %153 [91, 92, 93, 94, 95, 96, 97] : vector<224xf32> 
          %168 = llvm.shufflevector %153, %153 [98, 99, 100, 101, 102, 103, 104] : vector<224xf32> 
          %169 = llvm.shufflevector %153, %153 [105, 106, 107, 108, 109, 110, 111] : vector<224xf32> 
          %170 = llvm.shufflevector %153, %153 [112, 113, 114, 115, 116, 117, 118] : vector<224xf32> 
          %171 = llvm.shufflevector %153, %153 [119, 120, 121, 122, 123, 124, 125] : vector<224xf32> 
          %172 = llvm.shufflevector %153, %153 [126, 127, 128, 129, 130, 131, 132] : vector<224xf32> 
          %173 = llvm.shufflevector %153, %153 [133, 134, 135, 136, 137, 138, 139] : vector<224xf32> 
          %174 = llvm.shufflevector %153, %153 [140, 141, 142, 143, 144, 145, 146] : vector<224xf32> 
          %175 = llvm.shufflevector %153, %153 [147, 148, 149, 150, 151, 152, 153] : vector<224xf32> 
          %176 = llvm.shufflevector %153, %153 [154, 155, 156, 157, 158, 159, 160] : vector<224xf32> 
          %177 = llvm.shufflevector %153, %153 [161, 162, 163, 164, 165, 166, 167] : vector<224xf32> 
          %178 = llvm.shufflevector %153, %153 [168, 169, 170, 171, 172, 173, 174] : vector<224xf32> 
          %179 = llvm.shufflevector %153, %153 [175, 176, 177, 178, 179, 180, 181] : vector<224xf32> 
          %180 = llvm.shufflevector %153, %153 [182, 183, 184, 185, 186, 187, 188] : vector<224xf32> 
          %181 = llvm.shufflevector %153, %153 [189, 190, 191, 192, 193, 194, 195] : vector<224xf32> 
          %182 = llvm.shufflevector %153, %153 [196, 197, 198, 199, 200, 201, 202] : vector<224xf32> 
          %183 = llvm.shufflevector %153, %153 [203, 204, 205, 206, 207, 208, 209] : vector<224xf32> 
          %184 = llvm.shufflevector %153, %153 [210, 211, 212, 213, 214, 215, 216] : vector<224xf32> 
          %185 = llvm.shufflevector %153, %153 [217, 218, 219, 220, 221, 222, 223] : vector<224xf32> 
          %186 = llvm.insertelement %93, %1[%0 : i32] : vector<7xi64>
          %187 = llvm.shufflevector %186, %1 [0, 0, 0, 0, 0, 0, 0] : vector<7xi64> 
          %188 = llvm.icmp "sgt" %187, %32 : vector<7xi64>
          %189 = llvm.icmp "sgt" %82, %46 : i64
          %190 = llvm.select %189, %188, %31 : i1, vector<7xi1>
          %191 = llvm.icmp "sgt" %82, %42 : i64
          %192 = llvm.select %191, %188, %31 : i1, vector<7xi1>
          %193 = llvm.icmp "sgt" %82, %41 : i64
          %194 = llvm.select %193, %188, %31 : i1, vector<7xi1>
          %195 = llvm.icmp "sgt" %82, %40 : i64
          %196 = llvm.select %195, %188, %31 : i1, vector<7xi1>
          %197 = llvm.icmp "sgt" %82, %39 : i64
          %198 = llvm.select %197, %188, %31 : i1, vector<7xi1>
          %199 = llvm.icmp "sgt" %82, %38 : i64
          %200 = llvm.select %199, %188, %31 : i1, vector<7xi1>
          %201 = llvm.icmp "sgt" %82, %37 : i64
          %202 = llvm.select %201, %188, %31 : i1, vector<7xi1>
          %203 = llvm.icmp "sgt" %82, %43 : i64
          %204 = llvm.select %203, %188, %31 : i1, vector<7xi1>
          %205 = llvm.icmp "sgt" %82, %30 : i64
          %206 = llvm.select %205, %188, %31 : i1, vector<7xi1>
          %207 = llvm.icmp "sgt" %82, %29 : i64
          %208 = llvm.select %207, %188, %31 : i1, vector<7xi1>
          %209 = llvm.icmp "sgt" %82, %28 : i64
          %210 = llvm.select %209, %188, %31 : i1, vector<7xi1>
          %211 = llvm.icmp "sgt" %82, %27 : i64
          %212 = llvm.select %211, %188, %31 : i1, vector<7xi1>
          %213 = llvm.icmp "sgt" %82, %26 : i64
          %214 = llvm.select %213, %188, %31 : i1, vector<7xi1>
          %215 = llvm.icmp "sgt" %82, %25 : i64
          %216 = llvm.select %215, %188, %31 : i1, vector<7xi1>
          %217 = llvm.icmp "sgt" %82, %24 : i64
          %218 = llvm.select %217, %188, %31 : i1, vector<7xi1>
          %219 = llvm.icmp "sgt" %82, %23 : i64
          %220 = llvm.select %219, %188, %31 : i1, vector<7xi1>
          %221 = llvm.icmp "sgt" %82, %22 : i64
          %222 = llvm.select %221, %188, %31 : i1, vector<7xi1>
          %223 = llvm.icmp "sgt" %82, %21 : i64
          %224 = llvm.select %223, %188, %31 : i1, vector<7xi1>
          %225 = llvm.icmp "sgt" %82, %20 : i64
          %226 = llvm.select %225, %188, %31 : i1, vector<7xi1>
          %227 = llvm.icmp "sgt" %82, %19 : i64
          %228 = llvm.select %227, %188, %31 : i1, vector<7xi1>
          %229 = llvm.icmp "sgt" %82, %18 : i64
          %230 = llvm.select %229, %188, %31 : i1, vector<7xi1>
          %231 = llvm.icmp "sgt" %82, %17 : i64
          %232 = llvm.select %231, %188, %31 : i1, vector<7xi1>
          %233 = llvm.icmp "sgt" %82, %16 : i64
          %234 = llvm.select %233, %188, %31 : i1, vector<7xi1>
          %235 = llvm.icmp "sgt" %82, %15 : i64
          %236 = llvm.select %235, %188, %31 : i1, vector<7xi1>
          %237 = llvm.icmp "sgt" %82, %14 : i64
          %238 = llvm.select %237, %188, %31 : i1, vector<7xi1>
          %239 = llvm.icmp "sgt" %82, %13 : i64
          %240 = llvm.select %239, %188, %31 : i1, vector<7xi1>
          %241 = llvm.icmp "sgt" %82, %12 : i64
          %242 = llvm.select %241, %188, %31 : i1, vector<7xi1>
          %243 = llvm.icmp "sgt" %82, %11 : i64
          %244 = llvm.select %243, %188, %31 : i1, vector<7xi1>
          %245 = llvm.icmp "sgt" %82, %10 : i64
          %246 = llvm.select %245, %188, %31 : i1, vector<7xi1>
          %247 = llvm.icmp "sgt" %82, %9 : i64
          %248 = llvm.select %247, %188, %31 : i1, vector<7xi1>
          %249 = llvm.icmp "sgt" %82, %8 : i64
          %250 = llvm.select %249, %188, %31 : i1, vector<7xi1>
          %251 = llvm.icmp "sgt" %82, %7 : i64
          %252 = llvm.select %251, %188, %31 : i1, vector<7xi1>
          %253 = llvm.add %67, %78 : i64
          %254 = llvm.mul %253, %45 : i64
          %255 = llvm.add %254, %89 : i64
          %256 = llvm.getelementptr %63[%255] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %154, %256, %190 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %257 = llvm.add %253, %42 : i64
          %258 = llvm.mul %257, %45 : i64
          %259 = llvm.add %258, %89 : i64
          %260 = llvm.getelementptr %63[%259] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %155, %260, %192 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %261 = llvm.add %253, %41 : i64
          %262 = llvm.mul %261, %45 : i64
          %263 = llvm.add %262, %89 : i64
          %264 = llvm.getelementptr %63[%263] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %156, %264, %194 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %265 = llvm.add %253, %40 : i64
          %266 = llvm.mul %265, %45 : i64
          %267 = llvm.add %266, %89 : i64
          %268 = llvm.getelementptr %63[%267] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %157, %268, %196 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %269 = llvm.add %253, %39 : i64
          %270 = llvm.mul %269, %45 : i64
          %271 = llvm.add %270, %89 : i64
          %272 = llvm.getelementptr %63[%271] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %158, %272, %198 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %273 = llvm.add %253, %38 : i64
          %274 = llvm.mul %273, %45 : i64
          %275 = llvm.add %274, %89 : i64
          %276 = llvm.getelementptr %63[%275] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %159, %276, %200 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %277 = llvm.add %253, %37 : i64
          %278 = llvm.mul %277, %45 : i64
          %279 = llvm.add %278, %89 : i64
          %280 = llvm.getelementptr %63[%279] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %160, %280, %202 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %281 = llvm.add %253, %43 : i64
          %282 = llvm.mul %281, %45 : i64
          %283 = llvm.add %282, %89 : i64
          %284 = llvm.getelementptr %63[%283] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %161, %284, %204 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %285 = llvm.add %253, %30 : i64
          %286 = llvm.mul %285, %45 : i64
          %287 = llvm.add %286, %89 : i64
          %288 = llvm.getelementptr %63[%287] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %162, %288, %206 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %289 = llvm.add %253, %29 : i64
          %290 = llvm.mul %289, %45 : i64
          %291 = llvm.add %290, %89 : i64
          %292 = llvm.getelementptr %63[%291] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %163, %292, %208 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %293 = llvm.add %253, %28 : i64
          %294 = llvm.mul %293, %45 : i64
          %295 = llvm.add %294, %89 : i64
          %296 = llvm.getelementptr %63[%295] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %164, %296, %210 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %297 = llvm.add %253, %27 : i64
          %298 = llvm.mul %297, %45 : i64
          %299 = llvm.add %298, %89 : i64
          %300 = llvm.getelementptr %63[%299] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %165, %300, %212 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %301 = llvm.add %253, %26 : i64
          %302 = llvm.mul %301, %45 : i64
          %303 = llvm.add %302, %89 : i64
          %304 = llvm.getelementptr %63[%303] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %166, %304, %214 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %305 = llvm.add %253, %25 : i64
          %306 = llvm.mul %305, %45 : i64
          %307 = llvm.add %306, %89 : i64
          %308 = llvm.getelementptr %63[%307] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %167, %308, %216 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %309 = llvm.add %253, %24 : i64
          %310 = llvm.mul %309, %45 : i64
          %311 = llvm.add %310, %89 : i64
          %312 = llvm.getelementptr %63[%311] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %168, %312, %218 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %313 = llvm.add %253, %23 : i64
          %314 = llvm.mul %313, %45 : i64
          %315 = llvm.add %314, %89 : i64
          %316 = llvm.getelementptr %63[%315] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %169, %316, %220 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %317 = llvm.add %253, %22 : i64
          %318 = llvm.mul %317, %45 : i64
          %319 = llvm.add %318, %89 : i64
          %320 = llvm.getelementptr %63[%319] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %170, %320, %222 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %321 = llvm.add %253, %21 : i64
          %322 = llvm.mul %321, %45 : i64
          %323 = llvm.add %322, %89 : i64
          %324 = llvm.getelementptr %63[%323] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %171, %324, %224 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %325 = llvm.add %253, %20 : i64
          %326 = llvm.mul %325, %45 : i64
          %327 = llvm.add %326, %89 : i64
          %328 = llvm.getelementptr %63[%327] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %172, %328, %226 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %329 = llvm.add %253, %19 : i64
          %330 = llvm.mul %329, %45 : i64
          %331 = llvm.add %330, %89 : i64
          %332 = llvm.getelementptr %63[%331] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %173, %332, %228 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %333 = llvm.add %253, %18 : i64
          %334 = llvm.mul %333, %45 : i64
          %335 = llvm.add %334, %89 : i64
          %336 = llvm.getelementptr %63[%335] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %174, %336, %230 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %337 = llvm.add %253, %17 : i64
          %338 = llvm.mul %337, %45 : i64
          %339 = llvm.add %338, %89 : i64
          %340 = llvm.getelementptr %63[%339] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %175, %340, %232 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %341 = llvm.add %253, %16 : i64
          %342 = llvm.mul %341, %45 : i64
          %343 = llvm.add %342, %89 : i64
          %344 = llvm.getelementptr %63[%343] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %176, %344, %234 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %345 = llvm.add %253, %15 : i64
          %346 = llvm.mul %345, %45 : i64
          %347 = llvm.add %346, %89 : i64
          %348 = llvm.getelementptr %63[%347] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %177, %348, %236 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %349 = llvm.add %253, %14 : i64
          %350 = llvm.mul %349, %45 : i64
          %351 = llvm.add %350, %89 : i64
          %352 = llvm.getelementptr %63[%351] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %178, %352, %238 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %353 = llvm.add %253, %13 : i64
          %354 = llvm.mul %353, %45 : i64
          %355 = llvm.add %354, %89 : i64
          %356 = llvm.getelementptr %63[%355] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %179, %356, %240 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %357 = llvm.add %253, %12 : i64
          %358 = llvm.mul %357, %45 : i64
          %359 = llvm.add %358, %89 : i64
          %360 = llvm.getelementptr %63[%359] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %180, %360, %242 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %361 = llvm.add %253, %11 : i64
          %362 = llvm.mul %361, %45 : i64
          %363 = llvm.add %362, %89 : i64
          %364 = llvm.getelementptr %63[%363] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %181, %364, %244 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %365 = llvm.add %253, %10 : i64
          %366 = llvm.mul %365, %45 : i64
          %367 = llvm.add %366, %89 : i64
          %368 = llvm.getelementptr %63[%367] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %182, %368, %246 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %369 = llvm.add %253, %9 : i64
          %370 = llvm.mul %369, %45 : i64
          %371 = llvm.add %370, %89 : i64
          %372 = llvm.getelementptr %63[%371] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %183, %372, %248 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %373 = llvm.add %253, %8 : i64
          %374 = llvm.mul %373, %45 : i64
          %375 = llvm.add %374, %89 : i64
          %376 = llvm.getelementptr %63[%375] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %184, %376, %250 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %377 = llvm.add %253, %7 : i64
          %378 = llvm.mul %377, %45 : i64
          %379 = llvm.add %378, %89 : i64
          %380 = llvm.getelementptr %63[%379] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %185, %380, %252 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %381 = llvm.add %89, %43 : i64
          llvm.br ^bb3(%381 : i64)
        ^bb5:  // pred: ^bb3
          %382 = llvm.add %78, %44 : i64
          llvm.br ^bb1(%382 : i64)
        ^bb6:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_68_embedded_elf_riscv_64_main_graph$async_dispatch_68_unpack_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_68_embedded_elf_riscv_64_main_graph$async_dispatch_68_unpack_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_68_embedded_elf_riscv_64_main_graph$async_dispatch_68_unpack_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c1622016_i32 = arith.constant 1622016 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_68_embedded_elf_riscv_64_main_graph$async_dispatch_68_unpack_f32_buffer = util.global.load immutable @main_graph$async_dispatch_68_embedded_elf_riscv_64_main_graph$async_dispatch_68_unpack_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_68::@embedded_elf_riscv_64::@main_graph$async_dispatch_68_unpack_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_68) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_68::@embedded_elf_riscv_64::@main_graph$async_dispatch_68_unpack_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c1622016_i32]) bindings([
      (%main_graph$async_dispatch_68_embedded_elf_riscv_64_main_graph$async_dispatch_68_unpack_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_68_embedded_elf_riscv_64_main_graph$async_dispatch_68_unpack_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
