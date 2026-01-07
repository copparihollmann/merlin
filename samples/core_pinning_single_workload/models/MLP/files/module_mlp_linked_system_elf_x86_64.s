	.file	"mlp_linked"
	.section	".text.main_graph$async_dispatch_0_matmul_like_Dx32x10_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_0_matmul_like_Dx32x10_f32,@function
main_graph$async_dispatch_0_matmul_like_Dx32x10_f32:
.Lfunc_begin0:
	.file	1 "/scratch2/merlin/samples/core_pinning_single_workload/models/configs" "configured_module_main_graph$async_dispatch_0.mlir"
	.loc	1 1 0
	.cfi_sections .debug_frame
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp0:
	pushq	%rbx
	.cfi_offset %rbx, -24
	.loc	1 13 8 prologue_end
	movq	24(%rsi), %rax
	movq	(%rax), %r8
	.loc	1 29 8
	movl	(%rdx), %eax
	movq	%rax, %rcx
	shlq	$6, %rcx
	subq	%rcx, %r8
	testq	%r8, %r8
	jle	.LBB0_5
	.loc	1 0 0 is_stmt 0
	movq	32(%rsi), %r9
	.loc	1 29 8
	cmpq	$64, %r8
	movl	$64, %edi
	vxorps	%xmm0, %xmm0, %xmm0
	cmovbq	%r8, %rdi
	shlq	$13, %rax
	xorl	%r8d, %r8d
	.loc	1 0 0
	movq	8(%r9), %rsi
	movq	(%r9), %rdx
	.loc	1 29 8
	addq	16(%r9), %rax
	leaq	__constant_32xf32(%rip), %r9
	addq	$32, %rsi
	.loc	1 0 8
.Ltmp1:
	.p2align	4
.LBB0_2:
	.loc	1 29 8
	leaq	(%r8,%rcx), %r10
	movq	%rsi, %r11
	xorl	%ebx, %ebx
	shlq	$3, %r10
	leaq	(%r10,%r10,4), %r10
	.loc	1 0 8
.Ltmp2:
	.p2align	4
.LBB0_3:
	.loc	1 32 10 is_stmt 1
	vmovss	-32(%r11), %xmm1
	vmovss	-28(%r11), %xmm2
	vmovss	-24(%r11), %xmm3
	vmovss	-20(%r11), %xmm4
	vmovss	-16(%r11), %xmm5
	vmovss	-12(%r11), %xmm6
	vmovss	-8(%r11), %xmm7
	vmovss	-4(%r11), %xmm8
	vfmadd132ss	(%rdx,%r10), %xmm0, %xmm1
	vfmadd231ss	4(%rdx,%r10), %xmm2, %xmm1
	.loc	1 29 8
	vmovsd	(%r11), %xmm2
	addq	$40, %r11
	.loc	1 32 10
	vfmadd231ss	8(%rdx,%r10), %xmm3, %xmm1
	vfmadd231ss	12(%rdx,%r10), %xmm4, %xmm1
	vmovshdup	%xmm2, %xmm3
	vfmadd231ss	16(%rdx,%r10), %xmm5, %xmm1
	vfmadd231ss	20(%rdx,%r10), %xmm6, %xmm1
	vfmadd231ss	24(%rdx,%r10), %xmm7, %xmm1
	vfmadd231ss	28(%rdx,%r10), %xmm8, %xmm1
	vfmadd132ss	32(%rdx,%r10), %xmm1, %xmm2
	vfmadd231ss	36(%rdx,%r10), %xmm3, %xmm2
	.loc	1 37 10
	vaddss	(%rbx,%r9), %xmm2, %xmm1
	.loc	1 29 8
	vcmpless	%xmm0, %xmm1, %xmm2
	vandnps	%xmm1, %xmm2, %xmm1
	vmovss	%xmm1, (%rax,%rbx)
	addq	$4, %rbx
	cmpq	$128, %rbx
	jne	.LBB0_3
	incq	%r8
	subq	$-128, %rax
	cmpq	%rdi, %r8
	jne	.LBB0_2
.LBB0_5:
	.loc	1 43 8
	xorl	%eax, %eax
	.loc	1 43 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp3:
.Lfunc_end0:
	.size	main_graph$async_dispatch_0_matmul_like_Dx32x10_f32, .Lfunc_end0-main_graph$async_dispatch_0_matmul_like_Dx32x10_f32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_1_matmul_like_Dx32x32_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_1_matmul_like_Dx32x32_f32,@function
