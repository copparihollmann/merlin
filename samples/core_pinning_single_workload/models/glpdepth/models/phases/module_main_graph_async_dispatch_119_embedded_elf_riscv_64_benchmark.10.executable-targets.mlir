#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_119 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_119_pack_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c70 = arith.constant 70 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c70, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_119_pack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xi32>
          %2 = llvm.mlir.constant(20480 : index) : i64
          %3 = llvm.mlir.constant(true) : i1
          %4 = llvm.mlir.constant(640 : index) : i64
          %5 = llvm.mlir.constant(8 : i64) : i64
          %6 = llvm.mlir.constant(32 : i64) : i64
          %7 = llvm.mlir.constant(-1 : index) : i64
          %8 = llvm.mlir.constant(196 : index) : i64
          %9 = llvm.mlir.constant(-32 : index) : i64
          %10 = llvm.mlir.constant(10 : index) : i64
          %11 = llvm.mlir.constant(dense<0.000000e+00> : vector<32xf32>) : vector<32xf32>
          %12 = llvm.mlir.constant(32 : index) : i64
          %13 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]> : vector<32xi32>) : vector<32xi32>
          %14 = llvm.mlir.constant(64 : index) : i64
          %15 = llvm.mlir.constant(1 : index) : i64
          %16 = llvm.mlir.constant(0 : index) : i64
          %17 = llvm.mlir.constant(1784320 : index) : i64
          %18 = llvm.mlir.constant(1003520 : index) : i64
          %19 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %20 = llvm.extractvalue %19[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %21 = llvm.load %20 : !llvm.ptr -> !llvm.ptr
          %22 = llvm.mul %17, %5 : i64
          %23 = llvm.udiv %22, %6 : i64
          %24 = llvm.getelementptr %21[%23] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %3 ["align"(%24, %14 : !llvm.ptr, i64)] : i1
          %25 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %26 = llvm.extractvalue %25[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %27 = llvm.getelementptr %26[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %28 = llvm.load %27 : !llvm.ptr -> !llvm.ptr
          %29 = llvm.mul %18, %5 : i64
          %30 = llvm.udiv %29, %6 : i64
          %31 = llvm.getelementptr %28[%30] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %3 ["align"(%31, %14 : !llvm.ptr, i64)] : i1
          %32 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %33 = llvm.extractvalue %32[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %34 = llvm.zext %33 : i32 to i64
          %35 = llvm.sdiv %34, %10 : i64
          %36 = llvm.mul %35, %10 : i64
          %37 = llvm.icmp "ne" %34, %36 : i64
          %38 = llvm.icmp "slt" %34, %16 : i64
          %39 = llvm.and %37, %38 : i1
          %40 = llvm.add %35, %7 : i64
          %41 = llvm.select %39, %40, %35 : i1, i64
          %42 = llvm.srem %34, %10 : i64
          %43 = llvm.icmp "slt" %42, %16 : i64
          %44 = llvm.add %42, %10 overflow<nsw> : i64
          %45 = llvm.select %43, %44, %42 : i1, i64
          %46 = llvm.mul %45, %14 overflow<nsw> : i64
          %47 = llvm.mul %41, %12 overflow<nsw> : i64
          %48 = llvm.mul %41, %9 overflow<nsw> : i64
          %49 = llvm.add %48, %8 : i64
          %50 = llvm.icmp "slt" %49, %12 : i64
          %51 = llvm.select %50, %49, %12 : i1, i64
          llvm.br ^bb1(%16 : i64)
        ^bb1(%52: i64):  // 2 preds: ^bb0, ^bb7
          %53 = llvm.icmp "slt" %52, %14 : i64
          llvm.cond_br %53, ^bb2, ^bb8
        ^bb2:  // pred: ^bb1
          %54 = llvm.trunc %51 : i64 to i32
          %55 = llvm.insertelement %54, %1[%0 : i32] : vector<32xi32>
          %56 = llvm.shufflevector %55, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xi32> 
          %57 = llvm.icmp "sgt" %56, %13 : vector<32xi32>
          llvm.br ^bb3(%16, %11 : i64, vector<32xf32>)
        ^bb3(%58: i64, %59: vector<32xf32>):  // 2 preds: ^bb2, ^bb6
          %60 = llvm.icmp "slt" %58, %12 : i64
          llvm.cond_br %60, ^bb4, ^bb7
        ^bb4:  // pred: ^bb3
          %61 = llvm.extractelement %57[%58 : i64] : vector<32xi1>
          llvm.cond_br %61, ^bb5, ^bb6(%59 : vector<32xf32>)
        ^bb5:  // pred: ^bb4
          %62 = llvm.add %47, %58 : i64
          %63 = llvm.add %46, %52 : i64
          %64 = llvm.mul %62, %4 overflow<nsw, nuw> : i64
          %65 = llvm.add %64, %63 overflow<nsw, nuw> : i64
          %66 = llvm.getelementptr inbounds|nuw %24[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %67 = llvm.load %66 : !llvm.ptr -> f32
          %68 = llvm.insertelement %67, %59[%58 : i64] : vector<32xf32>
          llvm.br ^bb6(%68 : vector<32xf32>)
        ^bb6(%69: vector<32xf32>):  // 2 preds: ^bb4, ^bb5
          %70 = llvm.add %58, %15 : i64
          llvm.br ^bb3(%70, %69 : i64, vector<32xf32>)
        ^bb7:  // pred: ^bb3
          %71 = llvm.add %46, %52 : i64
          %72 = llvm.mul %41, %2 : i64
          %73 = llvm.mul %71, %12 : i64
          %74 = llvm.add %72, %73 : i64
          %75 = llvm.add %74, %16 : i64
          %76 = llvm.add %75, %16 : i64
          %77 = llvm.getelementptr %31[%76] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %59, %77 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %78 = llvm.add %52, %15 : i64
          llvm.br ^bb1(%78 : i64)
        ^bb8:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_119_embedded_elf_riscv_64_main_graph$async_dispatch_119_pack_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_119_embedded_elf_riscv_64_main_graph$async_dispatch_119_pack_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_119_embedded_elf_riscv_64_main_graph$async_dispatch_119_pack_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_119_embedded_elf_riscv_64_main_graph$async_dispatch_119_pack_f32_buffer = util.global.load immutable @main_graph$async_dispatch_119_embedded_elf_riscv_64_main_graph$async_dispatch_119_pack_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_119::@embedded_elf_riscv_64::@main_graph$async_dispatch_119_pack_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_119) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_119::@embedded_elf_riscv_64::@main_graph$async_dispatch_119_pack_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_119_embedded_elf_riscv_64_main_graph$async_dispatch_119_pack_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_119_embedded_elf_riscv_64_main_graph$async_dispatch_119_pack_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
