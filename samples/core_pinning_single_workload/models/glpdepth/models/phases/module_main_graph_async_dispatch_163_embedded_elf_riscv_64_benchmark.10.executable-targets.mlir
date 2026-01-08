#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_163 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_163_conv_7x7x1024x3x3_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c32 = arith.constant 32 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c32, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_163_conv_7x7x1024x3x3_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(0 : i64) : i64
          %2 = llvm.mlir.constant(7168 : index) : i64
          %3 = llvm.mlir.constant(64 : index) : i64
          %4 = llvm.mlir.constant(true) : i1
          %5 = llvm.mlir.constant(81 : index) : i64
          %6 = llvm.mlir.constant(9 : index) : i64
          %7 = llvm.mlir.constant(1024 : index) : i64
          %8 = llvm.mlir.constant(8 : i64) : i64
          %9 = llvm.mlir.constant(32 : i64) : i64
          %10 = llvm.mlir.constant(5.000000e-01 : f32) : f32
          %11 = llvm.mlir.constant(1.000000e+00 : f32) : f32
          %12 = llvm.mlir.constant(dense<3.750000e+00> : vector<1xf32>) : vector<1xf32>
          %13 = llvm.mlir.constant(dense<2.000000e+00> : vector<1xf32>) : vector<1xf32>
          %14 = llvm.mlir.constant(dense<8.000000e-01> : vector<1xf32>) : vector<1xf32>
          %15 = llvm.mlir.constant(dense<0.0821908935> : vector<1xf32>) : vector<1xf32>
          %16 = llvm.mlir.constant(dense<-0.583389878> : vector<1xf32>) : vector<1xf32>
          %17 = llvm.mlir.constant(dense<1.62705934> : vector<1xf32>) : vector<1xf32>
          %18 = llvm.mlir.constant(dense<-2.0606916> : vector<1xf32>) : vector<1xf32>
          %19 = llvm.mlir.constant(dense<0.0572442785> : vector<1xf32>) : vector<1xf32>
          %20 = llvm.mlir.constant(dense<-0.0883462652> : vector<1xf32>) : vector<1xf32>
          %21 = llvm.mlir.constant(dense<0.448369086> : vector<1xf32>) : vector<1xf32>
          %22 = llvm.mlir.constant(dense<-3.276070e-01> : vector<1xf32>) : vector<1xf32>
          %23 = llvm.mlir.constant(dense<0.0739796459> : vector<1xf32>) : vector<1xf32>
          %24 = llvm.mlir.constant(dense<-0.131808966> : vector<1xf32>) : vector<1xf32>
          %25 = llvm.mlir.constant(dense<0.519230127> : vector<1xf32>) : vector<1xf32>
          %26 = llvm.mlir.constant(dense<-0.463513821> : vector<1xf32>) : vector<1xf32>
          %27 = llvm.mlir.constant(dense<-1.71048032E-5> : vector<1xf32>) : vector<1xf32>
          %28 = llvm.mlir.constant(dense<2.53447099E-4> : vector<1xf32>) : vector<1xf32>
          %29 = llvm.mlir.constant(dense<-0.00141373626> : vector<1xf32>) : vector<1xf32>
          %30 = llvm.mlir.constant(dense<0.00351961935> : vector<1xf32>) : vector<1xf32>
          %31 = llvm.mlir.constant(dense<-0.00330093061> : vector<1xf32>) : vector<1xf32>
          %32 = llvm.mlir.constant(dense<0.0370645523> : vector<1xf32>) : vector<1xf32>
          %33 = llvm.mlir.constant(dense<0.118407398> : vector<1xf32>) : vector<1xf32>
          %34 = llvm.mlir.constant(dense<-0.364721417> : vector<1xf32>) : vector<1xf32>
          %35 = llvm.mlir.constant(dense<1.12750685> : vector<1xf32>) : vector<1xf32>
          %36 = llvm.mlir.constant(dense<0.0258146804> : vector<1xf32>) : vector<1xf32>
          %37 = llvm.mlir.constant(dense<0.209741712> : vector<1xf32>) : vector<1xf32>
          %38 = llvm.mlir.constant(dense<-0.523018539> : vector<1xf32>) : vector<1xf32>
          %39 = llvm.mlir.constant(dense<1.12837911> : vector<1xf32>) : vector<1xf32>
          %40 = llvm.mlir.constant(dense<0.000000e+00> : vector<1xf32>) : vector<1xf32>
          %41 = llvm.mlir.constant(dense<1.000000e+00> : vector<1xf32>) : vector<1xf32>
          %42 = llvm.mlir.constant(dense<1.41421354> : vector<1xf32>) : vector<1xf32>
          %43 = llvm.mlir.constant(dense<0.000000e+00> : vector<7xf32>) : vector<7xf32>
          %44 = llvm.mlir.constant(1335296 : index) : i64
          %45 = llvm.mlir.constant(1003520 : index) : i64
          %46 = llvm.mlir.constant(0 : index) : i64
          %47 = llvm.mlir.constant(7 : index) : i64
          %48 = llvm.mlir.constant(3 : index) : i64
          %49 = llvm.mlir.constant(1 : index) : i64
          %50 = llvm.mlir.constant(32 : index) : i64
          %51 = llvm.alloca %47 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %52 = llvm.alloca %47 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %53 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %54 = llvm.extractvalue %53[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %55 = llvm.load %54 : !llvm.ptr -> i32
          %56 = llvm.zext %55 : i32 to i64
          %57 = llvm.extractvalue %53[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %58 = llvm.load %57 : !llvm.ptr -> !llvm.ptr
          %59 = llvm.mul %45, %8 : i64
          %60 = llvm.udiv %59, %9 : i64
          %61 = llvm.getelementptr %58[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%61, %3 : !llvm.ptr, i64)] : i1
          %62 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %63 = llvm.extractvalue %62[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %64 = llvm.getelementptr %63[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %65 = llvm.load %64 : !llvm.ptr -> !llvm.ptr
          %66 = llvm.mul %56, %8 : i64
          %67 = llvm.udiv %66, %9 : i64
          %68 = llvm.getelementptr %65[%67] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%68, %3 : !llvm.ptr, i64)] : i1
          %69 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %70 = llvm.extractvalue %69[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %71 = llvm.getelementptr %70[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %72 = llvm.load %71 : !llvm.ptr -> !llvm.ptr
          %73 = llvm.mul %44, %8 : i64
          %74 = llvm.udiv %73, %9 : i64
          %75 = llvm.getelementptr %72[%74] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%75, %3 : !llvm.ptr, i64)] : i1
          %76 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %77 = llvm.extractvalue %76[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %78 = llvm.zext %77 : i32 to i64
          %79 = llvm.mul %78, %50 overflow<nsw> : i64
          %80 = llvm.mul %46, %47 : i64
          %81 = llvm.add %80, %80 : i64
          %82 = llvm.add %81, %46 : i64
          %83 = llvm.getelementptr %52[%82] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %43, %83 {alignment = 4 : i64} : vector<7xf32>, !llvm.ptr
          llvm.br ^bb1(%46 : i64)
        ^bb1(%84: i64):  // 2 preds: ^bb0, ^bb16
          %85 = llvm.icmp "slt" %84, %47 : i64
          llvm.cond_br %85, ^bb2(%46 : i64), ^bb17
        ^bb2(%86: i64):  // 2 preds: ^bb1, ^bb15
          %87 = llvm.icmp "slt" %86, %50 : i64
          llvm.cond_br %87, ^bb3, ^bb16
        ^bb3:  // pred: ^bb2
          %88 = llvm.add %86, %79 : i64
          llvm.br ^bb4(%46 : i64)
        ^bb4(%89: i64):  // 2 preds: ^bb3, ^bb5
          %90 = llvm.icmp "slt" %89, %47 : i64
          llvm.cond_br %90, ^bb5, ^bb6(%46 : i64)
        ^bb5:  // pred: ^bb4
          %91 = llvm.mul %46, %47 overflow<nsw, nuw> : i64
          %92 = llvm.add %91, %91 overflow<nsw, nuw> : i64
          %93 = llvm.add %92, %89 overflow<nsw, nuw> : i64
          %94 = llvm.getelementptr inbounds|nuw %52[%93] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %95 = llvm.load %94 : !llvm.ptr -> f32
          %96 = llvm.getelementptr inbounds|nuw %51[%93] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %95, %96 : f32, !llvm.ptr
          %97 = llvm.add %89, %49 : i64
          llvm.br ^bb4(%97 : i64)
        ^bb6(%98: i64):  // 2 preds: ^bb4, ^bb12
          %99 = llvm.icmp "slt" %98, %48 : i64
          llvm.cond_br %99, ^bb7, ^bb13(%46 : i64)
        ^bb7:  // pred: ^bb6
          %100 = llvm.add %98, %84 : i64
          llvm.br ^bb8(%46 : i64)
        ^bb8(%101: i64):  // 2 preds: ^bb7, ^bb11
          %102 = llvm.icmp "slt" %101, %47 : i64
          llvm.cond_br %102, ^bb9(%46 : i64), ^bb12
        ^bb9(%103: i64):  // 2 preds: ^bb8, ^bb10
          %104 = llvm.icmp "slt" %103, %48 : i64
          llvm.cond_br %104, ^bb10, ^bb11
        ^bb10:  // pred: ^bb9
          %105 = llvm.add %101, %103 : i64
          %106 = llvm.mul %88, %5 overflow<nsw, nuw> : i64
          %107 = llvm.mul %100, %6 overflow<nsw, nuw> : i64
          %108 = llvm.add %106, %107 overflow<nsw, nuw> : i64
          %109 = llvm.add %108, %105 overflow<nsw, nuw> : i64
          %110 = llvm.getelementptr inbounds|nuw %61[%109] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %111 = llvm.load %110 : !llvm.ptr -> f32
          %112 = llvm.mul %88, %6 overflow<nsw, nuw> : i64
          %113 = llvm.mul %98, %48 overflow<nsw, nuw> : i64
          %114 = llvm.add %112, %113 overflow<nsw, nuw> : i64
          %115 = llvm.add %114, %103 overflow<nsw, nuw> : i64
          %116 = llvm.getelementptr inbounds|nuw %68[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %117 = llvm.load %116 : !llvm.ptr -> f32
          %118 = llvm.mul %46, %47 overflow<nsw, nuw> : i64
          %119 = llvm.add %118, %118 overflow<nsw, nuw> : i64
          %120 = llvm.add %119, %101 overflow<nsw, nuw> : i64
          %121 = llvm.getelementptr inbounds|nuw %51[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %122 = llvm.load %121 : !llvm.ptr -> f32
          %123 = llvm.fmul %111, %117 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %124 = llvm.fadd %122, %123 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %124, %121 : f32, !llvm.ptr
          %125 = llvm.add %103, %49 : i64
          llvm.br ^bb9(%125 : i64)
        ^bb11:  // pred: ^bb9
          %126 = llvm.add %101, %49 : i64
          llvm.br ^bb8(%126 : i64)
        ^bb12:  // pred: ^bb8
          %127 = llvm.add %98, %49 : i64
          llvm.br ^bb6(%127 : i64)
        ^bb13(%128: i64):  // 2 preds: ^bb6, ^bb14
          %129 = llvm.icmp "slt" %128, %47 : i64
          llvm.cond_br %129, ^bb14, ^bb15
        ^bb14:  // pred: ^bb13
          %130 = llvm.add %81, %128 : i64
          %131 = llvm.getelementptr %51[%130] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %132 = llvm.load %131 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %133 = llvm.fdiv %132, %42 : vector<1xf32>
          %134 = llvm.fcmp "olt" %133, %40 : vector<1xf32>
          %135 = llvm.fneg %133 {fastmathFlags = #llvm.fastmath<contract>} : vector<1xf32>
          %136 = llvm.select %134, %135, %133 : vector<1xi1>, vector<1xf32>
          %137 = llvm.fcmp "olt" %136, %14 : vector<1xf32>
          %138 = llvm.select %137, %39, %35 : vector<1xi1>, vector<1xf32>
          %139 = llvm.select %137, %26, %22 : vector<1xi1>, vector<1xf32>
          %140 = llvm.select %137, %38, %34 : vector<1xi1>, vector<1xf32>
          %141 = llvm.select %137, %25, %21 : vector<1xi1>, vector<1xf32>
          %142 = llvm.select %137, %37, %33 : vector<1xi1>, vector<1xf32>
          %143 = llvm.select %137, %24, %20 : vector<1xi1>, vector<1xf32>
          %144 = llvm.select %137, %36, %32 : vector<1xi1>, vector<1xf32>
          %145 = llvm.select %137, %23, %19 : vector<1xi1>, vector<1xf32>
          %146 = llvm.fcmp "olt" %136, %13 : vector<1xf32>
          %147 = llvm.select %146, %40, %31 : vector<1xi1>, vector<1xf32>
          %148 = llvm.select %146, %138, %30 : vector<1xi1>, vector<1xf32>
          %149 = llvm.select %146, %139, %18 : vector<1xi1>, vector<1xf32>
          %150 = llvm.select %146, %140, %29 : vector<1xi1>, vector<1xf32>
          %151 = llvm.select %146, %141, %17 : vector<1xi1>, vector<1xf32>
          %152 = llvm.select %146, %142, %28 : vector<1xi1>, vector<1xf32>
          %153 = llvm.select %146, %143, %16 : vector<1xi1>, vector<1xf32>
          %154 = llvm.select %146, %144, %27 : vector<1xi1>, vector<1xf32>
          %155 = llvm.select %146, %145, %15 : vector<1xi1>, vector<1xf32>
          %156 = llvm.select %146, %40, %41 : vector<1xi1>, vector<1xf32>
          %157 = llvm.fcmp "ult" %136, %12 : vector<1xf32>
          %158 = llvm.intr.fma(%136, %154, %152) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %159 = llvm.intr.fma(%136, %158, %150) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %160 = llvm.intr.fma(%136, %159, %148) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %161 = llvm.intr.fma(%136, %160, %147) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %162 = llvm.intr.fma(%136, %155, %153) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %163 = llvm.intr.fma(%136, %162, %151) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %164 = llvm.intr.fma(%136, %163, %149) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %165 = llvm.intr.fma(%136, %164, %41) : (vector<1xf32>, vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          %166 = llvm.fdiv %161, %165 : vector<1xf32>
          %167 = llvm.fadd %156, %166 {fastmathFlags = #llvm.fastmath<contract>} : vector<1xf32>
          %168 = llvm.select %157, %167, %41 : vector<1xi1>, vector<1xf32>
          %169 = llvm.fneg %168 {fastmathFlags = #llvm.fastmath<contract>} : vector<1xf32>
          %170 = llvm.select %134, %169, %168 : vector<1xi1>, vector<1xf32>
          %171 = llvm.extractelement %170[%1 : i64] : vector<1xf32>
          %172 = llvm.fadd %171, %11 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %173 = llvm.fmul %172, %10 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %174 = llvm.extractelement %132[%1 : i64] : vector<1xf32>
          %175 = llvm.fmul %174, %173 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %176 = llvm.mul %84, %2 overflow<nsw, nuw> : i64
          %177 = llvm.mul %128, %7 overflow<nsw, nuw> : i64
          %178 = llvm.add %176, %177 overflow<nsw, nuw> : i64
          %179 = llvm.add %178, %88 overflow<nsw, nuw> : i64
          %180 = llvm.getelementptr inbounds|nuw %75[%179] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %175, %180 : f32, !llvm.ptr
          %181 = llvm.add %128, %49 : i64
          llvm.br ^bb13(%181 : i64)
        ^bb15:  // pred: ^bb13
          %182 = llvm.add %86, %49 : i64
          llvm.br ^bb2(%182 : i64)
        ^bb16:  // pred: ^bb2
          %183 = llvm.add %84, %49 : i64
          llvm.br ^bb1(%183 : i64)
        ^bb17:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_163_embedded_elf_riscv_64_main_graph$async_dispatch_163_conv_7x7x1024x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_163_embedded_elf_riscv_64_main_graph$async_dispatch_163_conv_7x7x1024x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_163_embedded_elf_riscv_64_main_graph$async_dispatch_163_conv_7x7x1024x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c13679488_i32 = arith.constant 13679488 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_163_embedded_elf_riscv_64_main_graph$async_dispatch_163_conv_7x7x1024x3x3_f32_buffer = util.global.load immutable @main_graph$async_dispatch_163_embedded_elf_riscv_64_main_graph$async_dispatch_163_conv_7x7x1024x3x3_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_163::@embedded_elf_riscv_64::@main_graph$async_dispatch_163_conv_7x7x1024x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_163) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_163::@embedded_elf_riscv_64::@main_graph$async_dispatch_163_conv_7x7x1024x3x3_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c13679488_i32]) bindings([
      (%main_graph$async_dispatch_163_embedded_elf_riscv_64_main_graph$async_dispatch_163_conv_7x7x1024x3x3_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_163_embedded_elf_riscv_64_main_graph$async_dispatch_163_conv_7x7x1024x3x3_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_163_embedded_elf_riscv_64_main_graph$async_dispatch_163_conv_7x7x1024x3x3_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