main_graph$async_dispatch_1_matmul_like_Dx32x32_f32:
.Lfunc_begin1:
	.file	2 "/scratch2/merlin/samples/core_pinning_single_workload/models/configs" "configured_module_main_graph$async_dispatch_1.mlir"
	.loc	2 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp4:
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.loc	2 14 8 prologue_end
	movq	24(%rsi), %r9
	.loc	2 40 8
	movl	(%rdx), %edi
	.loc	2 16 8
	movq	8(%r9), %r8
	.loc	2 40 8
	movq	%rdi, %rax
	shlq	$6, %rax
	subq	%rax, %r8
	testq	%r8, %r8
	jle	.LBB1_7
	.loc	2 0 8 is_stmt 0
	movq	32(%rsi), %rsi
	movabsq	$2305843009213693948, %rdx
	andq	(%r9), %rdx
	movl	$1280, %ecx
	leaq	__constant_32xf32_0(%rip), %r9
	vxorps	%xmm0, %xmm0, %xmm0
	movq	(%rsi), %r10
	addq	8(%rsi), %rcx
	addq	16(%rsi), %rdx
	.loc	2 40 8
	cmpq	$64, %r8
	movl	$64, %esi
	cmovbq	%r8, %rsi
	shlq	$13, %rdi
	xorl	%r8d, %r8d
	leaq	28(%rdi,%r10), %rdi
	.loc	2 0 8
.Ltmp5:
	.p2align	4
.LBB1_2:
	.loc	2 40 8
	leaq	(%r8,%rax), %r10
	movq	%rcx, %r11
	xorl	%ebx, %ebx
	shlq	$7, %r10
	addq	%rdx, %r10
	.loc	2 0 8
.Ltmp6:
	.p2align	4
.LBB1_3:
	movq	$-8, %r14
	vxorps	%xmm1, %xmm1, %xmm1
	.p2align	4
.LBB1_4:
	.loc	2 43 10 is_stmt 1
	vmovss	32(%r11,%r14,4), %xmm2
	vmovss	36(%r11,%r14,4), %xmm3
	vmovss	40(%r11,%r14,4), %xmm4
	vmovss	44(%r11,%r14,4), %xmm5
	vmovss	48(%r11,%r14,4), %xmm6
	vmovss	52(%r11,%r14,4), %xmm7
	vmovss	56(%r11,%r14,4), %xmm8
	vmovss	60(%r11,%r14,4), %xmm9
	vfmadd132ss	4(%rdi,%r14,4), %xmm1, %xmm2
	vfmadd231ss	8(%rdi,%r14,4), %xmm3, %xmm2
	vfmadd231ss	12(%rdi,%r14,4), %xmm4, %xmm2
	vfmadd231ss	16(%rdi,%r14,4), %xmm5, %xmm2
	vfmadd231ss	20(%rdi,%r14,4), %xmm6, %xmm2
	vfmadd231ss	24(%rdi,%r14,4), %xmm7, %xmm2
	vfmadd231ss	28(%rdi,%r14,4), %xmm8, %xmm2
	vmovaps	%xmm2, %xmm1
	vfmadd231ss	32(%rdi,%r14,4), %xmm9, %xmm1
	.loc	2 40 8
	addq	$8, %r14
	cmpq	$24, %r14
	jb	.LBB1_4
	.loc	2 48 10
	vaddss	(%r9,%rbx,4), %xmm1, %xmm1
	.loc	2 40 8
	subq	$-128, %r11
	vcmpless	%xmm0, %xmm1, %xmm2
	vandnps	%xmm1, %xmm2, %xmm1
	vmovss	%xmm1, (%r10,%rbx,4)
	incq	%rbx
	cmpq	$32, %rbx
	jne	.LBB1_3
	incq	%r8
	subq	$-128, %rdi
	cmpq	%rsi, %r8
	jne	.LBB1_2
.LBB1_7:
	.loc	2 54 8
	xorl	%eax, %eax
	.loc	2 54 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp7:
.Lfunc_end1:
	.size	main_graph$async_dispatch_1_matmul_like_Dx32x32_f32, .Lfunc_end1-main_graph$async_dispatch_1_matmul_like_Dx32x32_f32
	.cfi_endproc

	.section	".text.main_graph$async_dispatch_2_matmul_like_Dx2x32_f32","ax",@progbits
	.p2align	4
	.type	main_graph$async_dispatch_2_matmul_like_Dx2x32_f32,@function
