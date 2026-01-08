#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_146 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c56 = arith.constant 56 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c56, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.func @main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.constant(6 : i64) : i64
          %2 = llvm.mlir.constant(5 : i64) : i64
          %3 = llvm.mlir.constant(4 : i64) : i64
          %4 = llvm.mlir.constant(3 : i64) : i64
          %5 = llvm.mlir.constant(2 : i64) : i64
          %6 = llvm.mlir.constant(1 : i64) : i64
          %7 = llvm.mlir.constant(0 : i64) : i64
          %8 = llvm.mlir.constant(1792 : index) : i64
          %9 = llvm.mlir.constant(49 : index) : i64
          %10 = llvm.mlir.constant(1440 : index) : i64
          %11 = llvm.mlir.constant(9 : index) : i64
          %12 = llvm.mlir.constant(64 : index) : i64
          %13 = llvm.mlir.constant(true) : i1
          %14 = llvm.mlir.constant(256 : index) : i64
          %15 = llvm.mlir.constant(16 : index) : i64
          %16 = llvm.mlir.constant(8 : i64) : i64
          %17 = llvm.mlir.constant(32 : i64) : i64
          %18 = llvm.mlir.poison : !llvm.array<7 x vector<1xf32>>
          %19 = llvm.mlir.constant(-1 : index) : i64
          %20 = llvm.mlir.constant(6 : index) : i64
          %21 = llvm.mlir.constant(5 : index) : i64
          %22 = llvm.mlir.constant(4 : index) : i64
          %23 = llvm.mlir.constant(7 : index) : i64
          %24 = llvm.mlir.constant(2 : index) : i64
          %25 = llvm.mlir.constant(dense<0.000000e+00> : vector<7xf32>) : vector<7xf32>
          %26 = llvm.mlir.constant(32 : index) : i64
          %27 = llvm.mlir.constant(1 : index) : i64
          %28 = llvm.mlir.constant(3 : index) : i64
          %29 = llvm.mlir.constant(160 : index) : i64
          %30 = llvm.mlir.constant(0 : index) : i64
          %31 = llvm.mlir.constant(1128960 : index) : i64
          %32 = llvm.mlir.constant(11633152 : index) : i64
          %33 = llvm.mlir.constant(1003520 : index) : i64
          %34 = llvm.mlir.constant(1053696 : index) : i64
          %35 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %36 = llvm.extractvalue %35[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %37 = llvm.load %36 : !llvm.ptr -> !llvm.ptr
          %38 = llvm.mul %31, %16 : i64
          %39 = llvm.udiv %38, %17 : i64
          %40 = llvm.getelementptr %37[%39] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%40, %12 : !llvm.ptr, i64)] : i1
          %41 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %42 = llvm.extractvalue %41[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %43 = llvm.getelementptr %42[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %44 = llvm.load %43 : !llvm.ptr -> !llvm.ptr
          %45 = llvm.mul %32, %16 : i64
          %46 = llvm.udiv %45, %17 : i64
          %47 = llvm.getelementptr %44[%46] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%47, %12 : !llvm.ptr, i64)] : i1
          %48 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %49 = llvm.extractvalue %48[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %50 = llvm.getelementptr %49[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %51 = llvm.load %50 : !llvm.ptr -> !llvm.ptr
          %52 = llvm.mul %33, %16 : i64
          %53 = llvm.udiv %52, %17 : i64
          %54 = llvm.getelementptr %51[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%54, %12 : !llvm.ptr, i64)] : i1
          %55 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %56 = llvm.extractvalue %55[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %57 = llvm.getelementptr %56[3] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %58 = llvm.load %57 : !llvm.ptr -> !llvm.ptr
          %59 = llvm.mul %34, %16 : i64
          %60 = llvm.udiv %59, %17 : i64
          %61 = llvm.getelementptr %58[%60] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %13 ["align"(%61, %12 : !llvm.ptr, i64)] : i1
          %62 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %63 = llvm.extractvalue %62[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %64 = llvm.zext %63 : i32 to i64
          %65 = llvm.sdiv %64, %23 : i64
          %66 = llvm.mul %65, %23 : i64
          %67 = llvm.icmp "ne" %64, %66 : i64
          %68 = llvm.icmp "slt" %64, %30 : i64
          %69 = llvm.and %67, %68 : i1
          %70 = llvm.add %65, %19 : i64
          %71 = llvm.select %69, %70, %65 : i1, i64
          %72 = llvm.srem %64, %23 : i64
          %73 = llvm.icmp "slt" %72, %30 : i64
          %74 = llvm.add %72, %23 overflow<nsw> : i64
          %75 = llvm.select %73, %74, %72 : i1, i64
          %76 = llvm.mul %71, %26 overflow<nsw> : i64
          llvm.br ^bb1(%30 : i64)
        ^bb1(%77: i64):  // 2 preds: ^bb0, ^bb12
          %78 = llvm.icmp "slt" %77, %26 : i64
          llvm.cond_br %78, ^bb2, ^bb13
        ^bb2:  // pred: ^bb1
          %79 = llvm.add %76, %77 : i64
          %80 = llvm.mul %79, %9 : i64
          %81 = llvm.mul %75, %23 : i64
          %82 = llvm.add %80, %81 : i64
          %83 = llvm.add %82, %30 : i64
          %84 = llvm.getelementptr %54[%83] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %25, %84 {alignment = 4 : i64} : vector<7xf32>, !llvm.ptr
          llvm.br ^bb3(%30 : i64)
        ^bb3(%85: i64):  // 2 preds: ^bb2, ^bb11
          %86 = llvm.icmp "slt" %85, %29 : i64
          llvm.cond_br %86, ^bb4(%30 : i64), ^bb12
        ^bb4(%87: i64):  // 2 preds: ^bb3, ^bb10
          %88 = llvm.icmp "slt" %87, %28 : i64
          llvm.cond_br %88, ^bb5, ^bb11
        ^bb5:  // pred: ^bb4
          %89 = llvm.mul %75, %24 overflow<nsw> : i64
          %90 = llvm.add %89, %87 : i64
          llvm.br ^bb6(%30 : i64)
        ^bb6(%91: i64):  // 2 preds: ^bb5, ^bb9
          %92 = llvm.icmp "slt" %91, %23 : i64
          llvm.cond_br %92, ^bb7(%30 : i64), ^bb10
        ^bb7(%93: i64):  // 2 preds: ^bb6, ^bb8
          %94 = llvm.icmp "slt" %93, %28 : i64
          llvm.cond_br %94, ^bb8, ^bb9
        ^bb8:  // pred: ^bb7
          %95 = llvm.mul %91, %24 overflow<nsw> : i64
          %96 = llvm.add %95, %93 : i64
          %97 = llvm.mul %85, %14 overflow<nsw, nuw> : i64
          %98 = llvm.mul %90, %15 overflow<nsw, nuw> : i64
          %99 = llvm.add %97, %98 overflow<nsw, nuw> : i64
          %100 = llvm.add %99, %96 overflow<nsw, nuw> : i64
          %101 = llvm.getelementptr inbounds|nuw %40[%100] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %102 = llvm.load %101 : !llvm.ptr -> f32
          %103 = llvm.mul %79, %10 overflow<nsw, nuw> : i64
          %104 = llvm.mul %85, %11 overflow<nsw, nuw> : i64
          %105 = llvm.add %103, %104 overflow<nsw, nuw> : i64
          %106 = llvm.mul %87, %28 overflow<nsw, nuw> : i64
          %107 = llvm.add %105, %106 overflow<nsw, nuw> : i64
          %108 = llvm.add %107, %93 overflow<nsw, nuw> : i64
          %109 = llvm.getelementptr inbounds|nuw %47[%108] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %110 = llvm.load %109 : !llvm.ptr -> f32
          %111 = llvm.mul %79, %9 overflow<nsw, nuw> : i64
          %112 = llvm.mul %75, %23 overflow<nsw, nuw> : i64
          %113 = llvm.add %111, %112 overflow<nsw, nuw> : i64
          %114 = llvm.add %113, %91 overflow<nsw, nuw> : i64
          %115 = llvm.getelementptr inbounds|nuw %54[%114] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %116 = llvm.load %115 : !llvm.ptr -> f32
          %117 = llvm.fmul %102, %110 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %118 = llvm.fadd %116, %117 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %118, %115 : f32, !llvm.ptr
          %119 = llvm.add %93, %27 : i64
          llvm.br ^bb7(%119 : i64)
        ^bb9:  // pred: ^bb7
          %120 = llvm.add %91, %27 : i64
          llvm.br ^bb6(%120 : i64)
        ^bb10:  // pred: ^bb6
          %121 = llvm.add %87, %27 : i64
          llvm.br ^bb4(%121 : i64)
        ^bb11:  // pred: ^bb4
          %122 = llvm.add %85, %27 : i64
          llvm.br ^bb3(%122 : i64)
        ^bb12:  // pred: ^bb3
          %123 = llvm.load %84 {alignment = 4 : i64} : !llvm.ptr -> vector<7xf32>
          %124 = llvm.extractelement %123[%7 : i64] : vector<7xf32>
          %125 = llvm.extractvalue %18[0] : !llvm.array<7 x vector<1xf32>> 
          %126 = llvm.insertelement %124, %125[%7 : i64] : vector<1xf32>
          %127 = llvm.extractelement %123[%6 : i64] : vector<7xf32>
          %128 = llvm.extractvalue %18[1] : !llvm.array<7 x vector<1xf32>> 
          %129 = llvm.insertelement %127, %128[%7 : i64] : vector<1xf32>
          %130 = llvm.extractelement %123[%5 : i64] : vector<7xf32>
          %131 = llvm.extractvalue %18[2] : !llvm.array<7 x vector<1xf32>> 
          %132 = llvm.insertelement %130, %131[%7 : i64] : vector<1xf32>
          %133 = llvm.extractelement %123[%4 : i64] : vector<7xf32>
          %134 = llvm.extractvalue %18[3] : !llvm.array<7 x vector<1xf32>> 
          %135 = llvm.insertelement %133, %134[%7 : i64] : vector<1xf32>
          %136 = llvm.extractelement %123[%3 : i64] : vector<7xf32>
          %137 = llvm.extractvalue %18[4] : !llvm.array<7 x vector<1xf32>> 
          %138 = llvm.insertelement %136, %137[%7 : i64] : vector<1xf32>
          %139 = llvm.extractelement %123[%2 : i64] : vector<7xf32>
          %140 = llvm.extractvalue %18[5] : !llvm.array<7 x vector<1xf32>> 
          %141 = llvm.insertelement %139, %140[%7 : i64] : vector<1xf32>
          %142 = llvm.extractelement %123[%1 : i64] : vector<7xf32>
          %143 = llvm.extractvalue %18[6] : !llvm.array<7 x vector<1xf32>> 
          %144 = llvm.insertelement %142, %143[%7 : i64] : vector<1xf32>
          %145 = llvm.mul %75, %8 : i64
          %146 = llvm.mul %30, %14 : i64
          %147 = llvm.add %145, %146 : i64
          %148 = llvm.add %147, %79 : i64
          %149 = llvm.getelementptr %61[%148] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %126, %149 {alignment = 4 : i64} : vector<1xf32>, !llvm.ptr
          %150 = llvm.mul %27, %14 : i64
          %151 = llvm.add %145, %150 : i64
          %152 = llvm.add %151, %79 : i64
          %153 = llvm.getelementptr %61[%152] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %129, %153 {alignment = 4 : i64} : vector<1xf32>, !llvm.ptr
          %154 = llvm.mul %24, %14 : i64
          %155 = llvm.add %145, %154 : i64
          %156 = llvm.add %155, %79 : i64
          %157 = llvm.getelementptr %61[%156] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %132, %157 {alignment = 4 : i64} : vector<1xf32>, !llvm.ptr
          %158 = llvm.mul %28, %14 : i64
          %159 = llvm.add %145, %158 : i64
          %160 = llvm.add %159, %79 : i64
          %161 = llvm.getelementptr %61[%160] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %135, %161 {alignment = 4 : i64} : vector<1xf32>, !llvm.ptr
          %162 = llvm.mul %22, %14 : i64
          %163 = llvm.add %145, %162 : i64
          %164 = llvm.add %163, %79 : i64
          %165 = llvm.getelementptr %61[%164] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %138, %165 {alignment = 4 : i64} : vector<1xf32>, !llvm.ptr
          %166 = llvm.mul %21, %14 : i64
          %167 = llvm.add %145, %166 : i64
          %168 = llvm.add %167, %79 : i64
          %169 = llvm.getelementptr %61[%168] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %141, %169 {alignment = 4 : i64} : vector<1xf32>, !llvm.ptr
          %170 = llvm.mul %20, %14 : i64
          %171 = llvm.add %145, %170 : i64
          %172 = llvm.add %171, %79 : i64
          %173 = llvm.getelementptr %61[%172] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %144, %173 {alignment = 4 : i64} : vector<1xf32>, !llvm.ptr
          %174 = llvm.add %77, %27 : i64
          llvm.br ^bb1(%174 : i64)
        ^bb13:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_146_embedded_elf_riscv_64_main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %c111127808 = arith.constant 111127808 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c111127808}
    util.global.store %buffer, @main_graph$async_dispatch_146_embedded_elf_riscv_64_main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_146_embedded_elf_riscv_64_main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c78955776 = arith.constant 78955776 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_146_embedded_elf_riscv_64_main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32_buffer = util.global.load immutable @main_graph$async_dispatch_146_embedded_elf_riscv_64_main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_146::@embedded_elf_riscv_64::@main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_146) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_146::@embedded_elf_riscv_64::@main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_146_embedded_elf_riscv_64_main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_146_embedded_elf_riscv_64_main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_146_embedded_elf_riscv_64_main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32_buffer : !hal.buffer)[%c46783744, %c32172032], 
      (%main_graph$async_dispatch_146_embedded_elf_riscv_64_main_graph$async_dispatch_146_conv_256x7x7x160x3x3_f32_buffer : !hal.buffer)[%c78955776, %c32172032]
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
