#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_51 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_51_slow_memcpy ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_51_slow_memcpy(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(3364 : index) : i64
          %2 = llvm.mlir.constant(58 : index) : i64
          %3 = llvm.mlir.constant(8 : i64) : i64
          %4 = llvm.mlir.constant(32 : i64) : i64
          %5 = llvm.mlir.constant(64 : index) : i64
          %6 = llvm.mlir.constant(true) : i1
          %7 = llvm.mlir.constant(3136 : index) : i64
          %8 = llvm.mlir.constant(-1 : index) : i64
          %9 = llvm.mlir.constant(2 : index) : i64
          %10 = llvm.mlir.constant(8 : index) : i64
          %11 = llvm.mlir.constant(1 : index) : i64
          %12 = llvm.mlir.constant(56 : index) : i64
          %13 = llvm.mlir.constant(28 : index) : i64
          %14 = llvm.mlir.constant(4 : index) : i64
          %15 = llvm.mlir.constant(0 : index) : i64
          %16 = llvm.mlir.constant(1605632 : index) : i64
          %17 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %18 = llvm.extractvalue %17[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %19 = llvm.load %18 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %6 ["align"(%19, %5 : !llvm.ptr, i64)] : i1
          %20 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %21 = llvm.extractvalue %20[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %22 = llvm.getelementptr %21[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %23 = llvm.load %22 : !llvm.ptr -> !llvm.ptr
          %24 = llvm.mul %16, %3 : i64
          %25 = llvm.udiv %24, %4 : i64
          %26 = llvm.getelementptr %23[%25] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
          %27 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %28 = llvm.extractvalue %27[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %29 = llvm.zext %28 : i32 to i64
          %30 = llvm.sdiv %29, %9 : i64
          %31 = llvm.mul %30, %9 : i64
          %32 = llvm.icmp "ne" %29, %31 : i64
          %33 = llvm.icmp "slt" %29, %15 : i64
          %34 = llvm.and %32, %33 : i1
          %35 = llvm.add %30, %8 : i64
          %36 = llvm.select %34, %35, %30 : i1, i64
          %37 = llvm.srem %29, %9 : i64
          %38 = llvm.icmp "slt" %37, %15 : i64
          %39 = llvm.add %37, %9 overflow<nsw> : i64
          %40 = llvm.select %38, %39, %37 : i1, i64
          %41 = llvm.mul %36, %14 overflow<nsw> : i64
          %42 = llvm.mul %40, %13 overflow<nsw> : i64
          llvm.br ^bb1(%15 : i64)
        ^bb1(%43: i64):  // 2 preds: ^bb0, ^bb6
          %44 = llvm.icmp "slt" %43, %14 : i64
          llvm.cond_br %44, ^bb2(%15 : i64), ^bb7
        ^bb2(%45: i64):  // 2 preds: ^bb1, ^bb5
          %46 = llvm.icmp "slt" %45, %13 : i64
          llvm.cond_br %46, ^bb3(%15 : i64), ^bb6
        ^bb3(%47: i64):  // 2 preds: ^bb2, ^bb4
          %48 = llvm.icmp "slt" %47, %12 : i64
          llvm.cond_br %48, ^bb4, ^bb5
        ^bb4:  // pred: ^bb3
          %49 = llvm.add %41, %43 : i64
          %50 = llvm.add %42, %45 : i64
          %51 = llvm.mul %49, %7 : i64
          %52 = llvm.mul %50, %12 : i64
          %53 = llvm.add %51, %52 : i64
          %54 = llvm.add %53, %47 : i64
          %55 = llvm.getelementptr %19[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %56 = llvm.load %55 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %57 = llvm.add %50, %11 : i64
          %58 = llvm.add %47, %11 : i64
          %59 = llvm.mul %49, %1 : i64
          %60 = llvm.mul %57, %2 : i64
          %61 = llvm.add %59, %60 : i64
          %62 = llvm.add %61, %58 : i64
          %63 = llvm.getelementptr %26[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %56, %63 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %64 = llvm.add %47, %10 : i64
          llvm.br ^bb3(%64 : i64)
        ^bb5:  // pred: ^bb3
          %65 = llvm.add %45, %11 : i64
          llvm.br ^bb2(%65 : i64)
        ^bb6:  // pred: ^bb2
          %66 = llvm.add %43, %11 : i64
          llvm.br ^bb1(%66 : i64)
        ^bb7:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_51_embedded_elf_riscv_64_main_graph$async_dispatch_51_slow_memcpy_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_51_embedded_elf_riscv_64_main_graph$async_dispatch_51_slow_memcpy_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_51_embedded_elf_riscv_64_main_graph$async_dispatch_51_slow_memcpy(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_51_embedded_elf_riscv_64_main_graph$async_dispatch_51_slow_memcpy_buffer = util.global.load immutable @main_graph$async_dispatch_51_embedded_elf_riscv_64_main_graph$async_dispatch_51_slow_memcpy_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_51::@embedded_elf_riscv_64::@main_graph$async_dispatch_51_slow_memcpy) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_51) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_51::@embedded_elf_riscv_64::@main_graph$async_dispatch_51_slow_memcpy) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_51_embedded_elf_riscv_64_main_graph$async_dispatch_51_slow_memcpy_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_51_embedded_elf_riscv_64_main_graph$async_dispatch_51_slow_memcpy_buffer : !hal.buffer)[%c32172032, %c32172032]
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
