#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_66 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_66_pack_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c25 = arith.constant 25 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c25, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_66_pack_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<32xi32>
          %2 = llvm.mlir.constant(2048 : index) : i64
          %3 = llvm.mlir.constant(true) : i1
          %4 = llvm.mlir.constant(8 : i64) : i64
          %5 = llvm.mlir.constant(32 : i64) : i64
          %6 = llvm.mlir.constant(784 : index) : i64
          %7 = llvm.mlir.constant(-32 : index) : i64
          %8 = llvm.mlir.constant(dense<0.000000e+00> : vector<32xf32>) : vector<32xf32>
          %9 = llvm.mlir.constant(32 : index) : i64
          %10 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]> : vector<32xi32>) : vector<32xi32>
          %11 = llvm.mlir.constant(64 : index) : i64
          %12 = llvm.mlir.constant(1 : index) : i64
          %13 = llvm.mlir.constant(0 : index) : i64
          %14 = llvm.mlir.constant(1003520 : index) : i64
          %15 = llvm.mlir.constant(401408 : index) : i64
          %16 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %17 = llvm.extractvalue %16[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %18 = llvm.load %17 : !llvm.ptr -> !llvm.ptr
          %19 = llvm.mul %14, %4 : i64
          %20 = llvm.udiv %19, %5 : i64
          %21 = llvm.getelementptr %18[%20] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %3 ["align"(%21, %11 : !llvm.ptr, i64)] : i1
          %22 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %23 = llvm.extractvalue %22[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %24 = llvm.getelementptr %23[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %25 = llvm.load %24 : !llvm.ptr -> !llvm.ptr
          %26 = llvm.mul %15, %4 : i64
          %27 = llvm.udiv %26, %5 : i64
          %28 = llvm.getelementptr %25[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %3 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
          %29 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %30 = llvm.extractvalue %29[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %31 = llvm.zext %30 : i32 to i64
          %32 = llvm.mul %31, %9 overflow<nsw> : i64
          %33 = llvm.mul %31, %7 overflow<nsw> : i64
          %34 = llvm.add %33, %6 : i64
          %35 = llvm.icmp "slt" %34, %9 : i64
          %36 = llvm.select %35, %34, %9 : i1, i64
          llvm.br ^bb1(%13 : i64)
        ^bb1(%37: i64):  // 2 preds: ^bb0, ^bb7
          %38 = llvm.icmp "slt" %37, %11 : i64
          llvm.cond_br %38, ^bb2, ^bb8
        ^bb2:  // pred: ^bb1
          %39 = llvm.trunc %36 : i64 to i32
          %40 = llvm.insertelement %39, %1[%0 : i32] : vector<32xi32>
          %41 = llvm.shufflevector %40, %1 [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] : vector<32xi32> 
          %42 = llvm.icmp "sgt" %41, %10 : vector<32xi32>
          llvm.br ^bb3(%13, %8 : i64, vector<32xf32>)
        ^bb3(%43: i64, %44: vector<32xf32>):  // 2 preds: ^bb2, ^bb6
          %45 = llvm.icmp "slt" %43, %9 : i64
          llvm.cond_br %45, ^bb4, ^bb7
        ^bb4:  // pred: ^bb3
          %46 = llvm.extractelement %42[%43 : i64] : vector<32xi1>
          llvm.cond_br %46, ^bb5, ^bb6(%44 : vector<32xf32>)
        ^bb5:  // pred: ^bb4
          %47 = llvm.add %32, %43 : i64
          %48 = llvm.mul %47, %11 overflow<nsw, nuw> : i64
          %49 = llvm.add %48, %37 overflow<nsw, nuw> : i64
          %50 = llvm.getelementptr inbounds|nuw %21[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %51 = llvm.load %50 : !llvm.ptr -> f32
          %52 = llvm.insertelement %51, %44[%43 : i64] : vector<32xf32>
          llvm.br ^bb6(%52 : vector<32xf32>)
        ^bb6(%53: vector<32xf32>):  // 2 preds: ^bb4, ^bb5
          %54 = llvm.add %43, %12 : i64
          llvm.br ^bb3(%54, %53 : i64, vector<32xf32>)
        ^bb7:  // pred: ^bb3
          %55 = llvm.mul %31, %2 : i64
          %56 = llvm.mul %37, %9 : i64
          %57 = llvm.add %55, %56 : i64
          %58 = llvm.add %57, %13 : i64
          %59 = llvm.add %58, %13 : i64
          %60 = llvm.getelementptr %28[%59] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %44, %60 {alignment = 4 : i64} : vector<32xf32>, !llvm.ptr
          %61 = llvm.add %37, %12 : i64
          llvm.br ^bb1(%61 : i64)
        ^bb8:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_66_embedded_elf_riscv_64_main_graph$async_dispatch_66_pack_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_66_embedded_elf_riscv_64_main_graph$async_dispatch_66_pack_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_66_embedded_elf_riscv_64_main_graph$async_dispatch_66_pack_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_66_embedded_elf_riscv_64_main_graph$async_dispatch_66_pack_f32_buffer = util.global.load immutable @main_graph$async_dispatch_66_embedded_elf_riscv_64_main_graph$async_dispatch_66_pack_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_66::@embedded_elf_riscv_64::@main_graph$async_dispatch_66_pack_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_66) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_66::@embedded_elf_riscv_64::@main_graph$async_dispatch_66_pack_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_66_embedded_elf_riscv_64_main_graph$async_dispatch_66_pack_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_66_embedded_elf_riscv_64_main_graph$async_dispatch_66_pack_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
