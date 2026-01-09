#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_213 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_213_conv_224x224x64x3x3_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c49 = arith.constant 49 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c49, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_213_conv_224x224x64x3x3_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(224 : index) : i64
          %2 = llvm.mlir.constant(9 : index) : i64
          %3 = llvm.mlir.constant(true) : i1
          %4 = llvm.mlir.constant(51076 : index) : i64
          %5 = llvm.mlir.constant(226 : index) : i64
          %6 = llvm.mlir.constant(8 : i64) : i64
          %7 = llvm.mlir.constant(32 : i64) : i64
          %8 = llvm.mlir.constant(-1 : index) : i64
          %9 = llvm.mlir.constant(dense<127> : vector<8xi32>) : vector<8xi32>
          %10 = llvm.mlir.constant(dense<23> : vector<8xi32>) : vector<8xi32>
          %11 = llvm.mlir.constant(dense<1.270000e+02> : vector<8xf32>) : vector<8xf32>
          %12 = llvm.mlir.constant(dense<-1.270000e+02> : vector<8xf32>) : vector<8xf32>
          %13 = llvm.mlir.constant(dense<8.880000e+01> : vector<8xf32>) : vector<8xf32>
          %14 = llvm.mlir.constant(dense<-8.780000e+01> : vector<8xf32>) : vector<8xf32>
          %15 = llvm.mlir.constant(dense<0.166666657> : vector<8xf32>) : vector<8xf32>
          %16 = llvm.mlir.constant(dense<0.0416657962> : vector<8xf32>) : vector<8xf32>
          %17 = llvm.mlir.constant(dense<0.00833345205> : vector<8xf32>) : vector<8xf32>
          %18 = llvm.mlir.constant(dense<0.00139819994> : vector<8xf32>) : vector<8xf32>
          %19 = llvm.mlir.constant(dense<1.98756912E-4> : vector<8xf32>) : vector<8xf32>
          %20 = llvm.mlir.constant(dense<2.12194442E-4> : vector<8xf32>) : vector<8xf32>
          %21 = llvm.mlir.constant(dense<-0.693359375> : vector<8xf32>) : vector<8xf32>
          %22 = llvm.mlir.constant(dense<1.44269502> : vector<8xf32>) : vector<8xf32>
          %23 = llvm.mlir.constant(dense<5.000000e-01> : vector<8xf32>) : vector<8xf32>
          %24 = llvm.mlir.constant(7 : index) : i64
          %25 = llvm.mlir.constant(dense<1.000000e+01> : vector<8xf32>) : vector<8xf32>
          %26 = llvm.mlir.constant(dense<1.000000e+00> : vector<8xf32>) : vector<8xf32>
          %27 = llvm.mlir.constant(dense<-0.0162797924> : vector<8xf32>) : vector<8xf32>
          %28 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %29 = llvm.mlir.constant(0 : index) : i64
          %30 = llvm.mlir.constant(13847424 : index) : i64
          %31 = llvm.mlir.constant(19096576 : index) : i64
          %32 = llvm.mlir.constant(64 : index) : i64
          %33 = llvm.mlir.constant(3 : index) : i64
          %34 = llvm.mlir.constant(1 : index) : i64
          %35 = llvm.mlir.constant(32 : index) : i64
          %36 = llvm.mlir.constant(8 : index) : i64
          %37 = llvm.alloca %36 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %38 = llvm.alloca %36 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %39 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %40 = llvm.extractvalue %39[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %41 = llvm.load %40 : !llvm.ptr -> !llvm.ptr
          %42 = llvm.mul %31, %6 : i64
          %43 = llvm.udiv %42, %7 : i64
          %44 = llvm.getelementptr %41[%43] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %3 ["align"(%44, %32 : !llvm.ptr, i64)] : i1
          %45 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %46 = llvm.extractvalue %45[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %47 = llvm.getelementptr %46[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %48 = llvm.load %47 : !llvm.ptr -> !llvm.ptr
          %49 = llvm.mul %30, %6 : i64
          %50 = llvm.udiv %49, %7 : i64
          %51 = llvm.getelementptr %48[%50] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %3 ["align"(%51, %32 : !llvm.ptr, i64)] : i1
          %52 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %53 = llvm.extractvalue %52[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %54 = llvm.getelementptr %53[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %55 = llvm.load %54 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %3 ["align"(%55, %32 : !llvm.ptr, i64)] : i1
          %56 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %57 = llvm.extractvalue %56[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %58 = llvm.zext %57 : i32 to i64
          %59 = llvm.sdiv %58, %24 : i64
          %60 = llvm.mul %59, %24 : i64
          %61 = llvm.icmp "ne" %58, %60 : i64
          %62 = llvm.icmp "slt" %58, %29 : i64
          %63 = llvm.and %61, %62 : i1
          %64 = llvm.add %59, %8 : i64
          %65 = llvm.select %63, %64, %59 : i1, i64
          %66 = llvm.srem %58, %24 : i64
          %67 = llvm.icmp "slt" %66, %29 : i64
          %68 = llvm.add %66, %24 overflow<nsw> : i64
          %69 = llvm.select %67, %68, %66 : i1, i64
          %70 = llvm.mul %65, %35 overflow<nsw> : i64
          %71 = llvm.mul %69, %35 overflow<nsw> : i64
          %72 = llvm.mul %29, %36 : i64
          %73 = llvm.add %72, %29 : i64
          %74 = llvm.getelementptr %38[%73] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %28, %74 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          llvm.br ^bb1(%29 : i64)
        ^bb1(%75: i64):  // 2 preds: ^bb0, ^bb16
          %76 = llvm.icmp "slt" %75, %35 : i64
          llvm.cond_br %76, ^bb2(%29 : i64), ^bb17
        ^bb2(%77: i64):  // 2 preds: ^bb1, ^bb15
          %78 = llvm.icmp "slt" %77, %35 : i64
          llvm.cond_br %78, ^bb3, ^bb16
        ^bb3:  // pred: ^bb2
          %79 = llvm.add %77, %71 : i64
          llvm.br ^bb4(%29 : i64)
        ^bb4(%80: i64):  // 2 preds: ^bb3, ^bb5
          %81 = llvm.icmp "slt" %80, %36 : i64
          llvm.cond_br %81, ^bb5, ^bb6(%29 : i64)
        ^bb5:  // pred: ^bb4
          %82 = llvm.mul %29, %36 overflow<nsw, nuw> : i64
          %83 = llvm.add %82, %80 overflow<nsw, nuw> : i64
          %84 = llvm.getelementptr inbounds|nuw %38[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %85 = llvm.load %84 : !llvm.ptr -> f32
          %86 = llvm.getelementptr inbounds|nuw %37[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %85, %86 : f32, !llvm.ptr
          %87 = llvm.add %80, %34 : i64
          llvm.br ^bb4(%87 : i64)
        ^bb6(%88: i64):  // 2 preds: ^bb4, ^bb14
          %89 = llvm.icmp "slt" %88, %32 : i64
          llvm.cond_br %89, ^bb7(%29 : i64), ^bb15
        ^bb7(%90: i64):  // 2 preds: ^bb6, ^bb13
          %91 = llvm.icmp "slt" %90, %33 : i64
          llvm.cond_br %91, ^bb8, ^bb14
        ^bb8:  // pred: ^bb7
          %92 = llvm.add %90, %75 : i64
          %93 = llvm.add %92, %70 : i64
          llvm.br ^bb9(%29 : i64)
        ^bb9(%94: i64):  // 2 preds: ^bb8, ^bb12
          %95 = llvm.icmp "slt" %94, %36 : i64
          llvm.cond_br %95, ^bb10(%29 : i64), ^bb13
        ^bb10(%96: i64):  // 2 preds: ^bb9, ^bb11
          %97 = llvm.icmp "slt" %96, %33 : i64
          llvm.cond_br %97, ^bb11, ^bb12
        ^bb11:  // pred: ^bb10
          %98 = llvm.add %79, %94 : i64
          %99 = llvm.add %98, %96 : i64
          %100 = llvm.mul %88, %4 overflow<nsw, nuw> : i64
          %101 = llvm.mul %93, %5 overflow<nsw, nuw> : i64
          %102 = llvm.add %100, %101 overflow<nsw, nuw> : i64
          %103 = llvm.add %102, %99 overflow<nsw, nuw> : i64
          %104 = llvm.getelementptr inbounds|nuw %44[%103] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %105 = llvm.load %104 : !llvm.ptr -> f32
          %106 = llvm.mul %88, %2 overflow<nsw, nuw> : i64
          %107 = llvm.mul %90, %33 overflow<nsw, nuw> : i64
          %108 = llvm.add %106, %107 overflow<nsw, nuw> : i64
          %109 = llvm.add %108, %96 overflow<nsw, nuw> : i64
          %110 = llvm.getelementptr inbounds|nuw %51[%109] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %111 = llvm.load %110 : !llvm.ptr -> f32
          %112 = llvm.mul %29, %36 overflow<nsw, nuw> : i64
          %113 = llvm.add %112, %94 overflow<nsw, nuw> : i64
          %114 = llvm.getelementptr inbounds|nuw %37[%113] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %115 = llvm.load %114 : !llvm.ptr -> f32
          %116 = llvm.fmul %105, %111 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %117 = llvm.fadd %115, %116 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %117, %114 : f32, !llvm.ptr
          %118 = llvm.add %96, %34 : i64
          llvm.br ^bb10(%118 : i64)
        ^bb12:  // pred: ^bb10
          %119 = llvm.add %94, %34 : i64
          llvm.br ^bb9(%119 : i64)
        ^bb13:  // pred: ^bb9
          %120 = llvm.add %90, %34 : i64
          llvm.br ^bb7(%120 : i64)
        ^bb14:  // pred: ^bb7
          %121 = llvm.add %88, %34 : i64
          llvm.br ^bb6(%121 : i64)
        ^bb15:  // pred: ^bb6
          %122 = llvm.getelementptr %37[%73] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %123 = llvm.load %122 {alignment = 4 : i64} : !llvm.ptr -> vector<8xf32>
          %124 = llvm.fadd %123, %27 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %125 = llvm.fneg %124 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %126 = llvm.fcmp "uge" %125, %14 : vector<8xf32>
          %127 = llvm.select %126, %125, %14 : vector<8xi1>, vector<8xf32>
          %128 = llvm.fcmp "ule" %127, %13 : vector<8xf32>
          %129 = llvm.select %128, %127, %13 : vector<8xi1>, vector<8xf32>
          %130 = llvm.intr.fma(%129, %22, %23) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %131 = llvm.intr.floor(%130) : (vector<8xf32>) -> vector<8xf32>
          %132 = llvm.fcmp "uge" %131, %12 : vector<8xf32>
          %133 = llvm.select %132, %131, %12 : vector<8xi1>, vector<8xf32>
          %134 = llvm.fcmp "ule" %133, %11 : vector<8xf32>
          %135 = llvm.select %134, %133, %11 : vector<8xi1>, vector<8xf32>
          %136 = llvm.intr.fma(%21, %135, %129) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %137 = llvm.intr.fma(%20, %135, %136) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %138 = llvm.intr.fma(%137, %19, %18) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %139 = llvm.intr.fma(%138, %137, %17) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %140 = llvm.intr.fma(%139, %137, %16) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %141 = llvm.intr.fma(%140, %137, %15) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %142 = llvm.intr.fma(%141, %137, %23) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %143 = llvm.fmul %137, %137 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %144 = llvm.intr.fma(%142, %143, %137) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
          %145 = llvm.fadd %144, %26 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %146 = llvm.fptosi %135 : vector<8xf32> to vector<8xi32>
          %147 = llvm.add %146, %9 : vector<8xi32>
          %148 = llvm.shl %147, %10 : vector<8xi32>
          %149 = llvm.bitcast %148 : vector<8xi32> to vector<8xf32>
          %150 = llvm.fmul %145, %149 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %151 = llvm.fadd %150, %26 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %152 = llvm.fdiv %26, %151 : vector<8xf32>
          %153 = llvm.fmul %152, %25 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %154 = llvm.add %70, %75 : i64
          %155 = llvm.mul %154, %1 : i64
          %156 = llvm.add %155, %79 : i64
          %157 = llvm.getelementptr %55[%156] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %153, %157 {alignment = 4 : i64} : vector<8xf32>, !llvm.ptr
          %158 = llvm.add %77, %36 : i64
          llvm.br ^bb2(%158 : i64)
        ^bb16:  // pred: ^bb2
          %159 = llvm.add %75, %34 : i64
          llvm.br ^bb1(%159 : i64)
        ^bb17:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_213_embedded_elf_riscv_64_main_graph$async_dispatch_213_conv_224x224x64x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %c46984448 = arith.constant 46984448 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c46984448}
    util.global.store %buffer, @main_graph$async_dispatch_213_embedded_elf_riscv_64_main_graph$async_dispatch_213_conv_224x224x64x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_213_embedded_elf_riscv_64_main_graph$async_dispatch_213_conv_224x224x64x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c200704 = arith.constant 200704 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_213_embedded_elf_riscv_64_main_graph$async_dispatch_213_conv_224x224x64x3x3_f32_buffer = util.global.load immutable @main_graph$async_dispatch_213_embedded_elf_riscv_64_main_graph$async_dispatch_213_conv_224x224x64x3x3_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_213::@embedded_elf_riscv_64::@main_graph$async_dispatch_213_conv_224x224x64x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_213) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_213::@embedded_elf_riscv_64::@main_graph$async_dispatch_213_conv_224x224x64x3x3_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_213_embedded_elf_riscv_64_main_graph$async_dispatch_213_conv_224x224x64x3x3_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_213_embedded_elf_riscv_64_main_graph$async_dispatch_213_conv_224x224x64x3x3_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_213_embedded_elf_riscv_64_main_graph$async_dispatch_213_conv_224x224x64x3x3_f32_buffer : !hal.buffer)[%c46783744, %c200704]
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
