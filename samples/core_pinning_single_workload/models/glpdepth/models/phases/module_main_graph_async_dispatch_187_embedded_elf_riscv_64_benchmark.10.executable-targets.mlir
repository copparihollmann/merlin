#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_187 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_187_reduction_49x256_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c49 = arith.constant 49 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c49, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_187_reduction_49x256_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(1.000000e+00 : f32) : f32
          %1 = llvm.mlir.poison : vector<8xf32>
          %2 = llvm.mlir.constant(0 : i32) : i32
          %3 = llvm.mlir.poison : vector<1xf32>
          %4 = llvm.mlir.constant(0 : i64) : i64
          %5 = llvm.mlir.constant(64 : index) : i64
          %6 = llvm.mlir.constant(true) : i1
          %7 = llvm.mlir.constant(49 : index) : i64
          %8 = llvm.mlir.constant(8 : i64) : i64
          %9 = llvm.mlir.constant(32 : i64) : i64
          %10 = llvm.mlir.constant(0.000000e+00 : f32) : f32
          %11 = llvm.mlir.constant(9.99999997E-7 : f32) : f32
          %12 = llvm.mlir.constant(2.560000e+02 : f32) : f32
          %13 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %14 = llvm.mlir.constant(dense<2.560000e+02> : vector<1xf32>) : vector<1xf32>
          %15 = llvm.mlir.constant(dense<0.000000e+00> : vector<1xf32>) : vector<1xf32>
          %16 = llvm.mlir.constant(1 : index) : i64
          %17 = llvm.mlir.constant(8 : index) : i64
          %18 = llvm.mlir.constant(256 : index) : i64
          %19 = llvm.mlir.constant(0 : index) : i64
          %20 = llvm.mlir.constant(577024 : index) : i64
          %21 = llvm.mlir.constant(627200 : index) : i64
          %22 = llvm.mlir.constant(526848 : index) : i64
          %23 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %24 = llvm.extractvalue %23[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %25 = llvm.load %24 : !llvm.ptr -> !llvm.ptr
          %26 = llvm.mul %20, %8 : i64
          %27 = llvm.udiv %26, %9 : i64
          %28 = llvm.getelementptr %25[%27] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
          %29 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %30 = llvm.extractvalue %29[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %31 = llvm.load %30 : !llvm.ptr -> !llvm.ptr
          %32 = llvm.mul %21, %8 : i64
          %33 = llvm.udiv %32, %9 : i64
          %34 = llvm.getelementptr %31[%33] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%34, %5 : !llvm.ptr, i64)] : i1
          %35 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %36 = llvm.extractvalue %35[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %37 = llvm.getelementptr %36[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %38 = llvm.load %37 : !llvm.ptr -> !llvm.ptr
          %39 = llvm.mul %22, %8 : i64
          %40 = llvm.udiv %39, %9 : i64
          %41 = llvm.getelementptr %38[%40] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
          %42 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %43 = llvm.extractvalue %42[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %44 = llvm.zext %43 : i32 to i64
          llvm.br ^bb1(%19, %15 : i64, vector<1xf32>)
        ^bb1(%45: i64, %46: vector<1xf32>):  // 2 preds: ^bb0, ^bb2
          %47 = llvm.icmp "slt" %45, %18 : i64
          llvm.cond_br %47, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %48 = llvm.mul %44, %18 : i64
          %49 = llvm.add %48, %45 : i64
          %50 = llvm.getelementptr %28[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %51 = llvm.load %50 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %52 = llvm.getelementptr %34[%49] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %53 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %54 = llvm.fadd %53, %13 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %55 = llvm.fadd %51, %54 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %56 = llvm.extractelement %46[%4 : i64] : vector<1xf32>
          %57 = "llvm.intr.vector.reduce.fadd"(%56, %55) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %58 = llvm.insertelement %57, %3[%2 : i32] : vector<1xf32>
          %59 = llvm.add %45, %17 : i64
          llvm.br ^bb1(%59, %58 : i64, vector<1xf32>)
        ^bb3:  // pred: ^bb1
          %60 = llvm.fdiv %46, %14 : vector<1xf32>
          llvm.br ^bb4(%19, %15 : i64, vector<1xf32>)
        ^bb4(%61: i64, %62: vector<1xf32>):  // 2 preds: ^bb3, ^bb5
          %63 = llvm.icmp "slt" %61, %18 : i64
          llvm.cond_br %63, ^bb5, ^bb6
        ^bb5:  // pred: ^bb4
          %64 = llvm.mul %44, %18 : i64
          %65 = llvm.add %64, %61 : i64
          %66 = llvm.getelementptr %28[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %67 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %68 = llvm.getelementptr %34[%65] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %69 = llvm.load %68 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %70 = llvm.fadd %69, %13 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %71 = llvm.fadd %67, %70 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %72 = llvm.extractelement %60[%4 : i64] : vector<1xf32>
          %73 = llvm.insertelement %72, %1[%2 : i32] : vector<8xf32>
          %74 = llvm.shufflevector %73, %1 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %75 = llvm.fsub %71, %74 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %76 = llvm.extractelement %62[%4 : i64] : vector<1xf32>
          %77 = llvm.fmul %75, %75 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %78 = "llvm.intr.vector.reduce.fadd"(%76, %77) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %79 = llvm.insertelement %78, %3[%2 : i32] : vector<1xf32>
          %80 = llvm.add %61, %17 : i64
          llvm.br ^bb4(%80, %79 : i64, vector<1xf32>)
        ^bb6:  // pred: ^bb4
          %81 = llvm.extractelement %62[%4 : i64] : vector<1xf32>
          %82 = llvm.fdiv %81, %12 : f32
          %83 = llvm.fadd %82, %11 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %84 = llvm.intr.sqrt(%83) : (f32) -> f32
          %85 = llvm.fdiv %0, %84 : f32
          llvm.br ^bb7(%19 : i64)
        ^bb7(%86: i64):  // 2 preds: ^bb6, ^bb8
          %87 = llvm.icmp "slt" %86, %18 : i64
          llvm.cond_br %87, ^bb8, ^bb9
        ^bb8:  // pred: ^bb7
          %88 = llvm.mul %44, %18 : i64
          %89 = llvm.add %88, %86 : i64
          %90 = llvm.getelementptr %28[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %91 = llvm.load %90 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %92 = llvm.getelementptr %34[%89] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %93 = llvm.load %92 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %94 = llvm.extractelement %93[%4 : i64] : vector<1xf32>
          %95 = llvm.fadd %94, %10 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %96 = llvm.extractelement %91[%4 : i64] : vector<1xf32>
          %97 = llvm.fadd %96, %95 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %98 = llvm.extractelement %60[%4 : i64] : vector<1xf32>
          %99 = llvm.fsub %97, %98 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %100 = llvm.fmul %99, %85 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %101 = llvm.fadd %100, %10 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %102 = llvm.mul %86, %7 overflow<nsw, nuw> : i64
          %103 = llvm.add %102, %44 overflow<nsw, nuw> : i64
          %104 = llvm.getelementptr inbounds|nuw %41[%103] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %101, %104 : f32, !llvm.ptr
          %105 = llvm.add %86, %16 : i64
          llvm.br ^bb7(%105 : i64)
        ^bb9:  // pred: ^bb7
          llvm.return %2 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_187_embedded_elf_riscv_64_main_graph$async_dispatch_187_reduction_49x256_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_187_embedded_elf_riscv_64_main_graph$async_dispatch_187_reduction_49x256_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_187_embedded_elf_riscv_64_main_graph$async_dispatch_187_reduction_49x256_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_187_embedded_elf_riscv_64_main_graph$async_dispatch_187_reduction_49x256_f32_buffer = util.global.load immutable @main_graph$async_dispatch_187_embedded_elf_riscv_64_main_graph$async_dispatch_187_reduction_49x256_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_187::@embedded_elf_riscv_64::@main_graph$async_dispatch_187_reduction_49x256_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_187) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_187::@embedded_elf_riscv_64::@main_graph$async_dispatch_187_reduction_49x256_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_187_embedded_elf_riscv_64_main_graph$async_dispatch_187_reduction_49x256_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_187_embedded_elf_riscv_64_main_graph$async_dispatch_187_reduction_49x256_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
