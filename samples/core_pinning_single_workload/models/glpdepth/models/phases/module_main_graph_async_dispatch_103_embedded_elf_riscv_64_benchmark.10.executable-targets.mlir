#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_103 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_103_reduction_49x160_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c49 = arith.constant 49 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c49, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_103_reduction_49x160_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
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
          %12 = llvm.mlir.constant(64 : index) : i64
          %13 = llvm.mlir.constant(true) : i1
          %14 = llvm.mlir.constant(49 : index) : i64
          %15 = llvm.mlir.constant(8 : i64) : i64
          %16 = llvm.mlir.constant(32 : i64) : i64
          %17 = llvm.mlir.constant(1.600000e+02 : f32) : f32
          %18 = llvm.mlir.constant(7 : index) : i64
          %19 = llvm.mlir.constant(6 : index) : i64
          %20 = llvm.mlir.constant(5 : index) : i64
          %21 = llvm.mlir.constant(4 : index) : i64
          %22 = llvm.mlir.constant(3 : index) : i64
          %23 = llvm.mlir.constant(2 : index) : i64
          %24 = llvm.mlir.constant(0.000000e+00 : f32) : f32
          %25 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %26 = llvm.mlir.constant(dense<9.99999974E-6> : vector<1xf32>) : vector<1xf32>
          %27 = llvm.mlir.constant(dense<1.600000e+02> : vector<1xf32>) : vector<1xf32>
          %28 = llvm.mlir.constant(dense<0.000000e+00> : vector<1xf32>) : vector<1xf32>
          %29 = llvm.mlir.constant(8 : index) : i64
          %30 = llvm.mlir.constant(160 : index) : i64
          %31 = llvm.mlir.constant(20 : index) : i64
          %32 = llvm.mlir.constant(1 : index) : i64
          %33 = llvm.mlir.constant(0 : index) : i64
          %34 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %35 = llvm.extractvalue %34[9] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %36 = llvm.load %35 : !llvm.ptr -> i32
          %37 = llvm.getelementptr %35[1] : (!llvm.ptr) -> !llvm.ptr, i32
          %38 = llvm.load %37 : !llvm.ptr -> i32
          %39 = llvm.getelementptr %35[2] : (!llvm.ptr) -> !llvm.ptr, i32
          %40 = llvm.load %39 : !llvm.ptr -> i32
          %41 = llvm.zext %36 : i32 to i64
          %42 = llvm.zext %38 : i32 to i64
          %43 = llvm.zext %40 : i32 to i64
          %44 = llvm.extractvalue %34[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %45 = llvm.load %44 : !llvm.ptr -> !llvm.ptr
          %46 = llvm.mul %41, %15 : i64
          %47 = llvm.udiv %46, %16 : i64
          %48 = llvm.getelementptr %45[%47] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%48, %12 : !llvm.ptr, i64)] : i1
          %49 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %50 = llvm.extractvalue %49[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %51 = llvm.load %50 : !llvm.ptr -> !llvm.ptr
          %52 = llvm.mul %42, %15 : i64
          %53 = llvm.udiv %52, %16 : i64
          %54 = llvm.getelementptr %51[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%54, %12 : !llvm.ptr, i64)] : i1
          %55 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %56 = llvm.extractvalue %55[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %57 = llvm.getelementptr %56[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %58 = llvm.load %57 : !llvm.ptr -> !llvm.ptr
          %59 = llvm.mul %43, %15 : i64
          %60 = llvm.udiv %59, %16 : i64
          %61 = llvm.getelementptr %58[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%61, %12 : !llvm.ptr, i64)] : i1
          %62 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %63 = llvm.extractvalue %62[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %64 = llvm.zext %63 : i32 to i64
          llvm.br ^bb1(%33, %25 : i64, vector<8xf32>)
        ^bb1(%65: i64, %66: vector<8xf32>):  // 2 preds: ^bb0, ^bb2
          %67 = llvm.icmp "slt" %65, %31 : i64
          llvm.cond_br %67, ^bb2, ^bb3
        ^bb2:  // pred: ^bb1
          %68 = llvm.mul %65, %29 overflow<nsw> : i64
          %69 = llvm.mul %64, %30 : i64
          %70 = llvm.add %69, %68 : i64
          %71 = llvm.getelementptr %48[%70] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %72 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %73 = llvm.fadd %66, %72 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %74 = llvm.add %65, %32 : i64
          llvm.br ^bb1(%74, %73 : i64, vector<8xf32>)
        ^bb3:  // pred: ^bb1
          %75 = "llvm.intr.vector.reduce.fadd"(%24, %66) <{fastmathFlags = #llvm.fastmath<reassoc>}> : (f32, vector<8xf32>) -> f32
          %76 = llvm.fdiv %75, %17 : f32
          llvm.br ^bb4(%33, %28 : i64, vector<1xf32>)
        ^bb4(%77: i64, %78: vector<1xf32>):  // 2 preds: ^bb3, ^bb5
          %79 = llvm.icmp "slt" %77, %30 : i64
          llvm.cond_br %79, ^bb5, ^bb6
        ^bb5:  // pred: ^bb4
          %80 = llvm.mul %77, %14 : i64
          %81 = llvm.add %80, %64 : i64
          %82 = llvm.getelementptr %54[%81] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %83 = llvm.load %82 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %84 = llvm.extractelement %83[%11 : i64] : vector<1xf32>
          %85 = llvm.fsub %84, %76 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %86 = llvm.extractelement %78[%11 : i64] : vector<1xf32>
          %87 = llvm.fmul %85, %85 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %88 = llvm.fadd %87, %86 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %89 = llvm.insertelement %88, %10[%9 : i32] : vector<1xf32>
          %90 = llvm.add %77, %32 : i64
          llvm.br ^bb4(%90, %89 : i64, vector<1xf32>)
        ^bb6:  // pred: ^bb4
          %91 = llvm.fdiv %78, %27 : vector<1xf32>
          %92 = llvm.fadd %91, %26 {fastmathFlags = #llvm.fastmath<contract>} : vector<1xf32>
          %93 = llvm.intr.sqrt(%92) : (vector<1xf32>) -> vector<1xf32>
          %94 = llvm.fdiv %8, %93 : vector<1xf32>
          llvm.br ^bb7(%33 : i64)
        ^bb7(%95: i64):  // 2 preds: ^bb6, ^bb8
          %96 = llvm.icmp "slt" %95, %30 : i64
          llvm.cond_br %96, ^bb8, ^bb9
        ^bb8:  // pred: ^bb7
          %97 = llvm.mul %95, %14 : i64
          %98 = llvm.add %97, %64 : i64
          %99 = llvm.getelementptr %54[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %100 = llvm.load %99 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %101 = llvm.add %95, %32 : i64
          %102 = llvm.mul %101, %14 : i64
          %103 = llvm.add %102, %64 : i64
          %104 = llvm.getelementptr %54[%103] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %105 = llvm.load %104 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %106 = llvm.add %95, %23 : i64
          %107 = llvm.mul %106, %14 : i64
          %108 = llvm.add %107, %64 : i64
          %109 = llvm.getelementptr %54[%108] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %110 = llvm.load %109 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %111 = llvm.add %95, %22 : i64
          %112 = llvm.mul %111, %14 : i64
          %113 = llvm.add %112, %64 : i64
          %114 = llvm.getelementptr %54[%113] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %115 = llvm.load %114 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %116 = llvm.add %95, %21 : i64
          %117 = llvm.mul %116, %14 : i64
          %118 = llvm.add %117, %64 : i64
          %119 = llvm.getelementptr %54[%118] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %120 = llvm.load %119 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %121 = llvm.add %95, %20 : i64
          %122 = llvm.mul %121, %14 : i64
          %123 = llvm.add %122, %64 : i64
          %124 = llvm.getelementptr %54[%123] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %125 = llvm.load %124 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %126 = llvm.add %95, %19 : i64
          %127 = llvm.mul %126, %14 : i64
          %128 = llvm.add %127, %64 : i64
          %129 = llvm.getelementptr %54[%128] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %130 = llvm.load %129 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %131 = llvm.add %95, %18 : i64
          %132 = llvm.mul %131, %14 : i64
          %133 = llvm.add %132, %64 : i64
          %134 = llvm.getelementptr %54[%133] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %135 = llvm.load %134 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          %136 = llvm.extractelement %100[%11 : i64] : vector<1xf32>
          %137 = llvm.extractelement %105[%11 : i64] : vector<1xf32>
          %138 = llvm.extractelement %110[%11 : i64] : vector<1xf32>
          %139 = llvm.extractelement %115[%11 : i64] : vector<1xf32>
          %140 = llvm.extractelement %120[%11 : i64] : vector<1xf32>
          %141 = llvm.extractelement %125[%11 : i64] : vector<1xf32>
          %142 = llvm.extractelement %130[%11 : i64] : vector<1xf32>
          %143 = llvm.extractelement %135[%11 : i64] : vector<1xf32>
          %144 = llvm.insertelement %136, %7[%11 : i64] : vector<8xf32>
          %145 = llvm.insertelement %137, %144[%6 : i64] : vector<8xf32>
          %146 = llvm.insertelement %138, %145[%5 : i64] : vector<8xf32>
          %147 = llvm.insertelement %139, %146[%4 : i64] : vector<8xf32>
          %148 = llvm.insertelement %140, %147[%3 : i64] : vector<8xf32>
          %149 = llvm.insertelement %141, %148[%2 : i64] : vector<8xf32>
          %150 = llvm.insertelement %142, %149[%1 : i64] : vector<8xf32>
          %151 = llvm.insertelement %143, %150[%0 : i64] : vector<8xf32>
          %152 = llvm.insertelement %76, %7[%9 : i32] : vector<8xf32>
          %153 = llvm.shufflevector %152, %7 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %154 = llvm.fsub %151, %153 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %155 = llvm.extractelement %94[%11 : i64] : vector<1xf32>
          %156 = llvm.insertelement %155, %7[%9 : i32] : vector<8xf32>
          %157 = llvm.shufflevector %156, %7 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %158 = llvm.fmul %154, %157 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %159 = llvm.fadd %158, %25 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %160 = llvm.mul %64, %30 : i64
          %161 = llvm.add %160, %95 : i64
          %162 = llvm.getelementptr %61[%161] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %159, %162 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %163 = llvm.add %95, %29 : i64
          llvm.br ^bb7(%163 : i64)
        ^bb9:  // pred: ^bb7
          llvm.return %9 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_103_embedded_elf_riscv_64_main_graph$async_dispatch_103_reduction_49x160_f32_buffer : !hal.buffer
  util.initializer {
    %c64344064 = arith.constant 64344064 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c64344064}
    util.global.store %buffer, @main_graph$async_dispatch_103_embedded_elf_riscv_64_main_graph$async_dispatch_103_reduction_49x160_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_103_embedded_elf_riscv_64_main_graph$async_dispatch_103_reduction_49x160_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c432768_i32 = arith.constant 432768 : i32
    %c401408_i32 = arith.constant 401408 : i32
    %c464128_i32 = arith.constant 464128 : i32
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_103_embedded_elf_riscv_64_main_graph$async_dispatch_103_reduction_49x160_f32_buffer = util.global.load immutable @main_graph$async_dispatch_103_embedded_elf_riscv_64_main_graph$async_dispatch_103_reduction_49x160_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_103::@embedded_elf_riscv_64::@main_graph$async_dispatch_103_reduction_49x160_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_103) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_103::@embedded_elf_riscv_64::@main_graph$async_dispatch_103_reduction_49x160_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) constants([%c432768_i32, %c401408_i32, %c464128_i32]) bindings([
      (%main_graph$async_dispatch_103_embedded_elf_riscv_64_main_graph$async_dispatch_103_reduction_49x160_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_103_embedded_elf_riscv_64_main_graph$async_dispatch_103_reduction_49x160_f32_buffer : !hal.buffer)[%c32172032, %c32172032]
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