main_graph$async_dispatch_2_matmul_like_Dx2x32_f32:
.Lfunc_begin2:
	.file	3 "/scratch2/merlin/samples/core_pinning_single_workload/models/configs" "configured_module_main_graph$async_dispatch_2.mlir"
	.loc	3 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp8:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	3 14 8 prologue_end
	movq	24(%rsi), %rcx
	.loc	3 38 8
	movl	(%rdx), %edx
	.loc	3 16 8
	movq	8(%rcx), %rdi
	.loc	3 38 8
	movq	%rdx, %rax
	shlq	$6, %rax
	subq	%rax, %rdi
	testq	%rdi, %rdi
	jle	.LBB2_7
	.loc	3 0 0 is_stmt 0
	movq	32(%rsi), %rsi
	movl	$15106, %r9d
	bextrq	%r9, (%rcx), %r9
	.loc	3 38 8
	cmpq	$64, %rdi
	movl	$64, %ecx
	cmovbq	%rdi, %rcx
	shlq	$13, %rdx
	.loc	3 0 0
	movq	(%rsi), %r8
	.loc	3 38 8
	leaq	(%rdx,%r9,4), %rdi
	.loc	3 0 0
	movq	8(%rsi), %rdx
	leaq	__constant_2xf32(%rip), %r9
	.loc	3 38 8
	leaq	28(%r8,%rdi), %rsi
	leaq	__constant_2x32xf32(%rip), %r8
	xorl	%edi, %edi
	.loc	3 0 8
.Ltmp9:
	.p2align	4
.LBB2_2:
	.loc	3 38 8
	leaq	(%rdi,%rax), %r10
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	leaq	(%rdx,%r10,8), %r10
	.loc	3 0 8
.Ltmp10:
	.p2align	4
.LBB2_3:
	movq	%rbx, %r14
	shlq	$7, %r14
	movq	$-8, %r15
	vxorps	%xmm0, %xmm0, %xmm0
	addq	%r8, %r14
	.p2align	4
.LBB2_4:
	.loc	3 41 10 is_stmt 1
	vmovss	32(%r14,%r15,4), %xmm1
	vmovss	36(%r14,%r15,4), %xmm2
	vmovss	40(%r14,%r15,4), %xmm3
	vmovss	44(%r14,%r15,4), %xmm4
	vmovss	48(%r14,%r15,4), %xmm5
	vmovss	52(%r14,%r15,4), %xmm6
	vmovss	56(%r14,%r15,4), %xmm7
	vmovss	60(%r14,%r15,4), %xmm8
	vfmadd132ss	4(%rsi,%r15,4), %xmm0, %xmm1
	vfmadd231ss	8(%rsi,%r15,4), %xmm2, %xmm1
	vfmadd231ss	12(%rsi,%r15,4), %xmm3, %xmm1
	vfmadd231ss	16(%rsi,%r15,4), %xmm4, %xmm1
	vfmadd231ss	20(%rsi,%r15,4), %xmm5, %xmm1
	vfmadd231ss	24(%rsi,%r15,4), %xmm6, %xmm1
	vfmadd231ss	28(%rsi,%r15,4), %xmm7, %xmm1
	vmovaps	%xmm1, %xmm0
	vfmadd231ss	32(%rsi,%r15,4), %xmm8, %xmm0
	.loc	3 38 8
	addq	$8, %r15
	cmpq	$24, %r15
	jb	.LBB2_4
	.loc	3 46 10
	vaddss	(%r9,%rbx,4), %xmm0, %xmm0
	.loc	3 38 8
	vmovss	%xmm0, (%r10,%rbx,4)
	movl	$1, %ebx
	testb	$1, %r11b
	movb	$1, %r11b
	je	.LBB2_3
	incq	%rdi
	subq	$-128, %rsi
	cmpq	%rcx, %rdi
	jne	.LBB2_2
.LBB2_7:
	.loc	3 50 8
	xorl	%eax, %eax
	.loc	3 50 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end2:
	.size	main_graph$async_dispatch_2_matmul_like_Dx2x32_f32, .Lfunc_end2-main_graph$async_dispatch_2_matmul_like_Dx2x32_f32
	.cfi_endproc

	.section	.text.iree_hal_executable_library_query,"ax",@progbits
	.globl	iree_hal_executable_library_query
	.p2align	4
	.type	iree_hal_executable_library_query,@function
