#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_205 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_205_slow_memcpy ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_205_slow_memcpy(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(3364 : index) : i64
          %2 = llvm.mlir.constant(58 : index) : i64
          %3 = llvm.mlir.constant(64 : index) : i64
          %4 = llvm.mlir.constant(true) : i1
          %5 = llvm.mlir.constant(3136 : index) : i64
          %6 = llvm.mlir.constant(8 : i64) : i64
          %7 = llvm.mlir.constant(32 : i64) : i64
          %8 = llvm.mlir.constant(-1 : index) : i64
          %9 = llvm.mlir.constant(2 : index) : i64
          %10 = llvm.mlir.constant(8 : index) : i64
          %11 = llvm.mlir.constant(1 : index) : i64
          %12 = llvm.mlir.constant(56 : index) : i64
          %13 = llvm.mlir.constant(28 : index) : i64
          %14 = llvm.mlir.constant(16 : index) : i64
          %15 = llvm.mlir.constant(0 : index) : i64
          %16 = llvm.mlir.constant(2007040 : index) : i64
          %17 = llvm.mlir.constant(3612672 : index) : i64
          %18 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %19 = llvm.extractvalue %18[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %20 = llvm.load %19 : !llvm.ptr -> !llvm.ptr
          %21 = llvm.mul %16, %6 : i64
          %22 = llvm.udiv %21, %7 : i64
          %23 = llvm.getelementptr %20[%22] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
          %24 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %25 = llvm.extractvalue %24[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %26 = llvm.getelementptr %25[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %27 = llvm.load %26 : !llvm.ptr -> !llvm.ptr
          %28 = llvm.mul %17, %6 : i64
          %29 = llvm.udiv %28, %7 : i64
          %30 = llvm.getelementptr %27[%29] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %4 ["align"(%30, %3 : !llvm.ptr, i64)] : i1
          %31 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %32 = llvm.extractvalue %31[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %33 = llvm.zext %32 : i32 to i64
          %34 = llvm.sdiv %33, %9 : i64
          %35 = llvm.mul %34, %9 : i64
          %36 = llvm.icmp "ne" %33, %35 : i64
          %37 = llvm.icmp "slt" %33, %15 : i64
          %38 = llvm.and %36, %37 : i1
          %39 = llvm.add %34, %8 : i64
          %40 = llvm.select %38, %39, %34 : i1, i64
          %41 = llvm.srem %33, %9 : i64
          %42 = llvm.icmp "slt" %41, %15 : i64
          %43 = llvm.add %41, %9 overflow<nsw> : i64
          %44 = llvm.select %42, %43, %41 : i1, i64
          %45 = llvm.mul %40, %14 overflow<nsw> : i64
          %46 = llvm.mul %44, %13 overflow<nsw> : i64
          llvm.br ^bb1(%15 : i64)
        ^bb1(%47: i64):  // 2 preds: ^bb0, ^bb6
          %48 = llvm.icmp "slt" %47, %14 : i64
          llvm.cond_br %48, ^bb2(%15 : i64), ^bb7
        ^bb2(%49: i64):  // 2 preds: ^bb1, ^bb5
          %50 = llvm.icmp "slt" %49, %13 : i64
          llvm.cond_br %50, ^bb3(%15 : i64), ^bb6
        ^bb3(%51: i64):  // 2 preds: ^bb2, ^bb4
          %52 = llvm.icmp "slt" %51, %12 : i64
          llvm.cond_br %52, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %53 = llvm.add %45, %47 : i64
          %54 = llvm.add %46, %49 : i64
          %55 = llvm.mul %53, %5 : i64
          %56 = llvm.mul %54, %12 : i64
          %57 = llvm.add %55, %56 : i64
          %58 = llvm.add %57, %51 : i64
          %59 = llvm.getelementptr %23[%58] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %60 = llvm.load %59 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %61 = llvm.add %54, %11 : i64
          %62 = llvm.add %51, %11 : i64
          %63 = llvm.mul %53, %1 : i64
          %64 = llvm.mul %61, %2 : i64
          %65 = llvm.add %63, %64 : i64
          %66 = llvm.add %65, %62 : i64
          %67 = llvm.getelementptr %30[%66] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %60, %67 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %68 = llvm.add %51, %10 : i64
          llvm.br ^bb3(%68 : i64)
        ^bb5:  // pred: ^bb3
          %69 = llvm.add %49, %11 : i64
          llvm.br ^bb2(%69 : i64)
        ^bb6:  // pred: ^bb2
          %70 = llvm.add %47, %11 : i64
          llvm.br ^bb1(%70 : i64)
        ^bb7:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_205_embedded_elf_riscv_64_main_graph$async_dispatch_205_slow_memcpy_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_205_embedded_elf_riscv_64_main_graph$async_dispatch_205_slow_memcpy_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_205_embedded_elf_riscv_64_main_graph$async_dispatch_205_slow_memcpy(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_205_embedded_elf_riscv_64_main_graph$async_dispatch_205_slow_memcpy_buffer = util.global.load immutable @main_graph$async_dispatch_205_embedded_elf_riscv_64_main_graph$async_dispatch_205_slow_memcpy_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_205::@embedded_elf_riscv_64::@main_graph$async_dispatch_205_slow_memcpy) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_205) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_205::@embedded_elf_riscv_64::@main_graph$async_dispatch_205_slow_memcpy) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_205_embedded_elf_riscv_64_main_graph$async_dispatch_205_slow_memcpy_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_205_embedded_elf_riscv_64_main_graph$async_dispatch_205_slow_memcpy_buffer : !hal.buffer)[%c32172032, %c32172032]
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
