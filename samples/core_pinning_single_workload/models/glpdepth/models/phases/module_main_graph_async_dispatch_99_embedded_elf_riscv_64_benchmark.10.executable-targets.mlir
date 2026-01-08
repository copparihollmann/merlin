#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_99 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_99_conv_160x14x14x64x3x3_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c10 = arith.constant 10 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c10, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_99_conv_160x14x14x64x3x3_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<8xi32>
          %2 = llvm.mlir.constant(2240 : index) : i64
          %3 = llvm.mlir.constant(196 : index) : i64
          %4 = llvm.mlir.constant(576 : index) : i64
          %5 = llvm.mlir.constant(9 : index) : i64
          %6 = llvm.mlir.constant(160 : index) : i64
          %7 = llvm.mlir.constant(true) : i1
          %8 = llvm.mlir.constant(900 : index) : i64
          %9 = llvm.mlir.constant(30 : index) : i64
          %10 = llvm.mlir.constant(8 : i64) : i64
          %11 = llvm.mlir.constant(32 : i64) : i64
          %12 = llvm.mlir.constant(2 : index) : i64
          %13 = llvm.mlir.poison : vector<8xf32>
          %14 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %15 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %16 = llvm.mlir.constant(8 : index) : i64
          %17 = llvm.mlir.constant(14 : index) : i64
          %18 = llvm.mlir.constant(16 : index) : i64
          %19 = llvm.mlir.constant(1 : index) : i64
          %20 = llvm.mlir.constant(3 : index) : i64
          %21 = llvm.mlir.constant(64 : index) : i64
          %22 = llvm.mlir.constant(0 : index) : i64
          %23 = llvm.mlir.constant(1003520 : index) : i64
          %24 = llvm.mlir.constant(13107712 : index) : i64
          %25 = llvm.mlir.constant(401408 : index) : i64
          %26 = llvm.mlir.constant(526848 : index) : i64
          %27 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %28 = llvm.extractvalue %27[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %29 = llvm.load %28 : !llvm.ptr -> !llvm.ptr
          %30 = llvm.mul %23, %10 : i64
          %31 = llvm.udiv %30, %11 : i64
          %32 = llvm.getelementptr %29[%31] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%32, %21 : !llvm.ptr, i64)] : i1
          %33 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %34 = llvm.extractvalue %33[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %35 = llvm.getelementptr %34[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %36 = llvm.load %35 : !llvm.ptr -> !llvm.ptr
          %37 = llvm.mul %24, %10 : i64
          %38 = llvm.udiv %37, %11 : i64
          %39 = llvm.getelementptr %36[%38] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%39, %21 : !llvm.ptr, i64)] : i1
          %40 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %41 = llvm.extractvalue %40[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %42 = llvm.getelementptr %41[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %43 = llvm.load %42 : !llvm.ptr -> !llvm.ptr
          %44 = llvm.mul %25, %10 : i64
          %45 = llvm.udiv %44, %11 : i64
          %46 = llvm.getelementptr %43[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%46, %21 : !llvm.ptr, i64)] : i1
          %47 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %48 = llvm.extractvalue %47[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %49 = llvm.getelementptr %48[3] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %50 = llvm.load %49 : !llvm.ptr -> !llvm.ptr
          %51 = llvm.mul %26, %10 : i64
          %52 = llvm.udiv %51, %11 : i64
          %53 = llvm.getelementptr %50[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %7 ["align"(%53, %21 : !llvm.ptr, i64)] : i1
          %54 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %55 = llvm.extractvalue %54[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %56 = llvm.zext %55 : i32 to i64
          %57 = llvm.mul %56, %18 overflow<nsw> : i64
          llvm.br ^bb1(%22 : i64)
        ^bb1(%58: i64):  // 2 preds: ^bb0, ^bb23
          %59 = llvm.icmp "slt" %58, %18 : i64
          llvm.cond_br %59, ^bb2, ^bb24
        ^bb2:  // pred: ^bb1
          %60 = llvm.add %58, %57 : i64
          llvm.br ^bb3(%22 : i64)
        ^bb3(%61: i64):  // 2 preds: ^bb2, ^bb22
          %62 = llvm.icmp "slt" %61, %17 : i64
          llvm.cond_br %62, ^bb4(%22 : i64), ^bb23
        ^bb4(%63: i64):  // 2 preds: ^bb3, ^bb21
          %64 = llvm.icmp "slt" %63, %17 : i64
          llvm.cond_br %64, ^bb5, ^bb22
        ^bb5:  // pred: ^bb4
          %65 = llvm.sub %17, %63 : i64
          %66 = llvm.icmp "slt" %65, %16 : i64
          %67 = llvm.select %66, %65, %16 : i1, i64
          %68 = llvm.trunc %67 : i64 to i32
          %69 = llvm.insertelement %68, %1[%0 : i32] : vector<8xi32>
          %70 = llvm.shufflevector %69, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %71 = llvm.icmp "sgt" %70, %14 : vector<8xi32>
          %72 = llvm.mul %60, %3 : i64
          %73 = llvm.mul %61, %17 : i64
          %74 = llvm.add %72, %73 : i64
          %75 = llvm.add %74, %63 : i64
          %76 = llvm.getelementptr %46[%75] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %15, %76, %71 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %77 = llvm.mul %63, %12 overflow<nsw> : i64
          llvm.br ^bb6(%22 : i64)
        ^bb6(%78: i64):  // 2 preds: ^bb5, ^bb14
          %79 = llvm.icmp "slt" %78, %21 : i64
          llvm.cond_br %79, ^bb7(%22 : i64), ^bb15
        ^bb7(%80: i64):  // 2 preds: ^bb6, ^bb13
          %81 = llvm.icmp "slt" %80, %20 : i64
          llvm.cond_br %81, ^bb8, ^bb14
        ^bb8:  // pred: ^bb7
          %82 = llvm.mul %61, %12 overflow<nsw> : i64
          %83 = llvm.add %82, %80 : i64
          llvm.br ^bb9(%22 : i64)
        ^bb9(%84: i64):  // 2 preds: ^bb8, ^bb12
          %85 = llvm.icmp "slt" %84, %67 : i64
          llvm.cond_br %85, ^bb10(%22 : i64), ^bb13
        ^bb10(%86: i64):  // 2 preds: ^bb9, ^bb11
          %87 = llvm.icmp "slt" %86, %20 : i64
          llvm.cond_br %87, ^bb11, ^bb12
        ^bb11:  // pred: ^bb10
          %88 = llvm.mul %84, %12 overflow<nsw> : i64
          %89 = llvm.add %77, %88 : i64
          %90 = llvm.add %89, %86 : i64
          %91 = llvm.mul %78, %8 overflow<nsw, nuw> : i64
          %92 = llvm.mul %83, %9 overflow<nsw, nuw> : i64
          %93 = llvm.add %91, %92 overflow<nsw, nuw> : i64
          %94 = llvm.add %93, %90 overflow<nsw, nuw> : i64
          %95 = llvm.getelementptr inbounds|nuw %32[%94] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %96 = llvm.load %95 : !llvm.ptr -> f32
          %97 = llvm.mul %60, %4 overflow<nsw, nuw> : i64
          %98 = llvm.mul %78, %5 overflow<nsw, nuw> : i64
          %99 = llvm.add %97, %98 overflow<nsw, nuw> : i64
          %100 = llvm.mul %80, %20 overflow<nsw, nuw> : i64
          %101 = llvm.add %99, %100 overflow<nsw, nuw> : i64
          %102 = llvm.add %101, %86 overflow<nsw, nuw> : i64
          %103 = llvm.getelementptr inbounds|nuw %39[%102] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %104 = llvm.load %103 : !llvm.ptr -> f32
          %105 = llvm.add %63, %84 : i64
          %106 = llvm.mul %60, %3 overflow<nsw, nuw> : i64
          %107 = llvm.mul %61, %17 overflow<nsw, nuw> : i64
          %108 = llvm.add %106, %107 overflow<nsw, nuw> : i64
          %109 = llvm.add %108, %105 overflow<nsw, nuw> : i64
          %110 = llvm.getelementptr inbounds|nuw %46[%109] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %111 = llvm.load %110 : !llvm.ptr -> f32
          %112 = llvm.fmul %96, %104 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %113 = llvm.fadd %111, %112 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %113, %110 : f32, !llvm.ptr
          %114 = llvm.add %86, %19 : i64
          llvm.br ^bb10(%114 : i64)
        ^bb12:  // pred: ^bb10
          %115 = llvm.add %84, %19 : i64
          llvm.br ^bb9(%115 : i64)
        ^bb13:  // pred: ^bb9
          %116 = llvm.add %80, %19 : i64
          llvm.br ^bb7(%116 : i64)
        ^bb14:  // pred: ^bb7
          %117 = llvm.add %78, %19 : i64
          llvm.br ^bb6(%117 : i64)
        ^bb15:  // pred: ^bb6
          %118 = llvm.icmp "sgt" %67, %22 : i64
          llvm.cond_br %118, ^bb16, ^bb21
        ^bb16:  // pred: ^bb15
          %119 = llvm.intr.masked.load %76, %71, %13 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          llvm.br ^bb17(%22 : i64)
        ^bb17(%120: i64):  // 2 preds: ^bb16, ^bb20
          %121 = llvm.icmp "slt" %120, %16 : i64
          llvm.cond_br %121, ^bb18, ^bb21
        ^bb18:  // pred: ^bb17
          %122 = llvm.extractelement %71[%120 : i64] : vector<8xi1>
          llvm.cond_br %122, ^bb19, ^bb20
        ^bb19:  // pred: ^bb18
          %123 = llvm.extractelement %119[%120 : i64] : vector<8xf32>
          %124 = llvm.add %63, %120 : i64
          %125 = llvm.mul %61, %2 overflow<nsw, nuw> : i64
          %126 = llvm.mul %124, %6 overflow<nsw, nuw> : i64
          %127 = llvm.add %125, %126 overflow<nsw, nuw> : i64
          %128 = llvm.add %127, %60 overflow<nsw, nuw> : i64
          %129 = llvm.getelementptr inbounds|nuw %53[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %123, %129 : f32, !llvm.ptr
          llvm.br ^bb20
        ^bb20:  // 2 preds: ^bb18, ^bb19
          %130 = llvm.add %120, %19 : i64
          llvm.br ^bb17(%130 : i64)
        ^bb21:  // 2 preds: ^bb15, ^bb17
          %131 = llvm.add %63, %16 : i64
          llvm.br ^bb4(%131 : i64)
        ^bb22:  // pred: ^bb4
          %132 = llvm.add %61, %19 : i64
          llvm.br ^bb3(%132 : i64)
        ^bb23:  // pred: ^bb3
          %133 = llvm.add %58, %19 : i64
          llvm.br ^bb1(%133 : i64)
        ^bb24:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_99_embedded_elf_riscv_64_main_graph$async_dispatch_99_conv_160x14x14x64x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %c111127808 = arith.constant 111127808 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c111127808}
    util.global.store %buffer, @main_graph$async_dispatch_99_embedded_elf_riscv_64_main_graph$async_dispatch_99_conv_160x14x14x64x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_99_embedded_elf_riscv_64_main_graph$async_dispatch_99_conv_160x14x14x64x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c78955776 = arith.constant 78955776 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_99_embedded_elf_riscv_64_main_graph$async_dispatch_99_conv_160x14x14x64x3x3_f32_buffer = util.global.load immutable @main_graph$async_dispatch_99_embedded_elf_riscv_64_main_graph$async_dispatch_99_conv_160x14x14x64x3x3_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_99::@embedded_elf_riscv_64::@main_graph$async_dispatch_99_conv_160x14x14x64x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_99) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_99::@embedded_elf_riscv_64::@main_graph$async_dispatch_99_conv_160x14x14x64x3x3_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_99_embedded_elf_riscv_64_main_graph$async_dispatch_99_conv_160x14x14x64x3x3_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_99_embedded_elf_riscv_64_main_graph$async_dispatch_99_conv_160x14x14x64x3x3_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_99_embedded_elf_riscv_64_main_graph$async_dispatch_99_conv_160x14x14x64x3x3_f32_buffer : !hal.buffer)[%c46783744, %c32172032], 
      (%main_graph$async_dispatch_99_embedded_elf_riscv_64_main_graph$async_dispatch_99_conv_160x14x14x64x3x3_f32_buffer : !hal.buffer)[%c78955776, %c32172032]
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