iree_hal_executable_library_query:
.Liree_hal_executable_library_query$local:
	.type	.Liree_hal_executable_library_query$local,@function
.Lfunc_begin3:
	.cfi_startproc
	xorl	%eax, %eax
	cmpl	$6, %edi
	leaq	iree_hal_executable_library_query_v0(%rip), %rcx
	cmoveq	%rcx, %rax
	retq
.Lfunc_end3:
	.size	iree_hal_executable_library_query, .Lfunc_end3-iree_hal_executable_library_query
	.size	.Liree_hal_executable_library_query$local, .Lfunc_end3-iree_hal_executable_library_query
	.cfi_endproc

	.section	.text.iree_h2f_ieee,"ax",@progbits
	.p2align	4
	.type	iree_h2f_ieee,@function
iree_h2f_ieee:
.Lfunc_begin4:
	.cfi_startproc
	movl	%edi, %eax
	andl	$32768, %eax
	movl	%edi, %edx
	movl	%edi, %ecx
	andl	$1023, %ecx
	shll	$16, %eax
	andw	$31744, %dx
	je	.LBB4_6
	andl	$31744, %edi
	cmpl	$31744, %edi
	jne	.LBB4_5
	testw	%cx, %cx
	je	.LBB4_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	retq
.LBB4_6:
	movzwl	%cx, %ecx
	orl	$864026624, %eax
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB4_5:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	addl	%ecx, %edx
	shll	$13, %edx
	leal	939524096(%rdx,%rax), %eax
	vmovd	%eax, %xmm0
	retq
.LBB4_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	retq
.Lfunc_end4:
	.size	iree_h2f_ieee, .Lfunc_end4-iree_h2f_ieee
	.cfi_endproc

	.section	.text.iree_f2h_ieee,"ax",@progbits
	.p2align	4
	.type	iree_f2h_ieee,@function
iree_f2h_ieee:
.Lfunc_begin5:
	.cfi_startproc
	vmovd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB5_4
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB5_6
	testl	%edx, %edx
	je	.LBB5_7
	orl	$32767, %eax
	retq
.LBB5_4:
	movl	%ecx, %edx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.LBB5_6:
	cmpl	$1191182336, %ecx
	jbe	.LBB5_8
.LBB5_7:
	movl	$31744, %edx
	xorl	%ecx, %ecx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.LBB5_8:
	cmpl	$947912704, %ecx
	jae	.LBB5_10
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.LBB5_10:
	andl	$8192, %esi
	shrl	$23, %ecx
	cmpl	$1, %esi
	sbbl	$0, %edx
	addl	$4096, %edx
	cmpl	$8388608, %edx
	movl	%edx, %esi
	sbbl	$-1, %ecx
	shrl	$13, %esi
	xorl	%edi, %edi
	cmpl	$8388608, %edx
	cmovbl	%esi, %edi
	shll	$10, %ecx
	movl	%ecx, %edx
	addl	$-114688, %edx
	movl	%edi, %ecx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.Lfunc_end5:
	.size	iree_f2h_ieee, .Lfunc_end5-iree_f2h_ieee
	.cfi_endproc

	.section	.text.__gnu_h2f_ieee,"ax",@progbits
	.p2align	4
	.type	__gnu_h2f_ieee,@function
__gnu_h2f_ieee:
.Lfunc_begin6:
	.cfi_startproc
	movl	%edi, %eax
	andl	$32768, %eax
	movl	%edi, %edx
	movl	%edi, %ecx
	andl	$1023, %ecx
	shll	$16, %eax
	andw	$31744, %dx
	je	.LBB6_6
	andl	$31744, %edi
	cmpl	$31744, %edi
	jne	.LBB6_5
	testw	%cx, %cx
	je	.LBB6_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	retq
.LBB6_6:
	movzwl	%cx, %ecx
	orl	$864026624, %eax
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB6_5:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	addl	%ecx, %edx
	shll	$13, %edx
	leal	939524096(%rdx,%rax), %eax
	vmovd	%eax, %xmm0
	retq
.LBB6_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	retq
.Lfunc_end6:
	.size	__gnu_h2f_ieee, .Lfunc_end6-__gnu_h2f_ieee
	.cfi_endproc

	.section	.text.__extendhfsf2,"ax",@progbits
	.p2align	4
	.type	__extendhfsf2,@function
