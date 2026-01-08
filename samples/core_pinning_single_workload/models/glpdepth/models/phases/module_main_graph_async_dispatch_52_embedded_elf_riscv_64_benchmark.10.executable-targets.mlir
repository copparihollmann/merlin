#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_52 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_52_conv_64x28x28x32x3x3_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_52_conv_64x28x28x32x3x3_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<8xi32>
          %2 = llvm.mlir.constant(1792 : index) : i64
          %3 = llvm.mlir.constant(784 : index) : i64
          %4 = llvm.mlir.constant(288 : index) : i64
          %5 = llvm.mlir.constant(9 : index) : i64
          %6 = llvm.mlir.constant(64 : index) : i64
          %7 = llvm.mlir.constant(true) : i1
          %8 = llvm.mlir.constant(3364 : index) : i64
          %9 = llvm.mlir.constant(58 : index) : i64
          %10 = llvm.mlir.constant(8 : i64) : i64
          %11 = llvm.mlir.constant(32 : i64) : i64
          %12 = llvm.mlir.constant(-1 : index) : i64
          %13 = llvm.mlir.constant(2 : index) : i64
          %14 = llvm.mlir.poison : vector<8xf32>
          %15 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %16 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %17 = llvm.mlir.constant(28 : index) : i64
          %18 = llvm.mlir.constant(14 : index) : i64
          %19 = llvm.mlir.constant(8 : index) : i64
          %20 = llvm.mlir.constant(1 : index) : i64
          %21 = llvm.mlir.constant(3 : index) : i64
          %22 = llvm.mlir.constant(32 : index) : i64
          %23 = llvm.mlir.constant(0 : index) : i64
          %24 = llvm.mlir.constant(1605632 : index) : i64
          %25 = llvm.mlir.constant(13476352 : index) : i64
          %26 = llvm.mlir.constant(401408 : index) : i64
          %27 = llvm.mlir.constant(602112 : index) : i64
          %28 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %29 = llvm.extractvalue %28[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %30 = llvm.load %29 : !llvm.ptr -> !llvm.ptr
          %31 = llvm.mul %24, %10 : i64
          %32 = llvm.udiv %31, %11 : i64
          %33 = llvm.getelementptr %30[%32] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%33, %6 : !llvm.ptr, i64)] : i1
          %34 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %35 = llvm.extractvalue %34[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %36 = llvm.getelementptr %35[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %37 = llvm.load %36 : !llvm.ptr -> !llvm.ptr
          %38 = llvm.mul %25, %10 : i64
          %39 = llvm.udiv %38, %11 : i64
          %40 = llvm.getelementptr %37[%39] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%40, %6 : !llvm.ptr, i64)] : i1
          %41 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %42 = llvm.extractvalue %41[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %43 = llvm.getelementptr %42[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %44 = llvm.load %43 : !llvm.ptr -> !llvm.ptr
          %45 = llvm.mul %26, %10 : i64
          %46 = llvm.udiv %45, %11 : i64
          %47 = llvm.getelementptr %44[%46] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%47, %6 : !llvm.ptr, i64)] : i1
          %48 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %49 = llvm.extractvalue %48[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %50 = llvm.getelementptr %49[3] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %51 = llvm.load %50 : !llvm.ptr -> !llvm.ptr
          %52 = llvm.mul %27, %10 : i64
          %53 = llvm.udiv %52, %11 : i64
          %54 = llvm.getelementptr %51[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%54, %6 : !llvm.ptr, i64)] : i1
          %55 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %56 = llvm.extractvalue %55[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %57 = llvm.zext %56 : i32 to i64
          %58 = llvm.sdiv %57, %13 : i64
          %59 = llvm.mul %58, %13 : i64
          %60 = llvm.icmp "ne" %57, %59 : i64
          %61 = llvm.icmp "slt" %57, %23 : i64
          %62 = llvm.and %60, %61 : i1
          %63 = llvm.add %58, %12 : i64
          %64 = llvm.select %62, %63, %58 : i1, i64
          %65 = llvm.srem %57, %13 : i64
          %66 = llvm.icmp "slt" %65, %23 : i64
          %67 = llvm.add %65, %13 overflow<nsw> : i64
          %68 = llvm.select %66, %67, %65 : i1, i64
          %69 = llvm.mul %64, %19 overflow<nsw> : i64
          %70 = llvm.mul %68, %18 overflow<nsw> : i64
          llvm.br ^bb1(%23 : i64)
        ^bb1(%71: i64):  // 2 preds: ^bb0, ^bb23
          %72 = llvm.icmp "slt" %71, %19 : i64
          llvm.cond_br %72, ^bb2, ^bb24
        ^bb2:  // pred: ^bb1
          %73 = llvm.add %71, %69 : i64
          llvm.br ^bb3(%23 : i64)
        ^bb3(%74: i64):  // 2 preds: ^bb2, ^bb22
          %75 = llvm.icmp "slt" %74, %18 : i64
          llvm.cond_br %75, ^bb4(%23 : i64), ^bb23
        ^bb4(%76: i64):  // 2 preds: ^bb3, ^bb21
          %77 = llvm.icmp "slt" %76, %17 : i64
          llvm.cond_br %77, ^bb5, ^bb22
        ^bb5:  // pred: ^bb4
          %78 = llvm.sub %17, %76 : i64
          %79 = llvm.icmp "slt" %78, %19 : i64
          %80 = llvm.select %79, %78, %19 : i1, i64
          %81 = llvm.trunc %80 : i64 to i32
          %82 = llvm.insertelement %81, %1[%0 : i32] : vector<8xi32>
          %83 = llvm.shufflevector %82, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %84 = llvm.icmp "sgt" %83, %15 : vector<8xi32>
          %85 = llvm.add %70, %74 : i64
          %86 = llvm.mul %73, %3 : i64
          %87 = llvm.mul %85, %17 : i64
          %88 = llvm.add %86, %87 : i64
          %89 = llvm.add %88, %76 : i64
          %90 = llvm.getelementptr %47[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %16, %90, %84 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %91 = llvm.mul %76, %13 overflow<nsw> : i64
          llvm.br ^bb6(%23 : i64)
        ^bb6(%92: i64):  // 2 preds: ^bb5, ^bb14
          %93 = llvm.icmp "slt" %92, %22 : i64
          llvm.cond_br %93, ^bb7(%23 : i64), ^bb15
        ^bb7(%94: i64):  // 2 preds: ^bb6, ^bb13
          %95 = llvm.icmp "slt" %94, %21 : i64
          llvm.cond_br %95, ^bb8, ^bb14
        ^bb8:  // pred: ^bb7
          %96 = llvm.mul %74, %13 overflow<nsw> : i64
          %97 = llvm.mul %68, %17 overflow<nsw> : i64
          %98 = llvm.add %96, %97 : i64
          %99 = llvm.add %98, %94 : i64
          llvm.br ^bb9(%23 : i64)
        ^bb9(%100: i64):  // 2 preds: ^bb8, ^bb12
          %101 = llvm.icmp "slt" %100, %80 : i64
          llvm.cond_br %101, ^bb10(%23 : i64), ^bb13
        ^bb10(%102: i64):  // 2 preds: ^bb9, ^bb11
          %103 = llvm.icmp "slt" %102, %21 : i64
          llvm.cond_br %103, ^bb11, ^bb12
        ^bb11:  // pred: ^bb10
          %104 = llvm.mul %100, %13 overflow<nsw> : i64
          %105 = llvm.add %91, %104 : i64
          %106 = llvm.add %105, %102 : i64
          %107 = llvm.mul %92, %8 overflow<nsw, nuw> : i64
          %108 = llvm.mul %99, %9 overflow<nsw, nuw> : i64
          %109 = llvm.add %107, %108 overflow<nsw, nuw> : i64
          %110 = llvm.add %109, %106 overflow<nsw, nuw> : i64
          %111 = llvm.getelementptr inbounds|nuw %33[%110] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %112 = llvm.load %111 : !llvm.ptr -> f32
          %113 = llvm.mul %73, %4 overflow<nsw, nuw> : i64
          %114 = llvm.mul %92, %5 overflow<nsw, nuw> : i64
          %115 = llvm.add %113, %114 overflow<nsw, nuw> : i64
          %116 = llvm.mul %94, %21 overflow<nsw, nuw> : i64
          %117 = llvm.add %115, %116 overflow<nsw, nuw> : i64
          %118 = llvm.add %117, %102 overflow<nsw, nuw> : i64
          %119 = llvm.getelementptr inbounds|nuw %40[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %120 = llvm.load %119 : !llvm.ptr -> f32
          %121 = llvm.add %76, %100 : i64
          %122 = llvm.mul %73, %3 overflow<nsw, nuw> : i64
          %123 = llvm.mul %85, %17 overflow<nsw, nuw> : i64
          %124 = llvm.add %122, %123 overflow<nsw, nuw> : i64
          %125 = llvm.add %124, %121 overflow<nsw, nuw> : i64
          %126 = llvm.getelementptr inbounds|nuw %47[%125] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %127 = llvm.load %126 : !llvm.ptr -> f32
          %128 = llvm.fmul %112, %120 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %129 = llvm.fadd %127, %128 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %129, %126 : f32, !llvm.ptr
          %130 = llvm.add %102, %20 : i64
          llvm.br ^bb10(%130 : i64)
        ^bb12:  // pred: ^bb10
          %131 = llvm.add %100, %20 : i64
          llvm.br ^bb9(%131 : i64)
        ^bb13:  // pred: ^bb9
          %132 = llvm.add %94, %20 : i64
          llvm.br ^bb7(%132 : i64)
        ^bb14:  // pred: ^bb7
          %133 = llvm.add %92, %20 : i64
          llvm.br ^bb6(%133 : i64)
        ^bb15:  // pred: ^bb6
          %134 = llvm.icmp "sgt" %80, %23 : i64
          llvm.cond_br %134, ^bb16, ^bb21
        ^bb16:  // pred: ^bb15
          %135 = llvm.intr.masked.load %90, %84, %14 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          llvm.br ^bb17(%23 : i64)
        ^bb17(%136: i64):  // 2 preds: ^bb16, ^bb20
          %137 = llvm.icmp "slt" %136, %19 : i64
          llvm.cond_br %137, ^bb18, ^bb21
        ^bb18:  // pred: ^bb17
          %138 = llvm.extractelement %84[%136 : i64] : vector<8xi1>
          llvm.cond_br %138, ^bb19, ^bb20
        ^bb19:  // pred: ^bb18
          %139 = llvm.extractelement %135[%136 : i64] : vector<8xf32>
          %140 = llvm.add %76, %136 : i64
          %141 = llvm.mul %85, %2 overflow<nsw, nuw> : i64
          %142 = llvm.mul %140, %6 overflow<nsw, nuw> : i64
          %143 = llvm.add %141, %142 overflow<nsw, nuw> : i64
          %144 = llvm.add %143, %73 overflow<nsw, nuw> : i64
          %145 = llvm.getelementptr inbounds|nuw %54[%144] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %139, %145 : f32, !llvm.ptr
          llvm.br ^bb20
        ^bb20:  // 2 preds: ^bb18, ^bb19
          %146 = llvm.add %136, %20 : i64
          llvm.br ^bb17(%146 : i64)
        ^bb21:  // 2 preds: ^bb15, ^bb17
          %147 = llvm.add %76, %19 : i64
          llvm.br ^bb4(%147 : i64)
        ^bb22:  // pred: ^bb4
          %148 = llvm.add %74, %20 : i64
          llvm.br ^bb3(%148 : i64)
        ^bb23:  // pred: ^bb3
          %149 = llvm.add %71, %20 : i64
          llvm.br ^bb1(%149 : i64)
        ^bb24:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_52_embedded_elf_riscv_64_main_graph$async_dispatch_52_conv_64x28x28x32x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %c111127808 = arith.constant 111127808 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c111127808}
    util.global.store %buffer, @main_graph$async_dispatch_52_embedded_elf_riscv_64_main_graph$async_dispatch_52_conv_64x28x28x32x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_52_embedded_elf_riscv_64_main_graph$async_dispatch_52_conv_64x28x28x32x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c78955776 = arith.constant 78955776 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_52_embedded_elf_riscv_64_main_graph$async_dispatch_52_conv_64x28x28x32x3x3_f32_buffer = util.global.load immutable @main_graph$async_dispatch_52_embedded_elf_riscv_64_main_graph$async_dispatch_52_conv_64x28x28x32x3x3_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_52::@embedded_elf_riscv_64::@main_graph$async_dispatch_52_conv_64x28x28x32x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_52) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_52::@embedded_elf_riscv_64::@main_graph$async_dispatch_52_conv_64x28x28x32x3x3_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_52_embedded_elf_riscv_64_main_graph$async_dispatch_52_conv_64x28x28x32x3x3_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_52_embedded_elf_riscv_64_main_graph$async_dispatch_52_conv_64x28x28x32x3x3_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_52_embedded_elf_riscv_64_main_graph$async_dispatch_52_conv_64x28x28x32x3x3_f32_buffer : !hal.buffer)[%c46783744, %c32172032], 
      (%main_graph$async_dispatch_52_embedded_elf_riscv_64_main_graph$async_dispatch_52_conv_64x28x28x32x3x3_f32_buffer : !hal.buffer)[%c78955776, %c32172032]
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
