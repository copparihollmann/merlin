#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_102 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_102_conv_160x7x7x160x2x2_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c10 = arith.constant 10 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c10, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_102_conv_160x7x7x160x2x2_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(1120 : index) : i64
          %2 = llvm.mlir.constant(49 : index) : i64
          %3 = llvm.mlir.constant(640 : index) : i64
          %4 = llvm.mlir.constant(4 : index) : i64
          %5 = llvm.mlir.constant(64 : index) : i64
          %6 = llvm.mlir.constant(true) : i1
          %7 = llvm.mlir.constant(2240 : index) : i64
          %8 = llvm.mlir.constant(8 : i64) : i64
          %9 = llvm.mlir.constant(32 : i64) : i64
          %10 = llvm.mlir.constant(0.000000e+00 : f32) : f32
          %11 = llvm.mlir.constant(7 : index) : i64
          %12 = llvm.mlir.constant(16 : index) : i64
          %13 = llvm.mlir.constant(1 : index) : i64
          %14 = llvm.mlir.constant(8 : index) : i64
          %15 = llvm.mlir.constant(2 : index) : i64
          %16 = llvm.mlir.constant(160 : index) : i64
          %17 = llvm.mlir.constant(0 : index) : i64
          %18 = llvm.mlir.constant(1003520 : index) : i64
          %19 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %20 = llvm.extractvalue %19[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %21 = llvm.load %20 : !llvm.ptr -> i32
          %22 = llvm.getelementptr %20[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %23 = llvm.load %22 : !llvm.ptr -> i32
          %24 = llvm.getelementptr %20[2] : (!llvm.ptr) -> !llvm.ptr, i32
          %25 = llvm.load %24 : !llvm.ptr -> i32
          %26 = llvm.zext %21 : i32 to i64
          %27 = llvm.zext %23 : i32 to i64
          %28 = llvm.zext %25 : i32 to i64
          %29 = llvm.extractvalue %19[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %30 = llvm.load %29 : !llvm.ptr -> !llvm.ptr
          %31 = llvm.mul %18, %8 : i64
          %32 = llvm.udiv %31, %9 : i64
          %33 = llvm.getelementptr %30[%32] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
          %34 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %35 = llvm.extractvalue %34[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %36 = llvm.getelementptr %35[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %37 = llvm.load %36 : !llvm.ptr -> !llvm.ptr
          %38 = llvm.mul %26, %8 : i64
          %39 = llvm.udiv %38, %9 : i64
          %40 = llvm.getelementptr %37[%39] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%40, %5 : !llvm.ptr, i64)] : i1
          %41 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %42 = llvm.extractvalue %41[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %43 = llvm.getelementptr %42[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %44 = llvm.load %43 : !llvm.ptr -> !llvm.ptr
          %45 = llvm.mul %27, %8 : i64
          %46 = llvm.udiv %45, %9 : i64
          %47 = llvm.getelementptr %44[%46] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
          %48 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %49 = llvm.extractvalue %48[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %50 = llvm.getelementptr %49[3] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %51 = llvm.load %50 : !llvm.ptr -> !llvm.ptr
          %52 = llvm.mul %28, %8 : i64
          %53 = llvm.udiv %52, %9 : i64
          %54 = llvm.getelementptr %51[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
          %55 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %56 = llvm.extractvalue %55[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %57 = llvm.zext %56 : i32 to i64
          %58 = llvm.mul %57, %12 overflow<nsw> : i64
          llvm.br ^bb1(%17 : i64)
        ^bb1(%59: i64):  // 2 preds: ^bb0, ^bb17
          %60 = llvm.icmp "slt" %59, %12 : i64
          llvm.cond_br %60, ^bb2, ^bb18
        ^bb2:  // pred: ^bb1
          %61 = llvm.add %59, %58 : i64
          llvm.br ^bb3(%17 : i64)
        ^bb3(%62: i64):  // 2 preds: ^bb2, ^bb16
          %63 = llvm.icmp "slt" %62, %11 : i64
          llvm.cond_br %63, ^bb4(%17 : i64), ^bb17
        ^bb4(%64: i64):  // 2 preds: ^bb3, ^bb15
          %65 = llvm.icmp "slt" %64, %11 : i64
          llvm.cond_br %65, ^bb5, ^bb16
        ^bb5:  // pred: ^bb4
          %66 = llvm.mul %61, %2 overflow<nsw, nuw> : i64
          %67 = llvm.mul %62, %11 overflow<nsw, nuw> : i64
          %68 = llvm.add %66, %67 overflow<nsw, nuw> : i64
          %69 = llvm.add %68, %64 overflow<nsw, nuw> : i64
          %70 = llvm.getelementptr inbounds|nuw %47[%69] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %10, %70 : f32, !llvm.ptr
          %71 = llvm.mul %64, %15 overflow<nsw> : i64
          llvm.br ^bb6(%17 : i64)
        ^bb6(%72: i64):  // 2 preds: ^bb5, ^bb14
          %73 = llvm.icmp "slt" %72, %16 : i64
          llvm.cond_br %73, ^bb7(%17 : i64), ^bb15
        ^bb7(%74: i64):  // 2 preds: ^bb6, ^bb13
          %75 = llvm.icmp "slt" %74, %15 : i64
          llvm.cond_br %75, ^bb8, ^bb14
        ^bb8:  // pred: ^bb7
          %76 = llvm.mul %62, %15 overflow<nsw> : i64
          %77 = llvm.add %76, %74 : i64
          llvm.br ^bb9(%17 : i64)
        ^bb9(%78: i64):  // 2 preds: ^bb8, ^bb12
          %79 = llvm.icmp "slt" %78, %14 : i64
          llvm.cond_br %79, ^bb10(%17 : i64), ^bb13
        ^bb10(%80: i64):  // 2 preds: ^bb9, ^bb11
          %81 = llvm.icmp "slt" %80, %15 : i64
          llvm.cond_br %81, ^bb11, ^bb12
        ^bb11:  // pred: ^bb10
          %82 = llvm.add %71, %80 : i64
          %83 = llvm.add %72, %78 : i64
          %84 = llvm.mul %77, %7 overflow<nsw, nuw> : i64
          %85 = llvm.mul %82, %16 overflow<nsw, nuw> : i64
          %86 = llvm.add %84, %85 overflow<nsw, nuw> : i64
          %87 = llvm.add %86, %83 overflow<nsw, nuw> : i64
          %88 = llvm.getelementptr inbounds|nuw %33[%87] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %89 = llvm.load %88 : !llvm.ptr -> f32
          %90 = llvm.mul %61, %3 overflow<nsw, nuw> : i64
          %91 = llvm.mul %83, %4 overflow<nsw, nuw> : i64
          %92 = llvm.add %90, %91 overflow<nsw, nuw> : i64
          %93 = llvm.mul %74, %15 overflow<nsw, nuw> : i64
          %94 = llvm.add %92, %93 overflow<nsw, nuw> : i64
          %95 = llvm.add %94, %80 overflow<nsw, nuw> : i64
          %96 = llvm.getelementptr inbounds|nuw %40[%95] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %97 = llvm.load %96 : !llvm.ptr -> f32
          %98 = llvm.load %70 : !llvm.ptr -> f32
          %99 = llvm.fmul %89, %97 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %100 = llvm.fadd %98, %99 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %100, %70 : f32, !llvm.ptr
          %101 = llvm.add %80, %13 : i64
          llvm.br ^bb10(%101 : i64)
        ^bb12:  // pred: ^bb10
          %102 = llvm.add %78, %13 : i64
          llvm.br ^bb9(%102 : i64)
        ^bb13:  // pred: ^bb9
          %103 = llvm.add %74, %13 : i64
          llvm.br ^bb7(%103 : i64)
        ^bb14:  // pred: ^bb7
          %104 = llvm.add %72, %14 : i64
          llvm.br ^bb6(%104 : i64)
        ^bb15:  // pred: ^bb6
          %105 = llvm.load %70 : !llvm.ptr -> f32
          %106 = llvm.mul %62, %1 overflow<nsw, nuw> : i64
          %107 = llvm.mul %64, %16 overflow<nsw, nuw> : i64
          %108 = llvm.add %106, %107 overflow<nsw, nuw> : i64
          %109 = llvm.add %108, %61 overflow<nsw, nuw> : i64
          %110 = llvm.getelementptr inbounds|nuw %54[%109] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %105, %110 : f32, !llvm.ptr
          %111 = llvm.add %64, %13 : i64
          llvm.br ^bb4(%111 : i64)
        ^bb16:  // pred: ^bb4
          %112 = llvm.add %62, %13 : i64
          llvm.br ^bb3(%112 : i64)
        ^bb17:  // pred: ^bb3
          %113 = llvm.add %59, %13 : i64
          llvm.br ^bb1(%113 : i64)
        ^bb18:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_102_embedded_elf_riscv_64_main_graph$async_dispatch_102_conv_160x7x7x160x2x2_f32_buffer : !hal.buffer
  util.initializer {
    %c111127808 = arith.constant 111127808 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c111127808}
    util.global.store %buffer, @main_graph$async_dispatch_102_embedded_elf_riscv_64_main_graph$async_dispatch_102_conv_160x7x7x160x2x2_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_102_embedded_elf_riscv_64_main_graph$async_dispatch_102_conv_160x7x7x160x2x2_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c9765376_i32 = arith.constant 9765376 : i32
    %c401408_i32 = arith.constant 401408 : i32
    %c432768_i32 = arith.constant 432768 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c78955776 = arith.constant 78955776 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_102_embedded_elf_riscv_64_main_graph$async_dispatch_102_conv_160x7x7x160x2x2_f32_buffer = util.global.load immutable @main_graph$async_dispatch_102_embedded_elf_riscv_64_main_graph$async_dispatch_102_conv_160x7x7x160x2x2_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_102::@embedded_elf_riscv_64::@main_graph$async_dispatch_102_conv_160x7x7x160x2x2_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_102) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_102::@embedded_elf_riscv_64::@main_graph$async_dispatch_102_conv_160x7x7x160x2x2_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c9765376_i32, %c401408_i32, %c432768_i32]) bindings([
      (%main_graph$async_dispatch_102_embedded_elf_riscv_64_main_graph$async_dispatch_102_conv_160x7x7x160x2x2_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_102_embedded_elf_riscv_64_main_graph$async_dispatch_102_conv_160x7x7x160x2x2_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_102_embedded_elf_riscv_64_main_graph$async_dispatch_102_conv_160x7x7x160x2x2_f32_buffer : !hal.buffer)[%c46783744, %c32172032], 
      (%main_graph$async_dispatch_102_embedded_elf_riscv_64_main_graph$async_dispatch_102_conv_160x7x7x160x2x2_f32_buffer : !hal.buffer)[%c78955776, %c32172032]
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