__extendhfsf2:
.Lfunc_begin7:
	.cfi_startproc
	vmovd	%xmm0, %ecx
	movl	%ecx, %eax
	shll	$16, %eax
	movl	%ecx, %edx
	andl	$1023, %edx
	movl	%ecx, %esi
	andl	$-2147483648, %eax
	andl	$31744, %esi
	je	.LBB7_6
	cmpl	$31744, %esi
	jne	.LBB7_5
	testw	%dx, %dx
	je	.LBB7_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	retq
.LBB7_6:
	movzwl	%dx, %ecx
	orl	$864026624, %eax
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB7_5:
	andl	$32767, %ecx
	shll	$13, %ecx
	leal	939524096(%rcx,%rax), %eax
	vmovd	%eax, %xmm0
	retq
.LBB7_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	retq
.Lfunc_end7:
	.size	__extendhfsf2, .Lfunc_end7-__extendhfsf2
	.cfi_endproc

	.section	.text.__gnu_f2h_ieee,"ax",@progbits
	.p2align	4
	.type	__gnu_f2h_ieee,@function
__gnu_f2h_ieee:
.Lfunc_begin8:
	.cfi_startproc
	vmovd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB8_4
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB8_6
	testl	%edx, %edx
	je	.LBB8_7
	orl	$32767, %eax
	retq
.LBB8_4:
	movl	%ecx, %edx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.LBB8_6:
	cmpl	$1191182336, %ecx
	jbe	.LBB8_8
.LBB8_7:
	movl	$31744, %edx
	xorl	%ecx, %ecx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.LBB8_8:
	cmpl	$947912704, %ecx
	jae	.LBB8_10
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.LBB8_10:
	andl	$8192, %esi
	shrl	$23, %ecx
	cmpl	$1, %esi
	sbbl	$0, %edx
	addl	$4096, %edx
	cmpl	$8388608, %edx
	movl	%edx, %esi
	sbbl	$-1, %ecx
	shrl	$13, %esi
	xorl	%edi, %edi
	cmpl	$8388608, %edx
	cmovbl	%esi, %edi
	shll	$10, %ecx
	movl	%ecx, %edx
	addl	$-114688, %edx
	movl	%edi, %ecx
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	retq
.Lfunc_end8:
	.size	__gnu_f2h_ieee, .Lfunc_end8-__gnu_f2h_ieee
	.cfi_endproc

	.section	.text.__truncsfhf2,"ax",@progbits
	.p2align	4
	.type	__truncsfhf2,@function
__truncsfhf2:
.Lfunc_begin9:
	.cfi_startproc
	vmovd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB9_1
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB9_6
	testl	%edx, %edx
	je	.LBB9_4
	orl	$32767, %eax
	movw	%ax, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	retq
.LBB9_1:
	movl	%ecx, %edx
	jmp	.LBB9_10
.LBB9_6:
	cmpl	$1191182336, %ecx
	jbe	.LBB9_7
.LBB9_4:
	movl	$31744, %edx
	xorl	%ecx, %ecx
	jmp	.LBB9_10
.LBB9_7:
	cmpl	$947912704, %ecx
	jae	.LBB9_9
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB9_10
.LBB9_9:
	andl	$8192, %esi
	shrl	$23, %ecx
	cmpl	$1, %esi
	sbbl	$0, %edx
	addl	$4096, %edx
	cmpl	$8388608, %edx
	movl	%edx, %esi
	sbbl	$-1, %ecx
	shrl	$13, %esi
	xorl	%edi, %edi
	cmpl	$8388608, %edx
	cmovbl	%esi, %edi
	shll	$10, %ecx
	movl	%ecx, %edx
	addl	$-114688, %edx
	movl	%edi, %ecx
.LBB9_10:
	orl	%edx, %ecx
	andl	$32768, %eax
	orl	%ecx, %eax
	movw	%ax, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	retq
.Lfunc_end9:
	.size	__truncsfhf2, .Lfunc_end9-__truncsfhf2
	.cfi_endproc

	.type	__constant_32xf32,@object
	.section	.rodata.__constant_32xf32,"a",@progbits
	.p2align	6, 0x0
