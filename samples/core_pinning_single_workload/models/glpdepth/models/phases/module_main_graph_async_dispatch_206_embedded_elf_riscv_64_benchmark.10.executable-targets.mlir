#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c,+v,+zvl256b,+zba,+zbb,+zbc,+zbs,+zicbom,+zicboz,+zicbop,+zihintpause", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, loop_vectorization = true, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_riscv_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  hal.executable private @main_graph$async_dispatch_206 {
    hal.executable.variant public @embedded_elf_riscv_64 target(#executable_target_embedded_elf_riscv_64) {
      hal.executable.export public @main_graph$async_dispatch_206_conv_64x56x56x128x3x3_f32 ordinal(0) layout(#pipeline_layout) count(%arg0: !hal.device) -> (index, index, index) {
        %c16 = arith.constant 16 : index
        %c1 = arith.constant 1 : index
        %c1_0 = arith.constant 1 : index
        hal.return %c16, %c1, %c1_0 : index, index, index
      } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", llvm.target_triple = "riscv64-unknown-unknown-eabi-elf"} {
        llvm.mlir.global private constant @__constant_64xf32(dense<[0.0172930621, -0.00134235981, 8.75238155E-4, 0.0120614367, -0.00739884889, 0.00968477782, 6.3423664E-5, 0.0164195336, 0.00516464887, 0.0129958559, -0.0250310861, -0.00708187139, -2.79836124E-4, -0.00164426328, -0.0081059048, -0.0129927332, 2.718010e-02, -0.00340513582, 0.00735799503, 4.45409154E-4, 0.00164488133, 0.0119027197, 0.0222565606, 0.00859456323, -0.021469472, -0.017538242, -0.0109796524, 0.0189730916, 0.0155779412, 0.0264282767, -0.0186399799, -0.00254831207, -0.00311517739, 0.00685905619, -0.00278152712, 0.0211544298, 0.013318467, 0.0250967685, -0.0149505222, -0.0162949823, -0.00479251146, 2.202190e-03, 0.0108546633, -0.00962431077, 0.0250827968, 0.0156157054, 0.0128867775, 0.022866305, 0.0133225871, 0.0182020888, 0.0122047672, -0.0294233188, 6.52366725E-4, -0.0205670968, -0.0261930153, -0.00366725959, -0.0140920579, -4.97962523E-4, 0.029233275, 0.0221376959, -0.0154047431, -0.0229184236, -0.0281268805, -0.0109335575]> : tensor<64xf32>) {addr_space = 0 : i32, alignment = 64 : i64, sym_visibility = "private"} : !llvm.array<64 x f32>
        llvm.func @main_graph$async_dispatch_206_conv_64x56x56x128x3x3_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i64) : i64
          %1 = llvm.mlir.constant(0 : i32) : i32
          %2 = llvm.mlir.poison : vector<8xi32>
          %3 = llvm.mlir.constant(1152 : index) : i64
          %4 = llvm.mlir.constant(9 : index) : i64
          %5 = llvm.mlir.constant(true) : i1
          %6 = llvm.mlir.constant(3364 : index) : i64
          %7 = llvm.mlir.constant(58 : index) : i64
          %8 = llvm.mlir.constant(8 : i64) : i64
          %9 = llvm.mlir.constant(32 : i64) : i64
          %10 = llvm.mlir.addressof @__constant_64xf32 : !llvm.ptr
          %11 = llvm.mlir.constant(-1 : index) : i64
          %12 = llvm.mlir.constant(8 : index) : i64
          %13 = llvm.mlir.constant(28 : index) : i64
          %14 = llvm.mlir.constant(16 : index) : i64
          %15 = llvm.mlir.constant(1 : index) : i64
          %16 = llvm.mlir.constant(3 : index) : i64
          %17 = llvm.mlir.constant(128 : index) : i64
          %18 = llvm.mlir.constant(0 : index) : i64
          %19 = llvm.mlir.constant(4 : index) : i64
          %20 = llvm.mlir.constant(2 : index) : i64
          %21 = llvm.mlir.poison : vector<8xf32>
          %22 = llvm.mlir.constant(dense<[0, 1, 2, 3, 4, 5, 6, 7]> : vector<8xi32>) : vector<8xi32>
          %23 = llvm.mlir.constant(dense<0.000000e+00> : vector<8xf32>) : vector<8xf32>
          %24 = llvm.mlir.constant(5335040 : index) : i64
          %25 = llvm.mlir.constant(8728576 : index) : i64
          %26 = llvm.mlir.constant(3612672 : index) : i64
          %27 = llvm.mlir.constant(64 : index) : i64
          %28 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<64 x f32>
          %29 = llvm.alloca %12 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %30 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %31 = llvm.extractvalue %30[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %32 = llvm.load %31 : !llvm.ptr -> !llvm.ptr
          %33 = llvm.mul %26, %8 : i64
          %34 = llvm.udiv %33, %9 : i64
          %35 = llvm.getelementptr %32[%34] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%35, %27 : !llvm.ptr, i64)] : i1
          %36 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %37 = llvm.extractvalue %36[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %38 = llvm.getelementptr %37[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %39 = llvm.load %38 : !llvm.ptr -> !llvm.ptr
          %40 = llvm.mul %25, %8 : i64
          %41 = llvm.udiv %40, %9 : i64
          %42 = llvm.getelementptr %39[%41] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%42, %27 : !llvm.ptr, i64)] : i1
          %43 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %44 = llvm.extractvalue %43[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %45 = llvm.getelementptr %44[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %46 = llvm.load %45 : !llvm.ptr -> !llvm.ptr
          %47 = llvm.mul %24, %8 : i64
          %48 = llvm.udiv %47, %9 : i64
          %49 = llvm.getelementptr %46[%48] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.assume %5 ["align"(%49, %27 : !llvm.ptr, i64)] : i1
          %50 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %51 = llvm.extractvalue %50[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %52 = llvm.zext %51 : i32 to i64
          %53 = llvm.sdiv %52, %19 : i64
          %54 = llvm.mul %53, %19 : i64
          %55 = llvm.icmp "ne" %52, %54 : i64
          %56 = llvm.icmp "slt" %52, %18 : i64
          %57 = llvm.and %55, %56 : i1
          %58 = llvm.add %53, %11 : i64
          %59 = llvm.select %57, %58, %53 : i1, i64
          %60 = llvm.srem %52, %19 : i64
          %61 = llvm.icmp "slt" %60, %18 : i64
          %62 = llvm.add %60, %19 overflow<nsw> : i64
          %63 = llvm.select %61, %62, %60 : i1, i64
          %64 = llvm.sdiv %63, %20 : i64
          %65 = llvm.srem %52, %20 : i64
          %66 = llvm.icmp "slt" %65, %18 : i64
          %67 = llvm.add %65, %20 overflow<nsw> : i64
          %68 = llvm.select %66, %67, %65 : i1, i64
          %69 = llvm.mul %59, %14 overflow<nsw> : i64
          %70 = llvm.mul %64, %13 overflow<nsw> : i64
          %71 = llvm.mul %68, %13 overflow<nsw> : i64
          llvm.br ^bb1(%18 : i64)
        ^bb1(%72: i64):  // 2 preds: ^bb0, ^bb19
          %73 = llvm.icmp "slt" %72, %14 : i64
          llvm.cond_br %73, ^bb2, ^bb20
        ^bb2:  // pred: ^bb1
          %74 = llvm.add %72, %69 : i64
          %75 = llvm.getelementptr %28[%74] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %76 = llvm.load %75 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          llvm.br ^bb3(%18 : i64)
        ^bb3(%77: i64):  // 2 preds: ^bb2, ^bb18
          %78 = llvm.icmp "slt" %77, %13 : i64
          llvm.cond_br %78, ^bb4(%18 : i64), ^bb19
        ^bb4(%79: i64):  // 2 preds: ^bb3, ^bb17
          %80 = llvm.icmp "slt" %79, %13 : i64
          llvm.cond_br %80, ^bb5, ^bb18
        ^bb5:  // pred: ^bb4
          %81 = llvm.sub %13, %79 : i64
          %82 = llvm.icmp "slt" %81, %12 : i64
          %83 = llvm.select %82, %81, %12 : i1, i64
          %84 = llvm.trunc %83 : i64 to i32
          %85 = llvm.insertelement %84, %2[%1 : i32] : vector<8xi32>
          %86 = llvm.shufflevector %85, %2 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xi32> 
          %87 = llvm.icmp "sgt" %86, %22 : vector<8xi32>
          %88 = llvm.mul %18, %12 : i64
          %89 = llvm.add %88, %88 : i64
          %90 = llvm.add %89, %18 : i64
          %91 = llvm.getelementptr %29[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %23, %91, %87 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          %92 = llvm.add %79, %71 : i64
          llvm.br ^bb6(%18 : i64)
        ^bb6(%93: i64):  // 2 preds: ^bb5, ^bb14
          %94 = llvm.icmp "slt" %93, %17 : i64
          llvm.cond_br %94, ^bb7(%18 : i64), ^bb15
        ^bb7(%95: i64):  // 2 preds: ^bb6, ^bb13
          %96 = llvm.icmp "slt" %95, %16 : i64
          llvm.cond_br %96, ^bb8, ^bb14
        ^bb8:  // pred: ^bb7
          %97 = llvm.add %95, %77 : i64
          %98 = llvm.add %97, %70 : i64
          llvm.br ^bb9(%18 : i64)
        ^bb9(%99: i64):  // 2 preds: ^bb8, ^bb12
          %100 = llvm.icmp "slt" %99, %83 : i64
          llvm.cond_br %100, ^bb10(%18 : i64), ^bb13
        ^bb10(%101: i64):  // 2 preds: ^bb9, ^bb11
          %102 = llvm.icmp "slt" %101, %16 : i64
          llvm.cond_br %102, ^bb11, ^bb12
        ^bb11:  // pred: ^bb10
          %103 = llvm.add %92, %99 : i64
          %104 = llvm.add %103, %101 : i64
          %105 = llvm.mul %93, %6 overflow<nsw, nuw> : i64
          %106 = llvm.mul %98, %7 overflow<nsw, nuw> : i64
          %107 = llvm.add %105, %106 overflow<nsw, nuw> : i64
          %108 = llvm.add %107, %104 overflow<nsw, nuw> : i64
          %109 = llvm.getelementptr inbounds|nuw %35[%108] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %110 = llvm.load %109 : !llvm.ptr -> f32
          %111 = llvm.mul %74, %3 overflow<nsw, nuw> : i64
          %112 = llvm.mul %93, %4 overflow<nsw, nuw> : i64
          %113 = llvm.add %111, %112 overflow<nsw, nuw> : i64
          %114 = llvm.mul %95, %16 overflow<nsw, nuw> : i64
          %115 = llvm.add %113, %114 overflow<nsw, nuw> : i64
          %116 = llvm.add %115, %101 overflow<nsw, nuw> : i64
          %117 = llvm.getelementptr inbounds|nuw %42[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %118 = llvm.load %117 : !llvm.ptr -> f32
          %119 = llvm.mul %18, %12 overflow<nsw, nuw> : i64
          %120 = llvm.add %119, %119 overflow<nsw, nuw> : i64
          %121 = llvm.add %120, %99 overflow<nsw, nuw> : i64
          %122 = llvm.getelementptr inbounds|nuw %29[%121] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %123 = llvm.load %122 : !llvm.ptr -> f32
          %124 = llvm.fmul %110, %118 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %125 = llvm.fadd %123, %124 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %125, %122 : f32, !llvm.ptr
          %126 = llvm.add %101, %15 : i64
          llvm.br ^bb10(%126 : i64)
        ^bb12:  // pred: ^bb10
          %127 = llvm.add %99, %15 : i64
          llvm.br ^bb9(%127 : i64)
        ^bb13:  // pred: ^bb9
          %128 = llvm.add %95, %15 : i64
          llvm.br ^bb7(%128 : i64)
        ^bb14:  // pred: ^bb7
          %129 = llvm.add %93, %15 : i64
          llvm.br ^bb6(%129 : i64)
        ^bb15:  // pred: ^bb6
          %130 = llvm.icmp "sgt" %83, %18 : i64
          llvm.cond_br %130, ^bb16, ^bb17
        ^bb16:  // pred: ^bb15
          %131 = llvm.intr.masked.load %91, %87, %21 {alignment = 4 : i32} : (!llvm.ptr, vector<8xi1>, vector<8xf32>) -> vector<8xf32>
          %132 = llvm.extractelement %76[%0 : i64] : vector<1xf32>
          %133 = llvm.insertelement %132, %21[%1 : i32] : vector<8xf32>
          %134 = llvm.shufflevector %133, %21 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
          %135 = llvm.fadd %131, %134 {fastmathFlags = #llvm.fastmath<contract>} : vector<8xf32>
          %136 = llvm.fcmp "ugt" %135, %23 : vector<8xf32>
          %137 = llvm.select %136, %135, %23 : vector<8xi1>, vector<8xf32>
          %138 = llvm.add %70, %77 : i64
          %139 = llvm.add %138, %15 : i64
          %140 = llvm.add %92, %15 : i64
          %141 = llvm.mul %74, %6 : i64
          %142 = llvm.mul %139, %7 : i64
          %143 = llvm.add %141, %142 : i64
          %144 = llvm.add %143, %140 : i64
          %145 = llvm.getelementptr %49[%144] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.intr.masked.store %137, %145, %87 {alignment = 4 : i32} : vector<8xf32>, vector<8xi1> into !llvm.ptr
          llvm.br ^bb17
        ^bb17:  // 2 preds: ^bb15, ^bb16
          %146 = llvm.add %79, %12 : i64
          llvm.br ^bb4(%146 : i64)
        ^bb18:  // pred: ^bb4
          %147 = llvm.add %77, %15 : i64
          llvm.br ^bb3(%147 : i64)
        ^bb19:  // pred: ^bb3
          %148 = llvm.add %72, %15 : i64
          llvm.br ^bb1(%148 : i64)
        ^bb20:  // pred: ^bb1
          llvm.return %1 : i32
        }
      }
    }
  }
  util.global private @main_graph$async_dispatch_206_embedded_elf_riscv_64_main_graph$async_dispatch_206_conv_64x56x56x128x3x3_f32_buffer : !hal.buffer
  util.initializer {
    %c78955776 = arith.constant 78955776 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c78955776}
    util.global.store %buffer, @main_graph$async_dispatch_206_embedded_elf_riscv_64_main_graph$async_dispatch_206_conv_64x56x56x128x3x3_f32_buffer : !hal.buffer
    util.return
  }
  util.func public @main_graph$async_dispatch_206_embedded_elf_riscv_64_main_graph$async_dispatch_206_conv_64x56x56x128x3x3_f32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %c0 = arith.constant 0 : index
    %c32172032 = arith.constant 32172032 : index
    %c14611584 = arith.constant 14611584 : index
    %c46783744 = arith.constant 46783744 : index
    %c1 = arith.constant 1 : index
    %0 = util.null : !hal.fence
    %c-1_i32 = arith.constant -1 : i32
    %main_graph$async_dispatch_206_embedded_elf_riscv_64_main_graph$async_dispatch_206_conv_64x56x56x128x3x3_f32_buffer = util.global.load immutable @main_graph$async_dispatch_206_embedded_elf_riscv_64_main_graph$async_dispatch_206_conv_64x56x56x128x3x3_f32_buffer : !hal.buffer
    %1 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@main_graph$async_dispatch_206::@embedded_elf_riscv_64::@main_graph$async_dispatch_206_conv_64x56x56x128x3x3_f32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@main_graph$async_dispatch_206) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@main_graph$async_dispatch_206::@embedded_elf_riscv_64::@main_graph$async_dispatch_206_conv_64x56x56x128x3x3_f32) : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%2: index):  // 2 preds: ^bb0, ^bb2
    %3 = arith.cmpi slt, %2, %1 : index
    cf.cond_br %3, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
      (%main_graph$async_dispatch_206_embedded_elf_riscv_64_main_graph$async_dispatch_206_conv_64x56x56x128x3x3_f32_buffer : !hal.buffer)[%c0, %c32172032], 
      (%main_graph$async_dispatch_206_embedded_elf_riscv_64_main_graph$async_dispatch_206_conv_64x56x56x128x3x3_f32_buffer : !hal.buffer)[%c32172032, %c14611584], 
      (%main_graph$async_dispatch_206_embedded_elf_riscv_64_main_graph$async_dispatch_206_conv_64x56x56x128x3x3_f32_buffer : !hal.buffer)[%c46783744, %c32172032]
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
