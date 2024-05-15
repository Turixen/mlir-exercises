	.text
	.file	"LLVMDialectModule"
	.globl	matmul                          # -- Begin function matmul
	.p2align	4, 0x90
	.type	matmul,@function
matmul:                                 # @matmul
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %r12
	movq	168(%rsp), %r13
	movq	176(%rsp), %rbp
	movl	$128, %edi
	callq	malloc@PLT
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leaq	63(%rax), %r15
	andq	$-64, %r15
	xorl	%ebx, %ebx
	imulq	184(%rsp), %rbp
	shlq	$3, %rbp
	shlq	$3, %r13
	addq	160(%rsp), %r13
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	memcpy@PLT
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	incq	%rbx
	addq	$24, %r14
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_6 Depth 3
	cmpq	$3, %rbx
	jg	.LBB0_9
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	%r12, %rax
	xorl	%ecx, %ecx
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=2
	incq	%rcx
	addq	$8, %rax
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
	cmpq	$1, %rcx
	jg	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	leaq	(%rcx,%rbx,2), %rdx
	movq	%rax, %rsi
	xorl	%edi, %edi
	cmpq	$2, %rdi
	jg	.LBB0_7
	.p2align	4, 0x90
.LBB0_6:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	(%r14,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	mulsd	(%rsi), %xmm0
	addsd	(%r15,%rdx,8), %xmm0
	movsd	%xmm0, (%r15,%rdx,8)
	incq	%rdi
	addq	$16, %rsi
	cmpq	$2, %rdi
	jle	.LBB0_6
	jmp	.LBB0_7
.LBB0_9:
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rcx, (%rax)
	movq	%r15, 8(%rax)
	movl	$4, %ecx
	movq	%rcx, 24(%rax)
	movl	$2, %ecx
	movq	%rcx, 32(%rax)
	movq	%rcx, 40(%rax)
	movl	$1, %ecx
	movq	%rcx, 48(%rax)
	movq	$0, 16(%rax)
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	matmul, .Lfunc_end0-matmul
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movl	$128, %edi
	callq	malloc@PLT
	leaq	63(%rax), %r11
	andq	$-64, %r11
	movl	$3735928559, %r10d              # imm = 0xDEADBEEF
	movq	%rsp, %rdi
	movl	$3735928559, %esi               # imm = 0xDEADBEEF
	movl	$.L__constant_4x3xf64, %edx
	movl	$4, %r8d
	movl	$3, %r9d
	xorl	%ecx, %ecx
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$2
	.cfi_adjust_cfa_offset 8
	pushq	$2
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$2
	.cfi_adjust_cfa_offset 8
	pushq	$2
	.cfi_adjust_cfa_offset 8
	pushq	$3
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$.L__constant_3x2xf64
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$3
	.cfi_adjust_cfa_offset 8
	callq	matmul@PLT
	addq	$128, %rsp
	.cfi_adjust_cfa_offset -128
	movl	$1, %eax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_3x2xf64,@object    # @__constant_3x2xf64
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_3x2xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x4010000000000000              # double 4
	.zero	16
	.quad	0x0000000000000000              # double 0
	.quad	0x4018000000000000              # double 6
	.size	.L__constant_3x2xf64, 48

	.type	.L__constant_4x3xf64,@object    # @__constant_4x3xf64
	.p2align	6, 0x0
.L__constant_4x3xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x0000000000000000              # double 0
	.quad	0x4008000000000000              # double 3
	.quad	0x0000000000000000              # double 0
	.quad	0x4000000000000000              # double 2
	.quad	0x4010000000000000              # double 4
	.zero	24
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.quad	0x4014000000000000              # double 5
	.size	.L__constant_4x3xf64, 96

	.section	".note.GNU-stack","",@progbits