__constant_32xf32:
	.long	0x3dc5341a
	.long	0xbe1fa89b
	.long	0xbe882a99
	.long	0xbe81b66a
	.long	0xbe73d475
	.long	0xbe514fde
	.long	0x3a0ce8bc
	.long	0xbe7d0fb2
	.long	0xbde4653b
	.long	0xbe4ce802
	.long	0xbe9ded3a
	.long	0x3e1f3247
	.long	0x3d5f5fbe
	.long	0x3d22591a
	.long	0x3e156380
	.long	0x3e88c86a
	.long	0x3ea09376
	.long	0xbd70fb23
	.long	0xbe752e7f
	.long	0x3d9fcc7d
	.long	0x3ea03c40
	.long	0x3e85790f
	.long	0x3cceceee
	.long	0x3e7a6abd
	.long	0x3d596af9
	.long	0xbdc92104
	.long	0x3e6e4ade
	.long	0xbb78418f
	.long	0xbe97a505
	.long	0xbe869577
	.long	0xbd967856
	.long	0x3e2b78b4
	.size	__constant_32xf32, 128

	.type	__constant_32xf32_0,@object
	.section	.rodata.__constant_32xf32_0,"a",@progbits
	.p2align	6, 0x0
__constant_32xf32_0:
	.long	0x3e266637
	.long	0xbda43b77
	.long	0x3e1da2f3
	.long	0x3cb37f6c
	.long	0xbe0f7db3
	.long	0xbdfee4dd
	.long	0xbe197df3
	.long	0x3e26060a
	.long	0x3dd720a0
	.long	0xbdafffd4
	.long	0x3d8ea4d1
	.long	0xbe10997b
	.long	0xbd08866e
	.long	0xbd1e31a4
	.long	0xbcb351ba
	.long	0x3e254f65
	.long	0xbd40561f
	.long	0xbbd41a06
	.long	0x3e0e339e
	.long	0x3dc1efb1
	.long	0xbdf30fa1
	.long	0x3e009eee
	.long	0x3e11fb11
	.long	0x3dcfbe3e
	.long	0x3e07df28
	.long	0xbdc1631f
	.long	0x3e24b4f4
	.long	0xbdbe04b4
	.long	0xbe05fae2
	.long	0xbd9b57b2
	.long	0x3e34777c
	.long	0xbdb2cdd7
	.size	__constant_32xf32_0, 128

	.type	__constant_2xf32,@object
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	6, 0x0
__constant_2xf32:
	.long	0x3e199d70
	.long	0xbde5f923
	.size	__constant_2xf32, 8

	.type	__constant_2x32xf32,@object
	.section	.rodata.__constant_2x32xf32,"a",@progbits
	.p2align	6, 0x0
__constant_2x32xf32:
	.long	0xbe183e6c
	.long	0xbc0331fb
	.long	0xbe1e5a88
	.long	0x3d925c21
	.long	0xbe22914f
	.long	0xbdcc76f6
	.long	0xbd530d6e
	.long	0x3d19228d
	.long	0x3c67089f
	.long	0xbdda8c3e
	.long	0x3e3125b4
	.long	0xbe235099
	.long	0xbe096545
	.long	0xbd80201c
	.long	0x3c9bfb3f
	.long	0xbe2b671d
	.long	0xbdf2e53f
	.long	0xbe18eaf7
	.long	0xbe014851
	.long	0x3d066349
	.long	0x3e253c2f
	.long	0x3e2a5079
	.long	0x3dd7c586
	.long	0xbca3804d
	.long	0xbdb048f8
	.long	0x3e215a06
	.long	0x3df9fe8e
	.long	0xbcd53149
	.long	0x3d6fa260
	.long	0x3d4f5440
	.long	0xbe26fe4b
	.long	0xbd0110e9
	.long	0x3dd2c47d
	.long	0x3e11959f
	.long	0xbd9df937
	.long	0x3c634d3b
	.long	0x3bcfa877
	.long	0xbd93335b
	.long	0x3e0a5098
	.long	0x3d31940d
	.long	0x3dbae1a9
	.long	0xbd26b546
	.long	0x3e07c025
	.long	0xbe03c1d5
	.long	0x3d5c4649
	.long	0x3d4cd331
	.long	0x3d84dceb
	.long	0xbe31489d
	.long	0x3e327158
	.long	0xbd9d2f75
	.long	0xbe19f16d
	.long	0xbca1f063
	.long	0xbdeb83ef
	.long	0x3d3d5940
	.long	0xbca0512f
	.long	0xbd79054d
	.long	0xbbee6526
	.long	0x3bd9d627
	.long	0x3c3476ff
	.long	0x370c01d4
	.long	0xbda90d93
	.long	0xbd321d84
	.long	0x3e023855
	.long	0xbd3c5109
	.size	__constant_2x32xf32, 256

	.type	__unnamed_1,@object
	.section	.rodata.__unnamed_1,"a",@progbits
