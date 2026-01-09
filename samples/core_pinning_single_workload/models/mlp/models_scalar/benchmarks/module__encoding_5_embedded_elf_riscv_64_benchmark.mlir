module {
  util.global private @__device_0 = #hal.device.target<"local", [#hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf", ukernels = "none"}>]> : !hal.device
  hal.executable private @_encoding_5 {
    hal.executable.variant public @embedded_elf_riscv_64 target(<"llvm-cpu", "embedded-elf-riscv_64", {cpu = "spacemit-x60", cpu_features = "+m,+a,+f,+d,+c", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_abi = "lp64d", target_triple = "riscv64-unknown-unknown-eabi-elf", ukernels = "none"}>) {
      hal.executable.export public @_encoding_5_encode_10xf32_to_10xf32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
        %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
        hal.return %x, %y, %z : index, index, index
      }
      builtin.module {
        func.func @_encoding_5_encode_10xf32_to_10xf32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDefault>} {
          %c0 = arith.constant 0 : index
          %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<10xf32>>
          %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<10xf32>>
          %2 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0], sizes = [10], strides = [1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<10xf32>> -> tensor<10xf32>
          iree_tensor_ext.dispatch.tensor.store %2, %1, offsets = [0], sizes = [10], strides = [1] : tensor<10xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<10xf32>>
          return
        }
      }
    }
  }
  util.global private mutable @_encoding_5_embedded_elf_riscv_64__encoding_5_encode_10xf32_to_10xf32_buffer : !hal.buffer
  util.initializer {
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %allocator = hal.device.allocator<%device : !hal.device> : !hal.allocator
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage"> : i32
    %c768 = arith.constant 768 : index
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%queue_affinity) type(%memory_type) usage(%buffer_usage) : !hal.buffer{%c768}
    util.global.store %buffer, @_encoding_5_embedded_elf_riscv_64__encoding_5_encode_10xf32_to_10xf32_buffer : !hal.buffer
    util.return
  }
  util.func public @_encoding_5_embedded_elf_riscv_64__encoding_5_encode_10xf32_to_10xf32(%arg0: i32) attributes {iree.abi.stub, iree.reflection = {iree.benchmark = "dispatch"}} {
    %0 = arith.index_cast %arg0 : i32 to index
    %device, %queue_affinity = hal.device.resolve on(#hal.device.affinity<@__device_0>) : !hal.device, i64
    %cmd = hal.command_buffer.create device(%device : !hal.device) mode("OneShot|AllowInlineExecution") categories(Dispatch) affinity(%queue_affinity) : !hal.command_buffer
    %_encoding_5_embedded_elf_riscv_64__encoding_5_encode_10xf32_to_10xf32_buffer = util.global.load @_encoding_5_embedded_elf_riscv_64__encoding_5_encode_10xf32_to_10xf32_buffer : !hal.buffer
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c256 = arith.constant 256 : index
    %c320 = arith.constant 320 : index
    %workgroup_x, %workgroup_y, %workgroup_z = hal.executable.calculate_workgroups device(%device : !hal.device) target(@_encoding_5::@embedded_elf_riscv_64::@_encoding_5_encode_10xf32_to_10xf32) : index, index, index
    %exe = hal.executable.lookup device(%device : !hal.device) executable(@_encoding_5) : !hal.executable
    %ordinal = hal.executable.export.ordinal target(@_encoding_5::@embedded_elf_riscv_64::@_encoding_5_encode_10xf32_to_10xf32) : index
    %c1 = arith.constant 1 : index
    scf.for %arg1 = %c0 to %0 step %c1 {
      hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%workgroup_x, %workgroup_y, %workgroup_z]) bindings([
        (%_encoding_5_embedded_elf_riscv_64__encoding_5_encode_10xf32_to_10xf32_buffer : !hal.buffer)[%c0, %c40], 
        (%_encoding_5_embedded_elf_riscv_64__encoding_5_encode_10xf32_to_10xf32_buffer : !hal.buffer)[%c256, %c320]
      ]) flags("None")
      hal.command_buffer.execution_barrier<%cmd : !hal.command_buffer> source("Dispatch|CommandRetire") target("CommandIssue|Dispatch") flags("None")
    }
    hal.command_buffer.finalize<%cmd : !hal.command_buffer>
    %1 = util.null : !hal.fence
    %fence = hal.fence.create device(%device : !hal.device) flags("None") : !hal.fence
    hal.device.queue.execute<%device : !hal.device> affinity(%queue_affinity) wait(%1) signal(%fence) commands(%cmd) flags("None")
    %c-1_i32 = arith.constant -1 : i32
    %status = hal.fence.await until([%fence]) timeout_millis(%c-1_i32) flags("None") : i32
    util.status.check_ok %status, "failed to wait on timepoint"
    util.return
  }
}
