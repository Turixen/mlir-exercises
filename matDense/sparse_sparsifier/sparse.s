	.text
	.file	"LLVMDialectModule"
	.p2align	4, 0x90                         # -- Begin function lexInsertF64
	.type	.LlexInsertF64,@function
.LlexInsertF64:                         # @lexInsertF64
	.cfi_startproc
# %bb.0:
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	96(%rsp), %rax
	movq	88(%rsp), %r10
	movq	80(%rsp), %r11
	movq	%r9, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%rax, 24(%rsp)
	leaq	32(%rsp), %rsi
	leaq	8(%rsp), %rdx
	callq	_mlir_ciface_lexInsertF64@PLT
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	.LlexInsertF64, .Lfunc_end0-.LlexInsertF64
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function newSparseTensor
	.type	.LnewSparseTensor,@function
.LnewSparseTensor:                      # @newSparseTensor
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$208, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -16
	movq	%r9, %rax
	movq	%r8, 200(%rsp)
	movq	%rcx, 192(%rsp)
	movl	376(%rsp), %r9d
	movq	%rdx, 184(%rsp)
	movl	384(%rsp), %r10d
	movq	%rsi, 176(%rsp)
	movl	392(%rsp), %r11d
	movq	%rdi, 168(%rsp)
	movl	400(%rsp), %ebx
	movq	%rax, 128(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 136(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 152(%rsp)
	movq	248(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	256(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	264(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	272(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	280(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	288(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	296(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	304(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	312(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	320(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	328(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	368(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	344(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	408(%rsp), %rax
	leaq	168(%rsp), %rdi
	leaq	128(%rsp), %rsi
	leaq	88(%rsp), %rdx
	leaq	48(%rsp), %rcx
	leaq	8(%rsp), %r8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	_mlir_ciface_newSparseTensor@PLT
	addq	$240, %rsp
	.cfi_adjust_cfa_offset -240
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	.LnewSparseTensor, .Lfunc_end1-.LnewSparseTensor
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function sparseValuesF64
	.type	.LsparseValuesF64,@function
.LsparseValuesF64:                      # @sparseValuesF64
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	callq	_mlir_ciface_sparseValuesF64@PLT
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rsi
	movq	40(%rsp), %rdi
	movq	%rdi, 32(%rbx)
	movq	%rsi, 24(%rbx)
	movq	%rdx, 16(%rbx)
	movq	%rcx, 8(%rbx)
	movq	%rax, (%rbx)
	movq	%rbx, %rax
	addq	$48, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	.LsparseValuesF64, .Lfunc_end2-.LsparseValuesF64
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function sparseCoordinates0
	.type	.LsparseCoordinates0,@function
.LsparseCoordinates0:                   # @sparseCoordinates0
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	callq	_mlir_ciface_sparseCoordinates0@PLT
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rsi
	movq	40(%rsp), %rdi
	movq	%rdi, 32(%rbx)
	movq	%rsi, 24(%rbx)
	movq	%rdx, 16(%rbx)
	movq	%rcx, 8(%rbx)
	movq	%rax, (%rbx)
	movq	%rbx, %rax
	addq	$48, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	.LsparseCoordinates0, .Lfunc_end3-.LsparseCoordinates0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function sparsePositions0
	.type	.LsparsePositions0,@function
.LsparsePositions0:                     # @sparsePositions0
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	callq	_mlir_ciface_sparsePositions0@PLT
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rsi
	movq	40(%rsp), %rdi
	movq	%rdi, 32(%rbx)
	movq	%rsi, 24(%rbx)
	movq	%rdx, 16(%rbx)
	movq	%rcx, 8(%rbx)
	movq	%rax, (%rbx)
	movq	%rbx, %rax
	addq	$48, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	.LsparsePositions0, .Lfunc_end4-.LsparsePositions0
	.cfi_endproc
                                        # -- End function
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
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	208(%rsp), %rbp
	leaq	80(%rsp), %rdi
	movl	$1, %edx
	callq	.LsparsePositions0
	movq	88(%rsp), %r13
	leaq	40(%rsp), %rdi
	movl	$1, %edx
	movq	%r15, %rsi
	callq	.LsparseCoordinates0
	movq	48(%rsp), %r12
	movq	%rsp, %rdi
	movq	%r15, %rsi
	callq	.LsparseValuesF64
	xorl	%eax, %eax
	movq	8(%rsp), %rcx
	xorl	%edx, %edx
	jmp	.LBB5_1
	.p2align	4, 0x90
.LBB5_8:                                #   in Loop: Header=BB5_1 Depth=1
	incq	%rdx
	addq	$16, %rax
.LBB5_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
                                        #       Child Loop BB5_6 Depth 3
	cmpq	$2, %rdx
	jg	.LBB5_9
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movq	(%r13,%rdx,8), %rsi
	movq	8(%r13,%rdx,8), %rdi
	jmp	.LBB5_3
	.p2align	4, 0x90
.LBB5_7:                                #   in Loop: Header=BB5_3 Depth=2
	incq	%rsi
.LBB5_3:                                #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_6 Depth 3
	cmpq	%rdi, %rsi
	jge	.LBB5_8
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=2
	movq	(%r12,%rsi,8), %r8
	movsd	(%rcx,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	shlq	$4, %r8
	movq	%rax, %r9
	xorl	%r10d, %r10d
	cmpq	$1, %r10
	jg	.LBB5_7
	.p2align	4, 0x90
.LBB5_6:                                #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	(%r14,%r9), %xmm1               # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	addsd	(%rbp,%r8), %xmm1
	movsd	%xmm1, (%rbp,%r8)
	incq	%r10
	addq	$8, %r8
	addq	$8, %r9
	cmpq	$1, %r10
	jle	.LBB5_6
	jmp	.LBB5_7
.LBB5_9:
	movq	200(%rsp), %rax
	movq	%rax, (%rbx)
	movq	%rbp, 8(%rbx)
	movq	216(%rsp), %rax
	movq	%rax, 16(%rbx)
	movq	224(%rsp), %rax
	movq	%rax, 24(%rbx)
	movq	232(%rsp), %rax
	movq	%rax, 32(%rbx)
	movq	240(%rsp), %rax
	movq	%rax, 40(%rbx)
	movq	248(%rsp), %rax
	movq	%rax, 48(%rbx)
	movq	%rbx, %rax
	addq	$120, %rsp
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
.Lfunc_end5:
	.size	matmul, .Lfunc_end5-matmul
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI6_0:
	.quad	0x0000000000000000              # double 0
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$328, %rsp                      # imm = 0x148
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$128, %edi
	callq	malloc@PLT
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	addq	$63, %rax
	andq	$-64, %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movw	$4619, -42(%rbp)                # imm = 0x120B
	movq	$3, -144(%rbp)
	movq	$4, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$1, -120(%rbp)
	leaq	-128(%rbp), %r10
	leaq	-42(%rbp), %rax
	leaq	-144(%rbp), %rdi
	movl	$2, %ecx
	movl	$1, %r8d
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movq	%rdi, %r9
	pushq	$0
	pushq	$0
	pushq	$1
	pushq	$0
	pushq	$0
	pushq	$1
	pushq	$2
	pushq	$0
	pushq	%r10
	pushq	%r10
	pushq	$1
	pushq	$2
	pushq	$0
	pushq	%r10
	pushq	%r10
	pushq	$1
	pushq	$2
	pushq	$0
	pushq	%rax
	pushq	%rax
	pushq	$1
	pushq	$2
	pushq	$0
	pushq	%rdi
	callq	.LnewSparseTensor
	addq	$192, %rsp
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	xorl	%r13d, %r13d
	movl	$.L__constant_4x3xf64, %ebx
	leaq	-96(%rbp), %r12
	leaq	-112(%rbp), %r15
	jmp	.LBB6_1
	.p2align	4, 0x90
.LBB6_7:                                #   in Loop: Header=BB6_1 Depth=1
	incq	%r13
	addq	$24, %rbx
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	cmpq	$3, %r13
	jg	.LBB6_8
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB6_3
	.p2align	4, 0x90
.LBB6_6:                                #   in Loop: Header=BB6_3 Depth=2
	incq	%r14
.LBB6_3:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$2, %r14
	jg	.LBB6_7
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=2
	movsd	(%rbx,%r14,8), %xmm0            # xmm0 = mem[0],zero
	ucomisd	.LCPI6_0(%rip), %xmm0
	jne	.LBB6_5
	jnp	.LBB6_6
.LBB6_5:                                #   in Loop: Header=BB6_3 Depth=2
	movq	%r14, -112(%rbp)
	movq	%r13, -104(%rbp)
	movsd	%xmm0, -96(%rbp)
	subq	$8, %rsp
	movl	$2, %r8d
	movl	$1, %r9d
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%r15, %rsi
	movq	%r15, %rdx
	xorl	%ecx, %ecx
	pushq	$0
	pushq	%r12
	pushq	%r12
	callq	.LlexInsertF64
	addq	$32, %rsp
	jmp	.LBB6_6
.LBB6_8:
	movq	-56(%rbp), %r13                 # 8-byte Reload
	movq	%r13, %rdi
	callq	endLexInsert@PLT
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movw	$4105, -16(%rcx)                # imm = 0x1009
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movq	$4, -16(%rcx)
	movq	$3, -8(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r10
	movq	%r10, %rsp
	movq	$1, -16(%rcx)
	movq	$0, -8(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r11
	movq	%r11, %rsp
	movq	$1, -16(%rcx)
	movq	$0, -8(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r9
	movq	%r9, %rsp
	movq	$3, -16(%rcx)
	movq	$4, -8(%rcx)
	movl	$2, %ecx
	movl	$1, %r8d
	movq	%rdi, %rsi
	xorl	%edx, %edx
	pushq	%r13
	pushq	$8
	pushq	$1
	pushq	$0
	pushq	$0
	pushq	$1
	pushq	$2
	pushq	$0
	pushq	%r11
	pushq	%r11
	pushq	$1
	pushq	$2
	pushq	$0
	pushq	%r10
	pushq	%r10
	pushq	$1
	pushq	$2
	pushq	$0
	pushq	%rax
	pushq	%rax
	pushq	$1
	pushq	$2
	pushq	$0
	pushq	%r9
	callq	.LnewSparseTensor
	addq	$192, %rsp
	movq	%rax, %r15
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rax, %rsp
	movw	$2052, -16(%rcx)                # imm = 0x804
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsp
	movq	$3, -16(%rcx)
	movq	$4, -8(%rcx)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %r10
	movq	%r10, %rsp
	movq	$0, -16(%rcx)
	movq	$1, -8(%rcx)
	movl	$2, %ecx
	movl	$1, %r8d
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movq	%rdi, %r9
	pushq	$0
	pushq	$0
	pushq	$1
	pushq	$0
	pushq	$0
	pushq	$1
	pushq	$2
	pushq	$0
	pushq	%r10
	pushq	%r10
	pushq	$1
	pushq	$2
	pushq	$0
	pushq	%r10
	pushq	%r10
	pushq	$1
	pushq	$2
	pushq	$0
	pushq	%rax
	pushq	%rax
	pushq	$1
	pushq	$2
	pushq	$0
	pushq	%rdi
	callq	.LnewSparseTensor
	addq	$192, %rsp
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	leaq	-304(%rbp), %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	.LsparsePositions0
	movq	-296(%rbp), %rbx
	leaq	-264(%rbp), %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	.LsparseCoordinates0
	movq	-256(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	leaq	-224(%rbp), %rdi
	movl	$1, %edx
	movq	%r15, %rsi
	callq	.LsparseCoordinates0
	movq	-216(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	leaq	-184(%rbp), %rdi
	movq	%r15, %rsi
	callq	.LsparseValuesF64
	movq	-176(%rbp), %r12
	movq	(%rbx), %r14
	movq	8(%rbx), %r13
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	cmpq	%r13, %r14
	jge	.LBB6_11
	.p2align	4, 0x90
.LBB6_10:                               # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movq	(%rax,%r14,8), %rax
	movq	-80(%rbp), %rcx                 # 8-byte Reload
	movq	(%rcx,%r14,8), %rcx
	movsd	(%r12,%r14,8), %xmm0            # xmm0 = mem[0],zero
	movq	%rax, (%r15)
	movq	%rcx, 8(%r15)
	movsd	%xmm0, (%rbx)
	subq	$8, %rsp
	movl	$2, %r8d
	movl	$1, %r9d
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%r15, %rsi
	movq	%r15, %rdx
	xorl	%ecx, %ecx
	pushq	$0
	pushq	%rbx
	pushq	%rbx
	callq	.LlexInsertF64
	addq	$32, %rsp
	incq	%r14
	cmpq	%r13, %r14
	jl	.LBB6_10
.LBB6_11:
	movq	-56(%rbp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdi
	callq	endLexInsert@PLT
	leaq	-360(%rbp), %rdi
	movl	$3735928559, %edx               # imm = 0xDEADBEEF
	movl	$.L__constant_3x2xf64, %ecx
	movl	$3, %r9d
	movq	%rbx, %rsi
	xorl	%r8d, %r8d
	pushq	$1
	pushq	$2
	pushq	$2
	pushq	$4
	pushq	$0
	pushq	-64(%rbp)                       # 8-byte Folded Reload
	pushq	-72(%rbp)                       # 8-byte Folded Reload
	pushq	$1
	pushq	$2
	pushq	$2
	callq	matmul@PLT
	addq	$80, %rsp
	movl	$1, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_4x3xf64,@object    # @__constant_4x3xf64
	.section	.rodata,"a",@progbits
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

	.type	.L__constant_3x2xf64,@object    # @__constant_3x2xf64
	.p2align	6, 0x0
.L__constant_3x2xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x4010000000000000              # double 4
	.zero	16
	.quad	0x0000000000000000              # double 0
	.quad	0x4018000000000000              # double 6
	.size	.L__constant_3x2xf64, 48

	.section	".note.GNU-stack","",@progbits