__unnamed_1:
	.asciz	"mlp_linked"
	.size	__unnamed_1, 11

	.type	iree_hal_executable_library_query_v0_header,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_header,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_header:
	.long	6
	.zero	4
	.quad	__unnamed_1
	.long	0
	.long	0
	.size	iree_hal_executable_library_query_v0_header, 24

	.type	iree_hal_executable_library_query_v0_funcs,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_funcs,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_funcs:
	.quad	main_graph$async_dispatch_0_matmul_like_Dx32x10_f32
	.quad	main_graph$async_dispatch_1_matmul_like_Dx32x32_f32
	.quad	main_graph$async_dispatch_2_matmul_like_Dx2x32_f32
	.size	iree_hal_executable_library_query_v0_funcs, 24

	.type	iree_hal_executable_library_query_v0_attrs,@object
	.section	.rodata.iree_hal_executable_library_query_v0_attrs,"a",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_attrs:
	.quad	0
	.short	0
	.byte	2
	.byte	3
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	4
	.byte	3
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	4
	.byte	2
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	iree_hal_executable_library_query_v0_attrs, 192

	.type	__unnamed_2,@object
	.section	.rodata.__unnamed_2,"a",@progbits
__unnamed_2:
	.asciz	"main_graph$async_dispatch_0_matmul_like_Dx32x10_f32"
	.size	__unnamed_2, 52

	.type	__unnamed_3,@object
	.section	.rodata.__unnamed_3,"a",@progbits
__unnamed_3:
	.asciz	"main_graph$async_dispatch_1_matmul_like_Dx32x32_f32"
	.size	__unnamed_3, 52

	.type	__unnamed_4,@object
	.section	.rodata.__unnamed_4,"a",@progbits
__unnamed_4:
	.asciz	"main_graph$async_dispatch_2_matmul_like_Dx2x32_f32"
	.size	__unnamed_4, 51

	.type	iree_hal_executable_library_query_v0_names,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_names,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_names:
	.quad	__unnamed_2
	.quad	__unnamed_3
	.quad	__unnamed_4
	.size	iree_hal_executable_library_query_v0_names, 24

	.type	__unnamed_5,@object
	.section	.rodata.__unnamed_5,"a",@progbits
__unnamed_5:
	.asciz	"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_0.mlir"
	.size	__unnamed_5, 121

	.type	__unnamed_6,@object
	.section	.rodata.__unnamed_6,"a",@progbits
__unnamed_6:
	.asciz	"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_1.mlir"
	.size	__unnamed_6, 121

	.type	__unnamed_7,@object
	.section	.rodata.__unnamed_7,"a",@progbits
__unnamed_7:
	.asciz	"/scratch2/merlin/samples/core_pinning_single_workload/models/configs//configured_module_main_graph$async_dispatch_2.mlir"
	.size	__unnamed_7, 121

	.type	iree_hal_executable_library_query_v0_source_locations,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_source_locations,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_source_locations:
	.long	3
	.long	120
	.quad	__unnamed_5
	.long	3
	.long	120
	.quad	__unnamed_6
	.long	3
	.long	120
	.quad	__unnamed_7
	.size	iree_hal_executable_library_query_v0_source_locations, 48

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_matmul_like_Dx32x10_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_matmul_like_Dx32x10_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_matmul_like_Dx32x10_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_matmul_like_Dx32x10_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_matmul_like_Dx32x10_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_matmul_like_Dx32x10_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_matmul_like_Dx32x10_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_matmul_like_Dx32x10_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_matmul_like_Dx32x32_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_matmul_like_Dx32x32_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_matmul_like_Dx32x32_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_matmul_like_Dx32x32_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_matmul_like_Dx32x32_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_matmul_like_Dx32x32_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_matmul_like_Dx32x32_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_matmul_like_Dx32x32_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_matmul_like_Dx2x32_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_matmul_like_Dx2x32_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_matmul_like_Dx2x32_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_matmul_like_Dx2x32_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_matmul_like_Dx2x32_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_matmul_like_Dx2x32_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_matmul_like_Dx2x32_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_matmul_like_Dx2x32_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_stage_location_tables,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_stage_location_tables,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_stage_location_tables:
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_matmul_like_Dx32x10_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_0_matmul_like_Dx32x10_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_matmul_like_Dx32x32_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_1_matmul_like_Dx32x32_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_matmul_like_Dx2x32_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_main_graph$async_dispatch_2_matmul_like_Dx2x32_f32_stage_source_locations
	.size	iree_hal_executable_library_query_v0_stage_location_tables, 72

	.type	iree_hal_executable_library_query_v0,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0:
	.quad	iree_hal_executable_library_query_v0_header
	.zero	16
	.long	3
	.zero	4
	.quad	iree_hal_executable_library_query_v0_funcs
	.quad	iree_hal_executable_library_query_v0_attrs
	.quad	0
	.quad	0
	.quad	iree_hal_executable_library_query_v0_names
	.quad	0
	.quad	0
	.quad	iree_hal_executable_library_query_v0_source_locations
	.quad	iree_hal_executable_library_query_v0_stage_location_tables
	.zero	4
	.zero	4
	.zero	16
	.size	iree_hal_executable_library_query_v0, 128

	.section	.debug_abbrev,"",@progbits
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	14
	.byte	19
	.byte	5
	.byte	3
	.byte	14
	.byte	16
	.byte	23
	.byte	27
	.byte	14
	.ascii	"\264B"
	.byte	25
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	0
	.byte	0
	.byte	2
	.byte	46
	.byte	0
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	3
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	62
	.byte	11
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	4
	.byte	46
	.byte	0
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	16
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0
.Ldebug_info_start0:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string1
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	2
	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	86
	.long	.Linfo_string5
	.long	.Linfo_string5
	.byte	1
	.byte	1
	.long	71

	.byte	3
	.long	.Linfo_string6
	.byte	5
	.byte	4
	.byte	0
