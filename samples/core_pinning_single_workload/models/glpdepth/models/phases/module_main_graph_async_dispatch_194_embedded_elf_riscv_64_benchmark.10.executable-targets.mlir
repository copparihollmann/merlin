#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_194 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_194_conv_2x14x14x32x3x3_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c14 = arith.constant 14 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c14, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.mlir.global private constant @__constant_2xf32(dense<[0.0394474119, 0.0355349556]> : tensor<2xf32>) {addr_space = 0 : i32, alignment = 64 : i64, sym_visibility = "private"} : !llvm.array<2 x f32>
        llvm.func @main_graph$async_dispatch_194_conv_2x14x14x32x3x3_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i64) : i64
          %1 = llvm.mlir.constant(0 : i32) : i32
          %2 = llvm.mlir.poison : vector<8xi32>
          %3 = llvm.mlir.constant(196 : index) : i64
          %4 = llvm.mlir.constant(288 : index) : i64
          %5 = llvm.mlir.constant(9 : index) : i64
          %6 = llvm.mlir.constant(64 : index) : i64
          %7 = llvm.mlir.constant(true) : i1
          %8 = llvm.mlir.constant(256 : index) : i64
          %9 = llvm.mlir.constant(16 : index) : i64
          %10 = llvm.mlir.constant(8 : i64) : i64
          %11 = llvm.mlir.constant(32 : i64) : i64
          %12 = llvm.mlir.addressof @__constant_2xf32 : !llvm.ptr
          %13 = llvm.mlir.constant(-1 : index) : i64
          %14 = llvm.mlir.constant(dense<127> : vector<8xi32>) : vector<8xi32>
          %15 = llvm.mlir.constant(dense<23> : vector<8xi32>) : vector<8xi32>
          %16 = llvm.mlir.constant(dense<1.270000e+02> : vector<8xf32>) : vector<8xf32>
          %17 = llvm.mlir.constant(dense<-1.270000e+02> : vector<8xf32>) : vector<8xf32>
          %18 = llvm.mlir.constant(dense<8.880000e+01> : vector<8xf32>) : vector<8xf32>
          %19 = llvm.mlir.constant(dense<-8.780000e+01> : vector<8xf32>) : vector<8xf32>
          %20 = llvm.mlir.constant(dense<0.166666657> : vector<8xf32>) : vector<8xf32>
          %21 = llvm.mlir.constant(dense<0.0416657962> : vector<8xf32>) : vector<8xf32>
          %22 = llvm.mlir.constant(dense<0.00833345205> : vector<8xf32>) : vector<8xf32>
          %23 = llvm.mlir.constant(dense<0.00139819994> : vector<8xf32>) : vector<8xf32>
          %24 = llvm.mlir.constant(dense<1.98756912E-4> : vector<8xf32>) : vector<8xf32>
          %25 = llvm.mlir.constant(dense<2.12194442E-4> : vector<8xf32>) : vector<8xf32>
          %26 = llvm.mlir.constant(dense<-0.693359375> : vector<8xf32>) : vector<8xf32>
          %27 = llvm.mlir.constant(dense<1.44269502> : vector<8xf32>) : vector<8xf32>
          %28 = llvm.mlir.constant(dense<5.000000e-01> : vector<8xf32>) : vector<8xf32>
          %29 = llvm.mlir.constant(8 : index) : i64
          %30 = llvm.mlir.constant(14 : index) : i64
          %31 = llvm.mlir.constant(2 : index) : i64
          %32 = llvm.mlir.constant(1 : index) : i64
          %33 = llvm.mlir.constant(3 : index) : i64
          %34 = llvm.mlir.constant(32 : index) : i64
          %35 = llvm.mlir.constant(0 : index) : i64
          %36 = llvm.mlir.constant(7 : index) : i64
          %37 = llvm.mlir.poison : vector<8xf32>
          %38 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %39 = llvm.mlir.constant(dense<1.000000e+00> : vector<8xf32>) : vector<8xf32>
          %40 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %41 = llvm.mlir.constant(565248 : index) : i64
          %42 = llvm.mlir.constant(9394432 : index) : i64
          %43 = llvm.mlir.constant(532480 : index) : i64
          %44 = llvm.getelementptr %12[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x f32>
          %45 = llvm.alloca %29 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %46 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %47 = llvm.extractvalue %46[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %48 = llvm.load %47 : !llvm.ptr -> !llvm.ptr
          %49 = llvm.mul %43, %10 : i64
          %50 = llvm.udiv %49, %11 : i64
          %51 = llvm.getelementptr %48[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%51, %6 : !llvm.ptr, i64)] : i1
          %52 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %53 = llvm.extractvalue %52[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %54 = llvm.getelementptr %53[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %55 = llvm.load %54 : !llvm.ptr -> !llvm.ptr
          %56 = llvm.mul %42, %10 : i64
          %57 = llvm.udiv %56, %11 : i64
          %58 = llvm.getelementptr %55[%57] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%58, %6 : !llvm.ptr, i64)] : i1
          %59 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %60 = llvm.extractvalue %59[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %61 = llvm.getelementptr %60[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %62 = llvm.load %61 : !llvm.ptr -> !llvm.ptr
          %63 = llvm.mul %41, %10 : i64
          %64 = llvm.udiv %63, %11 : i64
          %65 = llvm.getelementptr %62[%64] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%65, %6 : !llvm.ptr, i64)] : i1
          %66 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %67 = llvm.extractvalue %66[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %68 = llvm.zext %67 : i32 to i64
          %69 = llvm.sdiv %68, %36 : i64
          %70 = llvm.mul %69, %36 : i64
          %71 = llvm.icmp "ne" %68, %70 : i64
          %72 = llvm.icmp "slt" %68, %35 : i64
          %73 = llvm.and %71, %72 : i1
          %74 = llvm.add %69, %13 : i64
          %75 = llvm.select %73, %74, %69 : i1, i64
          %76 = llvm.srem %68, %36 : i64
          %77 = llvm.icmp "slt" %76, %35 : i64
          %78 = llvm.add %76, %36 overflow<nsw> : i64
          %79 = llvm.select %77, %78, %76 : i1, i64
          %80 = llvm.mul %79, %31 overflow<nsw> : i64
          %81 = llvm.getelementptr %44[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %82 = llvm.load %81 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          llvm.br ^bb1(%35 : i64)
        ^bb1(%83: i64):  // 2 preds: ^bb0, ^bb16
          %84 = llvm.icmp "slt" %83, %31 : i64
          llvm.cond_br %84, ^bb2(%35 : i64), ^bb17
        ^bb2(%85: i64):  // 2 preds: ^bb1, ^bb15
          %86 = llvm.icmp "slt" %85, %30 : i64
          llvm.cond_br %86, ^bb3, ^bb16
        ^bb3:  // pred: ^bb2
          %87 = llvm.sub %30, %85 : i64
          %88 = llvm.icmp "slt" %87, %29 : i64
          %89 = llvm.select %88, %87, %29 : i1, i64
          %90 = llvm.trunc %89 : i64 to i32
          %91 = llvm.insertelement %90, %2[%1 : i32] : vector<8xi32>
          %92 = llvm.shufflevector %91, %2 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %93 = llvm.icmp "sgt" %92, %38 : vector<8xi32>
          %94 = llvm.mul %35, %29 : i64
          %95 = llvm.add %94, %94 : i64
          %96 = llvm.add %95, %35 : i64
          %97 = llvm.getelementptr %45[%96] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %40, %97, %93 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          llvm.br ^bb4(%35 : i64)
        ^bb4(%98: i64):  // 2 preds: ^bb3, ^bb12
          %99 = llvm.icmp "slt" %98, %34 : i64
          llvm.cond_br %99, ^bb5(%35 : i64), ^bb13
        ^bb5(%100: i64):  // 2 preds: ^bb4, ^bb11
          %101 = llvm.icmp "slt" %100, %33 : i64
          llvm.cond_br %101, ^bb6, ^bb12
        ^bb6:  // pred: ^bb5
          %102 = llvm.add %100, %83 : i64
          %103 = llvm.add %102, %80 : i64
          llvm.br ^bb7(%35 : i64)
        ^bb7(%104: i64):  // 2 preds: ^bb6, ^bb10
          %105 = llvm.icmp "slt" %104, %89 : i64
          llvm.cond_br %105, ^bb8(%35 : i64), ^bb11
        ^bb8(%106: i64):  // 2 preds: ^bb7, ^bb9
          %107 = llvm.icmp "slt" %106, %33 : i64
          llvm.cond_br %107, ^bb9, ^bb10
        ^bb9:  // pred: ^bb8
          %108 = llvm.add %85, %104 : i64
          %109 = llvm.add %108, %106 : i64
          %110 = llvm.mul %98, %8 overflow<nsw, nuw> : i64
          %111 = llvm.mul %103, %9 overflow<nsw, nuw> : i64
          %112 = llvm.add %110, %111 overflow<nsw, nuw> : i64
          %113 = llvm.add %112, %109 overflow<nsw, nuw> : i64
          %114 = llvm.getelementptr inbounds|nuw %51[%113] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %115 = llvm.load %114 : !llvm.ptr -> f32
          %116 = llvm.mul %75, %4 overflow<nsw, nuw> : i64
          %117 = llvm.mul %98, %5 overflow<nsw, nuw> : i64
          %118 = llvm.add %116, %117 overflow<nsw, nuw> : i64
          %119 = llvm.mul %100, %33 overflow<nsw, nuw> : i64
          %120 = llvm.add %118, %119 overflow<nsw, nuw> : i64
          %121 = llvm.add %120, %106 overflow<nsw, nuw> : i64
          %122 = llvm.getelementptr inbounds|nuw %58[%121] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %123 = llvm.load %122 : !llvm.ptr -> f32
          %124 = llvm.mul %35, %29 overflow<nsw, nuw> : i64
          %125 = llvm.add %124, %124 overflow<nsw, nuw> : i64
          %126 = llvm.add %125, %104 overflow<nsw, nuw> : i64
          %127 = llvm.getelementptr inbounds|nuw %45[%126] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %128 = llvm.load %127 : !llvm.ptr -> f32
          %129 = llvm.fmul %115, %123 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %130 = llvm.fadd %128, %129 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %130, %127 : f32, !llvm.ptr
          %131 = llvm.add %106, %32 : i64
          llvm.br ^bb8(%131 : i64)
        ^bb10:  // pred: ^bb8
          %132 = llvm.add %104, %32 : i64
          llvm.br ^bb7(%132 : i64)
        ^bb11:  // pred: ^bb7
          %133 = llvm.add %100, %32 : i64
          llvm.br ^bb5(%133 : i64)
        ^bb12:  // pred: ^bb5
          %134 = llvm.add %98, %32 : i64
          llvm.br ^bb4(%134 : i64)
        ^bb13:  // pred: ^bb4
          %135 = llvm.icmp "sgt" %89, %35 : i64
          llvm.cond_br %135, ^bb14, ^bb15
        ^bb14:  // pred: ^bb13
          %136 = llvm.intr.masked.load %97, %93, %37 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %137 = llvm.extractelement %82[%0 : i64] : vector<1xf32>
          %138 = llvm.insertelement %137, %37[%1 : i32] : vector<8xf32>
          %139 = llvm.shufflevector %138, %37 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %140 = llvm.fadd %136, %139 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %141 = llvm.fneg %140 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %142 = llvm.fcmp "uge" %141, %19 : vector<8xf32>
          %143 = llvm.select %142, %141, %19 : vector<8xi1>, vector<8xf32>
          %144 = llvm.fcmp "ule" %143, %18 : vector<8xf32>
          %145 = llvm.select %144, %143, %18 : vector<8xi1>, vector<8xf32>
          %146 = llvm.intr.fma(%145, %27, %28) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %147 = llvm.intr.floor(%146) : (vector<8xf32>) -> vector<8xf32>
          %148 = llvm.fcmp "uge" %147, %17 : vector<8xf32>
          %149 = llvm.select %148, %147, %17 : vector<8xi1>, vector<8xf32>
          %150 = llvm.fcmp "ule" %149, %16 : vector<8xf32>
          %151 = llvm.select %150, %149, %16 : vector<8xi1>, vector<8xf32>
          %152 = llvm.intr.fma(%26, %151, %145) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %153 = llvm.intr.fma(%25, %151, %152) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %154 = llvm.intr.fma(%153, %24, %23) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %155 = llvm.intr.fma(%154, %153, %22) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %156 = llvm.intr.fma(%155, %153, %21) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %157 = llvm.intr.fma(%156, %153, %20) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %158 = llvm.intr.fma(%157, %153, %28) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %159 = llvm.fmul %153, %153 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %160 = llvm.intr.fma(%158, %159, %153) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %161 = llvm.fadd %160, %39 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %162 = llvm.fptosi %151 : vector<8xf32> to vector<8xi32>
          %163 = llvm.add %162, %14 : vector<8xi32>
          %164 = llvm.shl %163, %15 : vector<8xi32>
          %165 = llvm.bitcast %164 : vector<8xi32> to vector<8xf32>
          %166 = llvm.fmul %161, %165 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %167 = llvm.fadd %166, %39 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %168 = llvm.fdiv %39, %167 : vector<8xf32>
          %169 = llvm.add %80, %83 : i64
          %170 = llvm.mul %75, %3 : i64
          %171 = llvm.mul %169, %30 : i64
          %172 = llvm.add %170, %171 : i64
          %173 = llvm.add %172, %85 : i64
          %174 = llvm.getelementptr %65[%173] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %168, %174, %93 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          llvm.br ^bb15
        ^bb15:  // 2 preds: ^bb13, ^bb14
          %175 = llvm.add %85, %29 : i64
          llvm.br ^bb2(%175 : i64)
        ^bb16:  // pred: ^bb2
          %176 = llvm.add %83, %32 : i64
          llvm.br ^bb1(%176 : i64)
        ^bb17:  // pred: ^bb1
          llvm.return %1 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_194_embedded_elf_riscv_64_main_graph$async_dispatch_194_conv_2x14x14x32x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_194_embedded_elf_riscv_64_main_graph$async_dispatch_194_conv_2x14x14x32x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_194_embedded_elf_riscv_64_main_graph$async_dispatch_194_conv_2x14x14x32x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_194_embedded_elf_riscv_64_main_graph$async_dispatch_194_conv_2x14x14x32x3x3_f32_buffer = util.global.load immutable @main_graph$async_dispatch_194_embedded_elf_riscv_64_main_graph$async_dispatch_194_conv_2x14x14x32x3x3_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_194::@embedded_elf_riscv_64::@main_graph$async_dispatch_194_conv_2x14x14x32x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_194) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_194::@embedded_elf_riscv_64::@main_graph$async_dispatch_194_conv_2x14x14x32x3x3_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_194_embedded_elf_riscv_64_main_graph$async_dispatch_194_conv_2x14x14x32x3x3_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_194_embedded_elf_riscv_64_main_graph$async_dispatch_194_conv_2x14x14x32x3x3_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_194_embedded_elf_riscv_64_main_graph$async_dispatch_194_conv_2x14x14x32x3x3_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
