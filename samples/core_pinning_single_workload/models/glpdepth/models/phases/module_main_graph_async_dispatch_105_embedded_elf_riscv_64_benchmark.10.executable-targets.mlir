#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_105 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_105_elementwise_broadcast_5x32x49_f32_pack ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        %c1_1 = arith.constant 1 : index
        hal.return %c1, %c1_0, %c1_1 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_105_elementwise_broadcast_5x32x49_f32_pack(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<7xi64>
          %2 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6]> : vector<7xindex>) : vector<7xi64>
          %3 = llvm.mlir.constant(224 : index) : i64
          %4 = llvm.mlir.constant(64 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(7840 : index) : i64
          %7 = llvm.mlir.constant(1568 : index) : i64
          %8 = llvm.mlir.constant(8 : i64) : i64
          %9 = llvm.mlir.constant(32 : i64) : i64
          %10 = llvm.mlir.constant(-1 : index) : i64
          %11 = llvm.mlir.constant(dense<0.000000e+00> : vector<7xf32>) : vector<7xf32>
          %12 = llvm.mlir.constant(dense<true> : vector<7xi1>) : vector<7xi1>
          %13 = llvm.mlir.constant(dense<32> : vector<7xindex>) : vector<7xi64>
          %14 = llvm.mlir.constant(7 : index) : i64
          %15 = llvm.mlir.constant(1 : index) : i64
          %16 = llvm.mlir.constant(49 : index) : i64
          %17 = llvm.mlir.constant(32 : index) : i64
          %18 = llvm.mlir.constant(5 : index) : i64
          %19 = llvm.mlir.constant(0 : index) : i64
          %20 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %21 = llvm.extractvalue %20[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %22 = llvm.load %21 : !llvm.ptr -> i32
          %23 = llvm.getelementptr %21[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %24 = llvm.load %23 : !llvm.ptr -> i32
          %25 = llvm.zext %22 : i32 to i64
          %26 = llvm.zext %24 : i32 to i64
          %27 = llvm.extractvalue %20[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %28 = llvm.load %27 : !llvm.ptr -> !llvm.ptr
          %29 = llvm.mul %25, %8 : i64
          %30 = llvm.udiv %29, %9 : i64
          %31 = llvm.getelementptr %28[%30] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%31, %4 : !llvm.ptr, i64)] : i1
          %32 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %33 = llvm.extractvalue %32[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %34 = llvm.getelementptr %33[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %35 = llvm.load %34 : !llvm.ptr -> !llvm.ptr
          %36 = llvm.mul %26, %8 : i64
          %37 = llvm.udiv %36, %9 : i64
          %38 = llvm.getelementptr %35[%37] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%38, %4 : !llvm.ptr, i64)] : i1
          llvm.br ^bb1(%19 : i64)
        ^bb1(%39: i64):  // 2 preds: ^bb0, ^bb7
          %40 = llvm.icmp "slt" %39, %18 : i64
          llvm.cond_br %40, ^bb2, ^bb8
        ^bb2:  // pred: ^bb1
          %41 = llvm.mul %39, %16 : i64
          llvm.br ^bb3(%19 : i64)
        ^bb3(%42: i64):  // 2 preds: ^bb2, ^bb6
          %43 = llvm.icmp "slt" %42, %17 : i64
          llvm.cond_br %43, ^bb4(%19 : i64), ^bb7
        ^bb4(%44: i64):  // 2 preds: ^bb3, ^bb5
          %45 = llvm.icmp "slt" %44, %16 : i64
          llvm.cond_br %45, ^bb5, ^bb6
        ^bb5:  // pred: ^bb4
          %46 = llvm.insertelement %44, %1[%0 : i32] : vector<7xi64>
          %47 = llvm.shufflevector %46, %1 [0, 0, 0, 0, 0, 0, 0] : vector<7xi64> 
          %48 = llvm.add %47, %2 : vector<7xi64>
          %49 = llvm.insertelement %41, %1[%0 : i32] : vector<7xi64>
          %50 = llvm.shufflevector %49, %1 [0, 0, 0, 0, 0, 0, 0] : vector<7xi64> 
          %51 = llvm.add %48, %50 : vector<7xi64>
          %52 = llvm.mul %51, %13 : vector<7xi64>
          %53 = llvm.insertelement %42, %1[%0 : i32] : vector<7xi64>
          %54 = llvm.shufflevector %53, %1 [0, 0, 0, 0, 0, 0, 0] : vector<7xi64> 
          %55 = llvm.add %54, %52 : vector<7xi64>
          %56 = llvm.mul %19, %6 : i64
          %57 = llvm.add %56, %56 : i64
          %58 = llvm.mul %19, %7 : i64
          %59 = llvm.add %57, %58 : i64
          %60 = llvm.mul %19, %17 : i64
          %61 = llvm.add %59, %60 : i64
          %62 = llvm.add %61, %19 : i64
          %63 = llvm.getelementptr %31[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %64 = llvm.getelementptr %63[%55] : (!llvm.ptr, vector<7xi64>) -> vector<7x!llvm.ptr>, f32
          %65 = llvm.intr.masked.gather %64, %12, %11 {alignment = 4 : i32} : (vector<7x!llvm.ptr>, vector<7xi1>, vector<7xf32>) -> vector<7xf32>
          %66 = llvm.icmp "slt" %44, %19 : i64
          %67 = llvm.sub %10, %44 : i64
          %68 = llvm.select %66, %67, %44 : i1, i64
          %69 = llvm.sdiv %68, %14 : i64
          %70 = llvm.sub %10, %69 : i64
          %71 = llvm.select %66, %70, %69 : i1, i64
          %72 = llvm.mul %39, %7 : i64
          %73 = llvm.mul %71, %3 : i64
          %74 = llvm.add %72, %73 : i64
          %75 = llvm.mul %42, %14 : i64
          %76 = llvm.add %74, %75 : i64
          %77 = llvm.add %76, %19 : i64
          %78 = llvm.add %77, %19 : i64
          %79 = llvm.getelementptr %38[%78] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %65, %79 {alignment = 4 : i64} : vector<7xf32>, !llvm.ptr
          %80 = llvm.add %44, %14 : i64
          llvm.br ^bb4(%80 : i64)
        ^bb6:  // pred: ^bb4
          %81 = llvm.add %42, %15 : i64
          llvm.br ^bb3(%81 : i64)
        ^bb7:  // pred: ^bb3
          %82 = llvm.add %39, %15 : i64
          llvm.br ^bb1(%82 : i64)
        ^bb8:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_105_embedded_elf_riscv_64_main_graph$async_dispatch_105_elementwise_broadcast_5x32x49_f32_pack_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_105_embedded_elf_riscv_64_main_graph$async_dispatch_105_elementwise_broadcast_5x32x49_f32_pack_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_105_embedded_elf_riscv_64_main_graph$async_dispatch_105_elementwise_broadcast_5x32x49_f32_pack(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c401408_i32 = arith.constant 401408 : i32
    %c464128_i32 = arith.constant 464128 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_105_embedded_elf_riscv_64_main_graph$async_dispatch_105_elementwise_broadcast_5x32x49_f32_pack_buffer = util.global.load immutable @main_graph$async_dispatch_105_embedded_elf_riscv_64_main_graph$async_dispatch_105_elementwise_broadcast_5x32x49_f32_pack_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_105::@embedded_elf_riscv_64::@main_graph$async_dispatch_105_elementwise_broadcast_5x32x49_f32_pack) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_105) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_105::@embedded_elf_riscv_64::@main_graph$async_dispatch_105_elementwise_broadcast_5x32x49_f32_pack) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c401408_i32, %c464128_i32]) bindings([
      (%main_graph$async_dispatch_105_embedded_elf_riscv_64_main_graph$async_dispatch_105_elementwise_broadcast_5x32x49_f32_pack_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_105_embedded_elf_riscv_64_main_graph$async_dispatch_105_elementwise_broadcast_5x32x49_f32_pack_buffer : !hal.buffer)[%c32172032, %c32172032]
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
