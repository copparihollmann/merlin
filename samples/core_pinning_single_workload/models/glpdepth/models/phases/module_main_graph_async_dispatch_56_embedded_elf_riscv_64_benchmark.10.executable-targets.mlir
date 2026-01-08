#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_56 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_56_reduction_49x64_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c49 = arith.constant 49 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c49, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_56_reduction_49x64_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(7 : i64) : i64
          %1 = llvm.mlir.constant(6 : i64) : i64
          %2 = llvm.mlir.constant(5 : i64) : i64
          %3 = llvm.mlir.constant(4 : i64) : i64
          %4 = llvm.mlir.constant(3 : i64) : i64
          %5 = llvm.mlir.constant(2 : i64) : i64
          %6 = llvm.mlir.constant(1 : i64) : i64
          %7 = llvm.mlir.poison : vector<8xf32>
          %8 = llvm.mlir.constant(dense<1.000000e+00> : vector<1xf32>) : vector<1xf32>
          %9 = llvm.mlir.constant(0 : i32) : i32
          %10 = llvm.mlir.poison : vector<1xf32>
          %11 = llvm.mlir.constant(0 : i64) : i64
          %12 = llvm.mlir.constant(true) : i1
          %13 = llvm.mlir.constant(49 : index) : i64
          %14 = llvm.mlir.constant(8 : i64) : i64
          %15 = llvm.mlir.constant(32 : i64) : i64
          %16 = llvm.mlir.constant(6.400000e+01 : f32) : f32
          %17 = llvm.mlir.constant(7 : index) : i64
          %18 = llvm.mlir.constant(6 : index) : i64
          %19 = llvm.mlir.constant(5 : index) : i64
          %20 = llvm.mlir.constant(4 : index) : i64
          %21 = llvm.mlir.constant(3 : index) : i64
          %22 = llvm.mlir.constant(2 : index) : i64
          %23 = llvm.mlir.constant(0.000000e+00 : f32) : f32
          %24 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %25 = llvm.mlir.constant(dense<9.99999974E-6> : vector<1xf32>) : vector<1xf32>
          %26 = llvm.mlir.constant(dense<6.400000e+01> : vector<1xf32>) : vector<1xf32>
          %27 = llvm.mlir.constant(dense<0.000000e+00> : vector<1xf32>) : vector<1xf32>
          %28 = llvm.mlir.constant(64 : index) : i64
          %29 = llvm.mlir.constant(8 : index) : i64
          %30 = llvm.mlir.constant(1 : index) : i64
          %31 = llvm.mlir.constant(0 : index) : i64
          %32 = llvm.mlir.constant(618752 : index) : i64
          %33 = llvm.mlir.constant(606208 : index) : i64
          %34 = llvm.mlir.constant(631296 : index) : i64
          %35 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %36 = llvm.extractvalue %35[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %37 = llvm.load %36 : !llvm.ptr -> !llvm.ptr
          %38 = llvm.mul %32, %14 : i64
          %39 = llvm.udiv %38, %15 : i64
          %40 = llvm.getelementptr %37[%39] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %12 ["align"(%40, %28 : !llvm.ptr, i64)] : i1
          %41 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %42 = llvm.extractvalue %41[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %43 = llvm.load %42 : !llvm.ptr -> !llvm.ptr
          %44 = llvm.mul %33, %14 : i64
          %45 = llvm.udiv %44, %15 : i64
          %46 = llvm.getelementptr %43[%45] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %12 ["align"(%46, %28 : !llvm.ptr, i64)] : i1
          %47 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %48 = llvm.extractvalue %47[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %49 = llvm.getelementptr %48[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %50 = llvm.load %49 : !llvm.ptr -> !llvm.ptr
          %51 = llvm.mul %34, %14 : i64
          %52 = llvm.udiv %51, %15 : i64
          %53 = llvm.getelementptr %50[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %12 ["align"(%53, %28 : !llvm.ptr, i64)] : i1
          %54 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %55 = llvm.extractvalue %54[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %56 = llvm.zext %55 : i32 to i64
          llvm.br ^bb1(%31, %24 : i64, vector<8xf32>)
        ^bb1(%57: i64, %58: vector<8xf32>):  // 2 preds: ^bb0, ^bb2
          %59 = llvm.icmp "slt" %57, %29 : i64
          llvm.cond_br %59, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %60 = llvm.mul %57, %29 overflow<nsw> : i64
          %61 = llvm.mul %56, %28 : i64
          %62 = llvm.add %61, %60 : i64
          %63 = llvm.getelementptr %40[%62] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %64 = llvm.load %63 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %65 = llvm.fadd %58, %64 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %66 = llvm.add %57, %30 : i64
          llvm.br ^bb1(%66, %65 : i64, vector<8xf32>)
        ^bb3:  // pred: ^bb1
          %67 = "llvm.intr.vector.reduce.fadd"(%23, %58) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %68 = llvm.fdiv %67, %16 : f32
          llvm.br ^bb4(%31, %27 : i64, vector<1xf32>)
        ^bb4(%69: i64, %70: vector<1xf32>):  // 2 preds: ^bb3, ^bb5
          %71 = llvm.icmp "slt" %69, %28 : i64
          llvm.cond_br %71, ^bb5, ^bb6
        ^bb5:  // pred: ^bb4
          %72 = llvm.mul %69, %13 : i64
          %73 = llvm.add %72, %56 : i64
          %74 = llvm.getelementptr %46[%73] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %75 = llvm.load %74 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %76 = llvm.extractelement %75[%11 : i64] : vector<1xf32>
          %77 = llvm.fsub %76, %68 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %78 = llvm.extractelement %70[%11 : i64] : vector<1xf32>
          %79 = llvm.fmul %77, %77 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %80 = llvm.fadd %79, %78 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %81 = llvm.insertelement %80, %10[%9 : i32] : vector<1xf32>
          %82 = llvm.add %69, %30 : i64
          llvm.br ^bb4(%82, %81 : i64, vector<1xf32>)
        ^bb6:  // pred: ^bb4
          %83 = llvm.fdiv %70, %26 : vector<1xf32>
          %84 = llvm.fadd %83, %25 {fastmathFlags = #llvm.fastmath<contract>} : vector<1xf32>
          %85 = llvm.intr.sqrt(%84) : (vector<1xf32>) -> vector<1xf32>
          %86 = llvm.fdiv %8, %85 : vector<1xf32>
          llvm.br ^bb7(%31 : i64)
        ^bb7(%87: i64):  // 2 preds: ^bb6, ^bb8
          %88 = llvm.icmp "slt" %87, %28 : i64
          llvm.cond_br %88, ^bb8, ^bb9
        ^bb8:  // pred: ^bb7
          %89 = llvm.mul %87, %13 : i64
          %90 = llvm.add %89, %56 : i64
          %91 = llvm.getelementptr %46[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %92 = llvm.load %91 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %93 = llvm.add %87, %30 : i64
          %94 = llvm.mul %93, %13 : i64
          %95 = llvm.add %94, %56 : i64
          %96 = llvm.getelementptr %46[%95] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %97 = llvm.load %96 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %98 = llvm.add %87, %22 : i64
          %99 = llvm.mul %98, %13 : i64
          %100 = llvm.add %99, %56 : i64
          %101 = llvm.getelementptr %46[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %102 = llvm.load %101 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %103 = llvm.add %87, %21 : i64
          %104 = llvm.mul %103, %13 : i64
          %105 = llvm.add %104, %56 : i64
          %106 = llvm.getelementptr %46[%105] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %107 = llvm.load %106 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %108 = llvm.add %87, %20 : i64
          %109 = llvm.mul %108, %13 : i64
          %110 = llvm.add %109, %56 : i64
          %111 = llvm.getelementptr %46[%110] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %112 = llvm.load %111 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %113 = llvm.add %87, %19 : i64
          %114 = llvm.mul %113, %13 : i64
          %115 = llvm.add %114, %56 : i64
          %116 = llvm.getelementptr %46[%115] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %117 = llvm.load %116 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %118 = llvm.add %87, %18 : i64
          %119 = llvm.mul %118, %13 : i64
          %120 = llvm.add %119, %56 : i64
          %121 = llvm.getelementptr %46[%120] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %122 = llvm.load %121 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %123 = llvm.add %87, %17 : i64
          %124 = llvm.mul %123, %13 : i64
          %125 = llvm.add %124, %56 : i64
          %126 = llvm.getelementptr %46[%125] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %127 = llvm.load %126 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %128 = llvm.extractelement %92[%11 : i64] : vector<1xf32>
          %129 = llvm.extractelement %97[%11 : i64] : vector<1xf32>
          %130 = llvm.extractelement %102[%11 : i64] : vector<1xf32>
          %131 = llvm.extractelement %107[%11 : i64] : vector<1xf32>
          %132 = llvm.extractelement %112[%11 : i64] : vector<1xf32>
          %133 = llvm.extractelement %117[%11 : i64] : vector<1xf32>
          %134 = llvm.extractelement %122[%11 : i64] : vector<1xf32>
          %135 = llvm.extractelement %127[%11 : i64] : vector<1xf32>
          %136 = llvm.insertelement %128, %7[%11 : i64] : vector<8xf32>
          %137 = llvm.insertelement %129, %136[%6 : i64] : vector<8xf32>
          %138 = llvm.insertelement %130, %137[%5 : i64] : vector<8xf32>
          %139 = llvm.insertelement %131, %138[%4 : i64] : vector<8xf32>
          %140 = llvm.insertelement %132, %139[%3 : i64] : vector<8xf32>
          %141 = llvm.insertelement %133, %140[%2 : i64] : vector<8xf32>
          %142 = llvm.insertelement %134, %141[%1 : i64] : vector<8xf32>
          %143 = llvm.insertelement %135, %142[%0 : i64] : vector<8xf32>
          %144 = llvm.insertelement %68, %7[%9 : i32] : vector<8xf32>
          %145 = llvm.shufflevector %144, %7 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %146 = llvm.fsub %143, %145 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %147 = llvm.extractelement %86[%11 : i64] : vector<1xf32>
          %148 = llvm.insertelement %147, %7[%9 : i32] : vector<8xf32>
          %149 = llvm.shufflevector %148, %7 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %150 = llvm.fmul %146, %149 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %151 = llvm.fadd %150, %24 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %152 = llvm.mul %56, %28 : i64
          %153 = llvm.add %152, %87 : i64
          %154 = llvm.getelementptr %53[%153] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %151, %154 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %155 = llvm.add %87, %29 : i64
          llvm.br ^bb7(%155 : i64)
        ^bb9:  // pred: ^bb7
          llvm.return %9 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_56_embedded_elf_riscv_64_main_graph$async_dispatch_56_reduction_49x64_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_56_embedded_elf_riscv_64_main_graph$async_dispatch_56_reduction_49x64_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_56_embedded_elf_riscv_64_main_graph$async_dispatch_56_reduction_49x64_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_56_embedded_elf_riscv_64_main_graph$async_dispatch_56_reduction_49x64_f32_buffer = util.global.load immutable @main_graph$async_dispatch_56_embedded_elf_riscv_64_main_graph$async_dispatch_56_reduction_49x64_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_56::@embedded_elf_riscv_64::@main_graph$async_dispatch_56_reduction_49x64_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_56) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_56::@embedded_elf_riscv_64::@main_graph$async_dispatch_56_reduction_49x64_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_56_embedded_elf_riscv_64_main_graph$async_dispatch_56_reduction_49x64_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_56_embedded_elf_riscv_64_main_graph$async_dispatch_56_reduction_49x64_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