.Ldebug_info_end0:
.Lcu_begin1:
	.long	.Ldebug_info_end1-.Ldebug_info_start1
.Ldebug_info_start1:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string3
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.byte	4
	.quad	.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.byte	1
	.byte	86
	.long	.Linfo_string7
	.long	.Linfo_string7
	.byte	2
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end1:
.Lcu_begin2:
	.long	.Ldebug_info_end2-.Ldebug_info_start2
.Ldebug_info_start2:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string4
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin2
	.long	.Lfunc_end2-.Lfunc_begin2
	.byte	4
	.quad	.Lfunc_begin2
	.long	.Lfunc_end2-.Lfunc_begin2
	.byte	1
	.byte	86
	.long	.Linfo_string8
	.long	.Linfo_string8
	.byte	3
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end2:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"IREE"
.Linfo_string1:
	.asciz	"configured_module_main_graph$async_dispatch_0.mlir"
.Linfo_string2:
	.asciz	"/scratch2/merlin/samples/core_pinning_single_workload/models/configs"
.Linfo_string3:
	.asciz	"configured_module_main_graph$async_dispatch_1.mlir"
.Linfo_string4:
	.asciz	"configured_module_main_graph$async_dispatch_2.mlir"
.Linfo_string5:
	.asciz	"main_graph$async_dispatch_0_matmul_like_Dx32x10_f32"
.Linfo_string6:
	.asciz	"int"
.Linfo_string7:
	.asciz	"main_graph$async_dispatch_1_matmul_like_Dx32x32_f32"
.Linfo_string8:
	.asciz	"main_graph$async_dispatch_2_matmul_like_Dx2x32_f32"
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0
.LpubNames_start0:
	.short	2
	.long	.Lcu_begin0
	.long	79
	.long	42
	.asciz	"main_graph$async_dispatch_0_matmul_like_Dx32x10_f32"
	.long	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0
.LpubTypes_start0:
	.short	2
	.long	.Lcu_begin0
	.long	79
	.long	71
	.asciz	"int"
	.long	0
.LpubTypes_end0:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end1-.LpubNames_start1
.LpubNames_start1:
	.short	2
	.long	.Lcu_begin1
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_1_matmul_like_Dx32x32_f32"
	.long	0
.LpubNames_end1:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end1-.LpubTypes_start1
.LpubTypes_start1:
	.short	2
	.long	.Lcu_begin1
	.long	72
	.long	0
.LpubTypes_end1:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end2-.LpubNames_start2
.LpubNames_start2:
	.short	2
	.long	.Lcu_begin2
	.long	72
	.long	42
	.asciz	"main_graph$async_dispatch_2_matmul_like_Dx2x32_f32"
	.long	0
.LpubNames_end2:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end2-.LpubTypes_start2
.LpubTypes_start2:
	.short	2
	.long	.Lcu_begin2
	.long	72
	.long	0
.LpubTypes_end2:
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
