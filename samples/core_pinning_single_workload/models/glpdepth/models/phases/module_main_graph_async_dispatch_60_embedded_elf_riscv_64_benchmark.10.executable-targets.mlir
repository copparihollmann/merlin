#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_60 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_60_unpack_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c13 = arith.constant 13 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c13, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_60_unpack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(38416 : index) : i64
          %2 = llvm.mlir.constant(true) : i1
          %3 = llvm.mlir.constant(39200 : index) : i64
          %4 = llvm.mlir.constant(5600 : index) : i64
          %5 = llvm.mlir.constant(224 : index) : i64
          %6 = llvm.mlir.constant(8 : i64) : i64
          %7 = llvm.mlir.constant(32 : i64) : i64
          %8 = llvm.mlir.constant(31 : index) : i64
          %9 = llvm.mlir.constant(30 : index) : i64
          %10 = llvm.mlir.constant(29 : index) : i64
          %11 = llvm.mlir.constant(28 : index) : i64
          %12 = llvm.mlir.constant(27 : index) : i64
          %13 = llvm.mlir.constant(26 : index) : i64
          %14 = llvm.mlir.constant(25 : index) : i64
          %15 = llvm.mlir.constant(24 : index) : i64
          %16 = llvm.mlir.constant(23 : index) : i64
          %17 = llvm.mlir.constant(22 : index) : i64
          %18 = llvm.mlir.constant(21 : index) : i64
          %19 = llvm.mlir.constant(20 : index) : i64
          %20 = llvm.mlir.constant(19 : index) : i64
          %21 = llvm.mlir.constant(18 : index) : i64
          %22 = llvm.mlir.constant(17 : index) : i64
          %23 = llvm.mlir.constant(16 : index) : i64
          %24 = llvm.mlir.constant(15 : index) : i64
          %25 = llvm.mlir.constant(14 : index) : i64
          %26 = llvm.mlir.constant(13 : index) : i64
          %27 = llvm.mlir.constant(12 : index) : i64
          %28 = llvm.mlir.constant(11 : index) : i64
          %29 = llvm.mlir.constant(10 : index) : i64
          %30 = llvm.mlir.constant(9 : index) : i64
          %31 = llvm.mlir.constant(8 : index) : i64
          %32 = llvm.mlir.constant(dense<false> : vector<7xi1>) : vector<7xi1>
          %33 = llvm.mlir.constant(dense<true> : vector<7xi1>) : vector<7xi1>
          %34 = llvm.mlir.constant(-64 : index) : i64
          %35 = llvm.mlir.constant(784 : index) : i64
          %36 = llvm.mlir.constant(-1 : index) : i64
          %37 = llvm.mlir.constant(64 : index) : i64
          %38 = llvm.mlir.poison : vector<224xf32>
          %39 = llvm.mlir.constant(6 : index) : i64
          %40 = llvm.mlir.constant(5 : index) : i64
          %41 = llvm.mlir.constant(4 : index) : i64
          %42 = llvm.mlir.constant(3 : index) : i64
          %43 = llvm.mlir.constant(7 : index) : i64
          %44 = llvm.mlir.constant(32 : index) : i64
          %45 = llvm.mlir.constant(49 : index) : i64
          %46 = llvm.mlir.constant(2 : index) : i64
          %47 = llvm.mlir.constant(0 : index) : i64
          %48 = llvm.mlir.constant(1 : index) : i64
          %49 = llvm.mlir.constant(1003520 : index) : i64
          %50 = llvm.mlir.constant(1317120 : index) : i64
          %51 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %52 = llvm.extractvalue %51[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %53 = llvm.load %52 : !llvm.ptr -> !llvm.ptr
          %54 = llvm.mul %49, %6 : i64
          %55 = llvm.udiv %54, %7 : i64
          %56 = llvm.getelementptr %53[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %2 ["align"(%56, %37 : !llvm.ptr, i64)] : i1
          %57 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %58 = llvm.extractvalue %57[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %59 = llvm.getelementptr %58[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %60 = llvm.load %59 : !llvm.ptr -> !llvm.ptr
          %61 = llvm.mul %50, %6 : i64
          %62 = llvm.udiv %61, %7 : i64
          %63 = llvm.getelementptr %60[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %2 ["align"(%63, %37 : !llvm.ptr, i64)] : i1
          %64 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %65 = llvm.extractvalue %64[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %66 = llvm.zext %65 : i32 to i64
          %67 = llvm.mul %66, %37 overflow<nsw> : i64
          %68 = llvm.mul %66, %34 overflow<nsw> : i64
          %69 = llvm.add %68, %35 : i64
          %70 = llvm.icmp "slt" %69, %37 : i64
          %71 = llvm.select %70, %69, %37 : i1, i64
          %72 = llvm.icmp "slt" %67, %47 : i64
          %73 = llvm.sub %36, %67 : i64
          %74 = llvm.select %72, %73, %67 : i1, i64
          %75 = llvm.sdiv %74, %44 : i64
          %76 = llvm.sub %36, %75 : i64
          %77 = llvm.select %72, %76, %75 : i1, i64
          llvm.br ^bb1(%47 : i64)
        ^bb1(%78: i64):  // 2 preds: ^bb0, ^bb7
          %79 = llvm.icmp "slt" %78, %46 : i64
          llvm.cond_br %79, ^bb2(%47 : i64), ^bb8
        ^bb2(%80: i64):  // 2 preds: ^bb1, ^bb6
          %81 = llvm.icmp "slt" %80, %71 : i64
          llvm.cond_br %81, ^bb3, ^bb7
        ^bb3:  // pred: ^bb2
          %82 = llvm.sub %71, %80 : i64
          %83 = llvm.icmp "slt" %82, %44 : i64
          %84 = llvm.select %83, %82, %44 : i1, i64
          %85 = llvm.icmp "slt" %80, %47 : i64
          %86 = llvm.sub %36, %80 : i64
          %87 = llvm.select %85, %86, %80 : i1, i64
          %88 = llvm.sdiv %87, %44 : i64
          %89 = llvm.sub %36, %88 : i64
          %90 = llvm.select %85, %89, %88 : i1, i64
          llvm.br ^bb4(%47 : i64)
        ^bb4(%91: i64):  // 2 preds: ^bb3, ^bb5
          %92 = llvm.icmp "slt" %91, %45 : i64
          llvm.cond_br %92, ^bb5, ^bb6
        ^bb5:  // pred: ^bb4
          %93 = llvm.icmp "slt" %91, %47 : i64
          %94 = llvm.sub %36, %91 : i64
          %95 = llvm.select %93, %94, %91 : i1, i64
          %96 = llvm.sdiv %95, %43 : i64
          %97 = llvm.sub %36, %96 : i64
          %98 = llvm.select %93, %97, %96 : i1, i64
          %99 = llvm.add %90, %77 : i64
          %100 = llvm.mul %78, %3 : i64
          %101 = llvm.mul %98, %4 : i64
          %102 = llvm.add %100, %101 : i64
          %103 = llvm.mul %99, %5 : i64
          %104 = llvm.add %102, %103 : i64
          %105 = llvm.mul %47, %44 : i64
          %106 = llvm.add %104, %105 : i64
          %107 = llvm.add %106, %47 : i64
          %108 = llvm.getelementptr %56[%107] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %109 = llvm.load %108 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %110 = llvm.mul %48, %44 : i64
          %111 = llvm.add %104, %110 : i64
          %112 = llvm.add %111, %47 : i64
          %113 = llvm.getelementptr %56[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %114 = llvm.load %113 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %115 = llvm.mul %46, %44 : i64
          %116 = llvm.add %104, %115 : i64
          %117 = llvm.add %116, %47 : i64
          %118 = llvm.getelementptr %56[%117] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %119 = llvm.load %118 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %120 = llvm.mul %42, %44 : i64
          %121 = llvm.add %104, %120 : i64
          %122 = llvm.add %121, %47 : i64
          %123 = llvm.getelementptr %56[%122] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %124 = llvm.load %123 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %125 = llvm.mul %41, %44 : i64
          %126 = llvm.add %104, %125 : i64
          %127 = llvm.add %126, %47 : i64
          %128 = llvm.getelementptr %56[%127] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %129 = llvm.load %128 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %130 = llvm.mul %40, %44 : i64
          %131 = llvm.add %104, %130 : i64
          %132 = llvm.add %131, %47 : i64
          %133 = llvm.getelementptr %56[%132] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %134 = llvm.load %133 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %135 = llvm.mul %39, %44 : i64
          %136 = llvm.add %104, %135 : i64
          %137 = llvm.add %136, %47 : i64
          %138 = llvm.getelementptr %56[%137] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %139 = llvm.load %138 {alignment = 4 : i64} : !llvm.ptr -> vector<32xf32>
          %140 = llvm.shufflevector %109, %109 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %141 = llvm.shufflevector %140, %38 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %142 = llvm.shufflevector %114, %114 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %143 = llvm.shufflevector %142, %141 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %144 = llvm.shufflevector %119, %119 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %145 = llvm.shufflevector %144, %143 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %146 = llvm.shufflevector %124, %124 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %147 = llvm.shufflevector %146, %145 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %148 = llvm.shufflevector %129, %129 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %149 = llvm.shufflevector %148, %147 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %150 = llvm.shufflevector %134, %134 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %151 = llvm.shufflevector %150, %149 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447] : vector<224xf32> 
          %152 = llvm.shufflevector %139, %139 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xf32> 
          %153 = llvm.shufflevector %152, %151 [224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31] : vector<224xf32> 
          %154 = llvm.shufflevector %153, %153 [0, 32, 64, 96, 128, 160, 192, 1, 33, 65, 97, 129, 161, 193, 2, 34, 66, 98, 130, 162, 194, 3, 35, 67, 99, 131, 163, 195, 4, 36, 68, 100, 132, 164, 196, 5, 37, 69, 101, 133, 165, 197, 6, 38, 70, 102, 134, 166, 198, 7, 39, 71, 103, 135, 167, 199, 8, 40, 72, 104, 136, 168, 200, 9, 41, 73, 105, 137, 169, 201, 10, 42, 74, 106, 138, 170, 202, 11, 43, 75, 107, 139, 171, 203, 12, 44, 76, 108, 140, 172, 204, 13, 45, 77, 109, 141, 173, 205, 14, 46, 78, 110, 142, 174, 206, 15, 47, 79, 111, 143, 175, 207, 16, 48, 80, 112, 144, 176, 208, 17, 49, 81, 113, 145, 177, 209, 18, 50, 82, 114, 146, 178, 210, 19, 51, 83, 115, 147, 179, 211, 20, 52, 84, 116, 148, 180, 212, 21, 53, 85, 117, 149, 181, 213, 22, 54, 86, 118, 150, 182, 214, 23, 55, 87, 119, 151, 183, 215, 24, 56, 88, 120, 152, 184, 216, 25, 57, 89, 121, 153, 185, 217, 26, 58, 90, 122, 154, 186, 218, 27, 59, 91, 123, 155, 187, 219, 28, 60, 92, 124, 156, 188, 220, 29, 61, 93, 125, 157, 189, 221, 30, 62, 94, 126, 158, 190, 222, 31, 63, 95, 127, 159, 191, 223] : vector<224xf32> 
          %155 = llvm.shufflevector %154, %154 [0, 1, 2, 3, 4, 5, 6] : vector<224xf32> 
          %156 = llvm.shufflevector %154, %154 [7, 8, 9, 10, 11, 12, 13] : vector<224xf32> 
          %157 = llvm.shufflevector %154, %154 [14, 15, 16, 17, 18, 19, 20] : vector<224xf32> 
          %158 = llvm.shufflevector %154, %154 [21, 22, 23, 24, 25, 26, 27] : vector<224xf32> 
          %159 = llvm.shufflevector %154, %154 [28, 29, 30, 31, 32, 33, 34] : vector<224xf32> 
          %160 = llvm.shufflevector %154, %154 [35, 36, 37, 38, 39, 40, 41] : vector<224xf32> 
          %161 = llvm.shufflevector %154, %154 [42, 43, 44, 45, 46, 47, 48] : vector<224xf32> 
          %162 = llvm.shufflevector %154, %154 [49, 50, 51, 52, 53, 54, 55] : vector<224xf32> 
          %163 = llvm.shufflevector %154, %154 [56, 57, 58, 59, 60, 61, 62] : vector<224xf32> 
          %164 = llvm.shufflevector %154, %154 [63, 64, 65, 66, 67, 68, 69] : vector<224xf32> 
          %165 = llvm.shufflevector %154, %154 [70, 71, 72, 73, 74, 75, 76] : vector<224xf32> 
          %166 = llvm.shufflevector %154, %154 [77, 78, 79, 80, 81, 82, 83] : vector<224xf32> 
          %167 = llvm.shufflevector %154, %154 [84, 85, 86, 87, 88, 89, 90] : vector<224xf32> 
          %168 = llvm.shufflevector %154, %154 [91, 92, 93, 94, 95, 96, 97] : vector<224xf32> 
          %169 = llvm.shufflevector %154, %154 [98, 99, 100, 101, 102, 103, 104] : vector<224xf32> 
          %170 = llvm.shufflevector %154, %154 [105, 106, 107, 108, 109, 110, 111] : vector<224xf32> 
          %171 = llvm.shufflevector %154, %154 [112, 113, 114, 115, 116, 117, 118] : vector<224xf32> 
          %172 = llvm.shufflevector %154, %154 [119, 120, 121, 122, 123, 124, 125] : vector<224xf32> 
          %173 = llvm.shufflevector %154, %154 [126, 127, 128, 129, 130, 131, 132] : vector<224xf32> 
          %174 = llvm.shufflevector %154, %154 [133, 134, 135, 136, 137, 138, 139] : vector<224xf32> 
          %175 = llvm.shufflevector %154, %154 [140, 141, 142, 143, 144, 145, 146] : vector<224xf32> 
          %176 = llvm.shufflevector %154, %154 [147, 148, 149, 150, 151, 152, 153] : vector<224xf32> 
          %177 = llvm.shufflevector %154, %154 [154, 155, 156, 157, 158, 159, 160] : vector<224xf32> 
          %178 = llvm.shufflevector %154, %154 [161, 162, 163, 164, 165, 166, 167] : vector<224xf32> 
          %179 = llvm.shufflevector %154, %154 [168, 169, 170, 171, 172, 173, 174] : vector<224xf32> 
          %180 = llvm.shufflevector %154, %154 [175, 176, 177, 178, 179, 180, 181] : vector<224xf32> 
          %181 = llvm.shufflevector %154, %154 [182, 183, 184, 185, 186, 187, 188] : vector<224xf32> 
          %182 = llvm.shufflevector %154, %154 [189, 190, 191, 192, 193, 194, 195] : vector<224xf32> 
          %183 = llvm.shufflevector %154, %154 [196, 197, 198, 199, 200, 201, 202] : vector<224xf32> 
          %184 = llvm.shufflevector %154, %154 [203, 204, 205, 206, 207, 208, 209] : vector<224xf32> 
          %185 = llvm.shufflevector %154, %154 [210, 211, 212, 213, 214, 215, 216] : vector<224xf32> 
          %186 = llvm.shufflevector %154, %154 [217, 218, 219, 220, 221, 222, 223] : vector<224xf32> 
          %187 = llvm.icmp "sgt" %84, %47 : i64
          %188 = llvm.select %187, %33, %32 : i1, vector<7xi1>
          %189 = llvm.icmp "sgt" %84, %48 : i64
          %190 = llvm.select %189, %33, %32 : i1, vector<7xi1>
          %191 = llvm.icmp "sgt" %84, %46 : i64
          %192 = llvm.select %191, %33, %32 : i1, vector<7xi1>
          %193 = llvm.icmp "sgt" %84, %42 : i64
          %194 = llvm.select %193, %33, %32 : i1, vector<7xi1>
          %195 = llvm.icmp "sgt" %84, %41 : i64
          %196 = llvm.select %195, %33, %32 : i1, vector<7xi1>
          %197 = llvm.icmp "sgt" %84, %40 : i64
          %198 = llvm.select %197, %33, %32 : i1, vector<7xi1>
          %199 = llvm.icmp "sgt" %84, %39 : i64
          %200 = llvm.select %199, %33, %32 : i1, vector<7xi1>
          %201 = llvm.icmp "sgt" %84, %43 : i64
          %202 = llvm.select %201, %33, %32 : i1, vector<7xi1>
          %203 = llvm.icmp "sgt" %84, %31 : i64
          %204 = llvm.select %203, %33, %32 : i1, vector<7xi1>
          %205 = llvm.icmp "sgt" %84, %30 : i64
          %206 = llvm.select %205, %33, %32 : i1, vector<7xi1>
          %207 = llvm.icmp "sgt" %84, %29 : i64
          %208 = llvm.select %207, %33, %32 : i1, vector<7xi1>
          %209 = llvm.icmp "sgt" %84, %28 : i64
          %210 = llvm.select %209, %33, %32 : i1, vector<7xi1>
          %211 = llvm.icmp "sgt" %84, %27 : i64
          %212 = llvm.select %211, %33, %32 : i1, vector<7xi1>
          %213 = llvm.icmp "sgt" %84, %26 : i64
          %214 = llvm.select %213, %33, %32 : i1, vector<7xi1>
          %215 = llvm.icmp "sgt" %84, %25 : i64
          %216 = llvm.select %215, %33, %32 : i1, vector<7xi1>
          %217 = llvm.icmp "sgt" %84, %24 : i64
          %218 = llvm.select %217, %33, %32 : i1, vector<7xi1>
          %219 = llvm.icmp "sgt" %84, %23 : i64
          %220 = llvm.select %219, %33, %32 : i1, vector<7xi1>
          %221 = llvm.icmp "sgt" %84, %22 : i64
          %222 = llvm.select %221, %33, %32 : i1, vector<7xi1>
          %223 = llvm.icmp "sgt" %84, %21 : i64
          %224 = llvm.select %223, %33, %32 : i1, vector<7xi1>
          %225 = llvm.icmp "sgt" %84, %20 : i64
          %226 = llvm.select %225, %33, %32 : i1, vector<7xi1>
          %227 = llvm.icmp "sgt" %84, %19 : i64
          %228 = llvm.select %227, %33, %32 : i1, vector<7xi1>
          %229 = llvm.icmp "sgt" %84, %18 : i64
          %230 = llvm.select %229, %33, %32 : i1, vector<7xi1>
          %231 = llvm.icmp "sgt" %84, %17 : i64
          %232 = llvm.select %231, %33, %32 : i1, vector<7xi1>
          %233 = llvm.icmp "sgt" %84, %16 : i64
          %234 = llvm.select %233, %33, %32 : i1, vector<7xi1>
          %235 = llvm.icmp "sgt" %84, %15 : i64
          %236 = llvm.select %235, %33, %32 : i1, vector<7xi1>
          %237 = llvm.icmp "sgt" %84, %14 : i64
          %238 = llvm.select %237, %33, %32 : i1, vector<7xi1>
          %239 = llvm.icmp "sgt" %84, %13 : i64
          %240 = llvm.select %239, %33, %32 : i1, vector<7xi1>
          %241 = llvm.icmp "sgt" %84, %12 : i64
          %242 = llvm.select %241, %33, %32 : i1, vector<7xi1>
          %243 = llvm.icmp "sgt" %84, %11 : i64
          %244 = llvm.select %243, %33, %32 : i1, vector<7xi1>
          %245 = llvm.icmp "sgt" %84, %10 : i64
          %246 = llvm.select %245, %33, %32 : i1, vector<7xi1>
          %247 = llvm.icmp "sgt" %84, %9 : i64
          %248 = llvm.select %247, %33, %32 : i1, vector<7xi1>
          %249 = llvm.icmp "sgt" %84, %8 : i64
          %250 = llvm.select %249, %33, %32 : i1, vector<7xi1>
          %251 = llvm.add %67, %80 : i64
          %252 = llvm.mul %78, %1 : i64
          %253 = llvm.mul %251, %45 : i64
          %254 = llvm.add %252, %253 : i64
          %255 = llvm.add %254, %91 : i64
          %256 = llvm.getelementptr %63[%255] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %155, %256, %188 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %257 = llvm.add %251, %48 : i64
          %258 = llvm.mul %257, %45 : i64
          %259 = llvm.add %252, %258 : i64
          %260 = llvm.add %259, %91 : i64
          %261 = llvm.getelementptr %63[%260] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %156, %261, %190 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %262 = llvm.add %251, %46 : i64
          %263 = llvm.mul %262, %45 : i64
          %264 = llvm.add %252, %263 : i64
          %265 = llvm.add %264, %91 : i64
          %266 = llvm.getelementptr %63[%265] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %157, %266, %192 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %267 = llvm.add %251, %42 : i64
          %268 = llvm.mul %267, %45 : i64
          %269 = llvm.add %252, %268 : i64
          %270 = llvm.add %269, %91 : i64
          %271 = llvm.getelementptr %63[%270] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %158, %271, %194 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %272 = llvm.add %251, %41 : i64
          %273 = llvm.mul %272, %45 : i64
          %274 = llvm.add %252, %273 : i64
          %275 = llvm.add %274, %91 : i64
          %276 = llvm.getelementptr %63[%275] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %159, %276, %196 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %277 = llvm.add %251, %40 : i64
          %278 = llvm.mul %277, %45 : i64
          %279 = llvm.add %252, %278 : i64
          %280 = llvm.add %279, %91 : i64
          %281 = llvm.getelementptr %63[%280] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %160, %281, %198 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %282 = llvm.add %251, %39 : i64
          %283 = llvm.mul %282, %45 : i64
          %284 = llvm.add %252, %283 : i64
          %285 = llvm.add %284, %91 : i64
          %286 = llvm.getelementptr %63[%285] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %161, %286, %200 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %287 = llvm.add %251, %43 : i64
          %288 = llvm.mul %287, %45 : i64
          %289 = llvm.add %252, %288 : i64
          %290 = llvm.add %289, %91 : i64
          %291 = llvm.getelementptr %63[%290] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %162, %291, %202 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %292 = llvm.add %251, %31 : i64
          %293 = llvm.mul %292, %45 : i64
          %294 = llvm.add %252, %293 : i64
          %295 = llvm.add %294, %91 : i64
          %296 = llvm.getelementptr %63[%295] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %163, %296, %204 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %297 = llvm.add %251, %30 : i64
          %298 = llvm.mul %297, %45 : i64
          %299 = llvm.add %252, %298 : i64
          %300 = llvm.add %299, %91 : i64
          %301 = llvm.getelementptr %63[%300] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %164, %301, %206 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %302 = llvm.add %251, %29 : i64
          %303 = llvm.mul %302, %45 : i64
          %304 = llvm.add %252, %303 : i64
          %305 = llvm.add %304, %91 : i64
          %306 = llvm.getelementptr %63[%305] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %165, %306, %208 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %307 = llvm.add %251, %28 : i64
          %308 = llvm.mul %307, %45 : i64
          %309 = llvm.add %252, %308 : i64
          %310 = llvm.add %309, %91 : i64
          %311 = llvm.getelementptr %63[%310] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %166, %311, %210 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %312 = llvm.add %251, %27 : i64
          %313 = llvm.mul %312, %45 : i64
          %314 = llvm.add %252, %313 : i64
          %315 = llvm.add %314, %91 : i64
          %316 = llvm.getelementptr %63[%315] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %167, %316, %212 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %317 = llvm.add %251, %26 : i64
          %318 = llvm.mul %317, %45 : i64
          %319 = llvm.add %252, %318 : i64
          %320 = llvm.add %319, %91 : i64
          %321 = llvm.getelementptr %63[%320] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %168, %321, %214 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %322 = llvm.add %251, %25 : i64
          %323 = llvm.mul %322, %45 : i64
          %324 = llvm.add %252, %323 : i64
          %325 = llvm.add %324, %91 : i64
          %326 = llvm.getelementptr %63[%325] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %169, %326, %216 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %327 = llvm.add %251, %24 : i64
          %328 = llvm.mul %327, %45 : i64
          %329 = llvm.add %252, %328 : i64
          %330 = llvm.add %329, %91 : i64
          %331 = llvm.getelementptr %63[%330] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %170, %331, %218 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %332 = llvm.add %251, %23 : i64
          %333 = llvm.mul %332, %45 : i64
          %334 = llvm.add %252, %333 : i64
          %335 = llvm.add %334, %91 : i64
          %336 = llvm.getelementptr %63[%335] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %171, %336, %220 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %337 = llvm.add %251, %22 : i64
          %338 = llvm.mul %337, %45 : i64
          %339 = llvm.add %252, %338 : i64
          %340 = llvm.add %339, %91 : i64
          %341 = llvm.getelementptr %63[%340] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %172, %341, %222 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %342 = llvm.add %251, %21 : i64
          %343 = llvm.mul %342, %45 : i64
          %344 = llvm.add %252, %343 : i64
          %345 = llvm.add %344, %91 : i64
          %346 = llvm.getelementptr %63[%345] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %173, %346, %224 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %347 = llvm.add %251, %20 : i64
          %348 = llvm.mul %347, %45 : i64
          %349 = llvm.add %252, %348 : i64
          %350 = llvm.add %349, %91 : i64
          %351 = llvm.getelementptr %63[%350] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %174, %351, %226 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %352 = llvm.add %251, %19 : i64
          %353 = llvm.mul %352, %45 : i64
          %354 = llvm.add %252, %353 : i64
          %355 = llvm.add %354, %91 : i64
          %356 = llvm.getelementptr %63[%355] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %175, %356, %228 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %357 = llvm.add %251, %18 : i64
          %358 = llvm.mul %357, %45 : i64
          %359 = llvm.add %252, %358 : i64
          %360 = llvm.add %359, %91 : i64
          %361 = llvm.getelementptr %63[%360] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %176, %361, %230 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %362 = llvm.add %251, %17 : i64
          %363 = llvm.mul %362, %45 : i64
          %364 = llvm.add %252, %363 : i64
          %365 = llvm.add %364, %91 : i64
          %366 = llvm.getelementptr %63[%365] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %177, %366, %232 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %367 = llvm.add %251, %16 : i64
          %368 = llvm.mul %367, %45 : i64
          %369 = llvm.add %252, %368 : i64
          %370 = llvm.add %369, %91 : i64
          %371 = llvm.getelementptr %63[%370] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %178, %371, %234 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %372 = llvm.add %251, %15 : i64
          %373 = llvm.mul %372, %45 : i64
          %374 = llvm.add %252, %373 : i64
          %375 = llvm.add %374, %91 : i64
          %376 = llvm.getelementptr %63[%375] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %179, %376, %236 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %377 = llvm.add %251, %14 : i64
          %378 = llvm.mul %377, %45 : i64
          %379 = llvm.add %252, %378 : i64
          %380 = llvm.add %379, %91 : i64
          %381 = llvm.getelementptr %63[%380] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %180, %381, %238 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %382 = llvm.add %251, %13 : i64
          %383 = llvm.mul %382, %45 : i64
          %384 = llvm.add %252, %383 : i64
          %385 = llvm.add %384, %91 : i64
          %386 = llvm.getelementptr %63[%385] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %181, %386, %240 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %387 = llvm.add %251, %12 : i64
          %388 = llvm.mul %387, %45 : i64
          %389 = llvm.add %252, %388 : i64
          %390 = llvm.add %389, %91 : i64
          %391 = llvm.getelementptr %63[%390] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %182, %391, %242 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %392 = llvm.add %251, %11 : i64
          %393 = llvm.mul %392, %45 : i64
          %394 = llvm.add %252, %393 : i64
          %395 = llvm.add %394, %91 : i64
          %396 = llvm.getelementptr %63[%395] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %183, %396, %244 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %397 = llvm.add %251, %10 : i64
          %398 = llvm.mul %397, %45 : i64
          %399 = llvm.add %252, %398 : i64
          %400 = llvm.add %399, %91 : i64
          %401 = llvm.getelementptr %63[%400] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %184, %401, %246 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %402 = llvm.add %251, %9 : i64
          %403 = llvm.mul %402, %45 : i64
          %404 = llvm.add %252, %403 : i64
          %405 = llvm.add %404, %91 : i64
          %406 = llvm.getelementptr %63[%405] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %185, %406, %248 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %407 = llvm.add %251, %8 : i64
          %408 = llvm.mul %407, %45 : i64
          %409 = llvm.add %252, %408 : i64
          %410 = llvm.add %409, %91 : i64
          %411 = llvm.getelementptr %63[%410] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %186, %411, %250 {alignment = 4 : i32} : vector<7xf32>, vector<7xi1> into !llvm.ptr
          %412 = llvm.add %91, %43 : i64
          llvm.br ^bb4(%412 : i64)
        ^bb6:  // pred: ^bb4
          %413 = llvm.add %80, %44 : i64
          llvm.br ^bb2(%413 : i64)
        ^bb7:  // pred: ^bb2
          %414 = llvm.add %78, %48 : i64
          llvm.br ^bb1(%414 : i64)
        ^bb8:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_60_embedded_elf_riscv_64_main_graph$async_dispatch_60_unpack_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_60_embedded_elf_riscv_64_main_graph$async_dispatch_60_unpack_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_60_embedded_elf_riscv_64_main_graph$async_dispatch_60_unpack_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_60_embedded_elf_riscv_64_main_graph$async_dispatch_60_unpack_f32_buffer = util.global.load immutable @main_graph$async_dispatch_60_embedded_elf_riscv_64_main_graph$async_dispatch_60_unpack_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_60::@embedded_elf_riscv_64::@main_graph$async_dispatch_60_unpack_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_60) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_60::@embedded_elf_riscv_64::@main_graph$async_dispatch_60_unpack_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_60_embedded_elf_riscv_64_main_graph$async_dispatch_60_unpack_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_60_embedded_elf_riscv_64_main_graph$async_dispatch_60_unpack_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
