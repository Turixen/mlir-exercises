	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.file	"LLVMDialectModule"
	.globl	matmul                          # -- Begin function matmul
	.p2align	1
	.type	matmul,@function
matmul:                                 # @matmul
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	sd	s1, 72(sp)                      # 8-byte Folded Spill
	sd	s2, 64(sp)                      # 8-byte Folded Spill
	sd	s3, 56(sp)                      # 8-byte Folded Spill
	sd	s4, 48(sp)                      # 8-byte Folded Spill
	sd	s5, 40(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	ld	s0, 112(sp)
	mv	s1, a3
	mv	s3, a1
	mv	s2, a0
	mv	a0, sp
	li	a2, 1
	call	_mlir_ciface_sparsePositions0
	ld	s5, 8(sp)
	mv	a0, sp
	li	a2, 1
	mv	a1, s3
	call	_mlir_ciface_sparseCoordinates0
	ld	s4, 8(sp)
	mv	a0, sp
	mv	a1, s3
	call	_mlir_ciface_sparseValuesF64
	lwu	a0, 4(s5)
	lwu	a1, 0(s5)
	slli	a0, a0, 32
	lwu	a2, 12(s5)
	lwu	a4, 8(s5)
	or	a3, a0, a1
	ld	a6, 8(sp)
	slli	a2, a2, 32
	or	a2, a2, a4
	addi	a0, s0, 8
	bge	a3, a2, .LBB0_4
# %bb.1:                                # %.lr.ph
	sub	a1, a2, a3
	slli	a3, a3, 3
	add	a2, a6, a3
	add	a3, a3, s4
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	lwu	a4, 0(a3)
	lwu	a5, 4(a3)
	fld	fa5, 0(a2)
	slli	a4, a4, 4
	slli	a5, a5, 36
	or	a4, a4, a5
	add	a5, s0, a4
	fld	fa4, 0(s1)
	fld	fa3, 0(a5)
	fmul.d	fa4, fa5, fa4
	fadd.d	fa4, fa3, fa4
	fsd	fa4, 0(a5)
	add	a4, a4, a0
	fld	fa4, 8(s1)
	fld	fa3, 0(a4)
	fmul.d	fa5, fa5, fa4
	fadd.d	fa5, fa3, fa5
	fsd	fa5, 0(a4)
	addi	a1, a1, -1
	addi	a2, a2, 8
	addi	a3, a3, 8
	bnez	a1, .LBB0_2
# %bb.3:                                # %.loopexit.loopexit
	lwu	a1, 12(s5)
	lwu	a2, 8(s5)
	slli	a1, a1, 32
	or	a2, a2, a1
.LBB0_4:                                # %.loopexit
	lwu	a1, 20(s5)
	lwu	a3, 16(s5)
	slli	a1, a1, 32
	or	a4, a1, a3
	bge	a2, a4, .LBB0_8
# %bb.5:                                # %.lr.ph.1
	sub	a1, a4, a2
	slli	a3, a2, 3
	add	a2, a6, a3
	add	a3, a3, s4
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	lwu	a4, 0(a3)
	lwu	a5, 4(a3)
	fld	fa5, 0(a2)
	slli	a4, a4, 4
	slli	a5, a5, 36
	or	a4, a4, a5
	add	a5, s0, a4
	fld	fa4, 16(s1)
	fld	fa3, 0(a5)
	fmul.d	fa4, fa5, fa4
	fadd.d	fa4, fa3, fa4
	fsd	fa4, 0(a5)
	add	a4, a4, a0
	fld	fa4, 24(s1)
	fld	fa3, 0(a4)
	fmul.d	fa5, fa5, fa4
	fadd.d	fa5, fa3, fa5
	fsd	fa5, 0(a4)
	addi	a1, a1, -1
	addi	a2, a2, 8
	addi	a3, a3, 8
	bnez	a1, .LBB0_6
# %bb.7:                                # %.loopexit.loopexit.1
	lwu	a1, 20(s5)
	lwu	a2, 16(s5)
	slli	a1, a1, 32
	or	a4, a1, a2
.LBB0_8:                                # %.loopexit.1
	ld	t2, 152(sp)
	ld	t1, 144(sp)
	ld	t0, 136(sp)
	ld	a7, 128(sp)
	lwu	a3, 28(s5)
	lwu	a5, 24(s5)
	ld	a2, 120(sp)
	ld	a1, 104(sp)
	slli	a3, a3, 32
	or	a3, a3, a5
	bge	a4, a3, .LBB0_11
# %bb.9:                                # %.lr.ph.2
	sub	a3, a3, a4
	slli	a4, a4, 3
	add	a6, a6, a4
	add	s4, s4, a4
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	lwu	a4, 0(s4)
	lwu	a5, 4(s4)
	fld	fa5, 0(a6)
	slli	a4, a4, 4
	slli	a5, a5, 36
	or	a4, a4, a5
	add	a5, s0, a4
	fld	fa4, 32(s1)
	fld	fa3, 0(a5)
	fmul.d	fa4, fa5, fa4
	fadd.d	fa4, fa3, fa4
	fsd	fa4, 0(a5)
	add	a4, a4, a0
	fld	fa4, 40(s1)
	fld	fa3, 0(a4)
	fmul.d	fa5, fa5, fa4
	fadd.d	fa5, fa3, fa5
	fsd	fa5, 0(a4)
	addi	a3, a3, -1
	addi	a6, a6, 8
	addi	s4, s4, 8
	bnez	a3, .LBB0_10
.LBB0_11:                               # %.loopexit.2
	sd	t2, 48(s2)
	sd	t1, 40(s2)
	sd	t0, 32(s2)
	sd	a7, 24(s2)
	sd	a2, 16(s2)
	sd	s0, 8(s2)
	sd	a1, 0(s2)
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end0:
	.size	matmul, .Lfunc_end0-matmul
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -624
	.cfi_def_cfa_offset 624
	sd	ra, 616(sp)                     # 8-byte Folded Spill
	sd	s0, 608(sp)                     # 8-byte Folded Spill
	sd	s1, 600(sp)                     # 8-byte Folded Spill
	sd	s2, 592(sp)                     # 8-byte Folded Spill
	sd	s3, 584(sp)                     # 8-byte Folded Spill
	sd	s4, 576(sp)                     # 8-byte Folded Spill
	sd	s5, 568(sp)                     # 8-byte Folded Spill
	sd	s6, 560(sp)                     # 8-byte Folded Spill
	sd	s7, 552(sp)                     # 8-byte Folded Spill
	sd	s8, 544(sp)                     # 8-byte Folded Spill
	sd	s9, 536(sp)                     # 8-byte Folded Spill
	sd	s10, 528(sp)                    # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	.cfi_offset s10, -96
	li	a0, 128
	call	malloc
	mv	s2, a0
	li	a0, 11
	sb	a0, 326(sp)
	li	a0, 18
	sb	a0, 327(sp)
	li	s6, 3
	sd	s6, 304(sp)
	li	s3, 4
	sd	s3, 312(sp)
	sd	zero, 288(sp)
	li	s8, 1
	sd	s8, 296(sp)
	addi	a0, sp, 304
	sd	a0, 488(sp)
	sd	a0, 496(sp)
	sd	zero, 504(sp)
	li	s5, 2
	sd	s5, 512(sp)
	sd	s8, 520(sp)
	sd	a0, 448(sp)
	sd	a0, 456(sp)
	sd	zero, 464(sp)
	sd	s5, 472(sp)
	sd	s8, 480(sp)
	addi	a0, sp, 326
	sd	a0, 408(sp)
	sd	a0, 416(sp)
	sd	zero, 424(sp)
	sd	s5, 432(sp)
	sd	s8, 440(sp)
	addi	a0, sp, 288
	sd	a0, 368(sp)
	sd	a0, 376(sp)
	sd	zero, 384(sp)
	sd	s5, 392(sp)
	sd	s8, 400(sp)
	sd	a0, 328(sp)
	sd	a0, 336(sp)
	sd	zero, 344(sp)
	sd	s5, 352(sp)
	sd	s8, 360(sp)
	sd	zero, 8(sp)
	addi	a0, sp, 488
	addi	a1, sp, 448
	addi	a2, sp, 408
	addi	a3, sp, 368
	addi	a4, sp, 328
	li	a7, 1
	sd	zero, 0(sp)
	li	a5, 0
	li	a6, 0
	call	_mlir_ciface_newSparseTensor
	mv	s4, a0
	sd	zero, 272(sp)
	sd	zero, 280(sp)
	li	a0, 1023
	slli	a0, a0, 52
	sd	a0, 264(sp)
	addi	s7, sp, 272
	sd	s7, 488(sp)
	sd	s7, 496(sp)
	sd	zero, 504(sp)
	sd	s5, 512(sp)
	sd	s8, 520(sp)
	addi	s1, sp, 264
	sd	s1, 448(sp)
	sd	s1, 456(sp)
	sd	zero, 464(sp)
	addi	a1, sp, 488
	addi	a2, sp, 448
	mv	a0, s4
	call	_mlir_ciface_lexInsertF64
	sd	s5, 272(sp)
	sd	zero, 280(sp)
	lui	a0, 2049
	slli	a0, a0, 39
	sd	a0, 264(sp)
	sd	s7, 488(sp)
	sd	s7, 496(sp)
	sd	zero, 504(sp)
	sd	s5, 512(sp)
	sd	s8, 520(sp)
	sd	s1, 448(sp)
	sd	s1, 456(sp)
	sd	zero, 464(sp)
	addi	a1, sp, 488
	addi	a2, sp, 448
	mv	a0, s4
	call	_mlir_ciface_lexInsertF64
	sd	s8, 272(sp)
	sd	s8, 280(sp)
	slli	a0, s8, 62
	sd	a0, 264(sp)
	sd	s7, 488(sp)
	sd	s7, 496(sp)
	sd	zero, 504(sp)
	sd	s5, 512(sp)
	sd	s8, 520(sp)
	sd	s1, 448(sp)
	sd	s1, 456(sp)
	sd	zero, 464(sp)
	addi	a1, sp, 488
	addi	a2, sp, 448
	mv	a0, s4
	call	_mlir_ciface_lexInsertF64
	sd	s5, 272(sp)
	sd	s8, 280(sp)
	li	a0, 1025
	slli	a0, a0, 52
	sd	a0, 264(sp)
	sd	s7, 488(sp)
	sd	s7, 496(sp)
	sd	zero, 504(sp)
	sd	s5, 512(sp)
	sd	s8, 520(sp)
	sd	s1, 448(sp)
	sd	s1, 456(sp)
	sd	zero, 464(sp)
	addi	a1, sp, 488
	addi	a2, sp, 448
	mv	a0, s4
	call	_mlir_ciface_lexInsertF64
	sd	s5, 272(sp)
	sd	s6, 280(sp)
	lui	a0, 4101
	slli	a0, a0, 38
	sd	a0, 264(sp)
	sd	s7, 488(sp)
	sd	s7, 496(sp)
	sd	zero, 504(sp)
	sd	s5, 512(sp)
	sd	s8, 520(sp)
	sd	s1, 448(sp)
	sd	s1, 456(sp)
	sd	zero, 464(sp)
	addi	a1, sp, 488
	addi	a2, sp, 448
	mv	a0, s4
	call	_mlir_ciface_lexInsertF64
	mv	a0, s4
	call	endLexInsert
	li	a0, 9
	sb	a0, 262(sp)
	li	a0, 16
	sb	a0, 263(sp)
	sd	s3, 240(sp)
	sd	s6, 248(sp)
	sd	s8, 224(sp)
	sd	zero, 232(sp)
	sd	s8, 208(sp)
	sd	zero, 216(sp)
	sd	s6, 192(sp)
	sd	s3, 200(sp)
	addi	a0, sp, 240
	sd	a0, 488(sp)
	sd	a0, 496(sp)
	sd	zero, 504(sp)
	sd	s5, 512(sp)
	sd	s8, 520(sp)
	addi	a0, sp, 192
	sd	a0, 448(sp)
	sd	a0, 456(sp)
	sd	zero, 464(sp)
	sd	s5, 472(sp)
	sd	s8, 480(sp)
	addi	a0, sp, 262
	sd	a0, 408(sp)
	sd	a0, 416(sp)
	sd	zero, 424(sp)
	sd	s5, 432(sp)
	sd	s8, 440(sp)
	addi	a0, sp, 224
	sd	a0, 368(sp)
	sd	a0, 376(sp)
	sd	zero, 384(sp)
	sd	s5, 392(sp)
	sd	s8, 400(sp)
	addi	a0, sp, 208
	sd	a0, 328(sp)
	sd	a0, 336(sp)
	sd	zero, 344(sp)
	sd	s5, 352(sp)
	sd	s8, 360(sp)
	sd	s4, 8(sp)
	li	s0, 8
	addi	a0, sp, 488
	addi	a1, sp, 448
	addi	a2, sp, 408
	addi	a3, sp, 368
	addi	a4, sp, 328
	li	a7, 1
	sd	s0, 0(sp)
	li	a5, 0
	li	a6, 0
	call	_mlir_ciface_newSparseTensor
	mv	s4, a0
	sb	s3, 190(sp)
	sb	s0, 191(sp)
	sd	s6, 168(sp)
	sd	s3, 176(sp)
	sd	zero, 152(sp)
	sd	s8, 160(sp)
	addi	a0, sp, 168
	sd	a0, 488(sp)
	sd	a0, 496(sp)
	sd	zero, 504(sp)
	sd	s5, 512(sp)
	sd	s8, 520(sp)
	sd	a0, 448(sp)
	sd	a0, 456(sp)
	sd	zero, 464(sp)
	sd	s5, 472(sp)
	sd	s8, 480(sp)
	addi	a0, sp, 190
	sd	a0, 408(sp)
	sd	a0, 416(sp)
	sd	zero, 424(sp)
	sd	s5, 432(sp)
	sd	s8, 440(sp)
	addi	a0, sp, 152
	sd	a0, 368(sp)
	sd	a0, 376(sp)
	sd	zero, 384(sp)
	sd	s5, 392(sp)
	sd	s8, 400(sp)
	sd	a0, 328(sp)
	sd	a0, 336(sp)
	sd	zero, 344(sp)
	sd	s5, 352(sp)
	sd	s8, 360(sp)
	sd	zero, 8(sp)
	addi	a0, sp, 488
	addi	a1, sp, 448
	addi	a2, sp, 408
	addi	a3, sp, 368
	addi	a4, sp, 328
	li	a7, 1
	sd	zero, 0(sp)
	li	a5, 0
	li	a6, 0
	call	_mlir_ciface_newSparseTensor
	mv	s6, a0
	addi	a0, sp, 488
	mv	a1, s4
	li	a2, 0
	call	_mlir_ciface_sparsePositions0
	ld	s1, 496(sp)
	addi	a0, sp, 488
	mv	a1, s4
	li	a2, 0
	call	_mlir_ciface_sparseCoordinates0
	ld	s9, 496(sp)
	addi	a0, sp, 488
	li	a2, 1
	mv	a1, s4
	call	_mlir_ciface_sparseCoordinates0
	ld	s0, 496(sp)
	addi	a0, sp, 488
	mv	a1, s4
	call	_mlir_ciface_sparseValuesF64
	lwu	a0, 4(s1)
	lwu	a1, 0(s1)
	lwu	a2, 12(s1)
	lwu	a3, 8(s1)
	slli	a0, a0, 32
	or	a0, a0, a1
	slli	a1, a2, 32
	or	a1, a1, a3
	bge	a0, a1, .LBB1_3
# %bb.1:                                # %.lr.ph
	ld	s7, 496(sp)
	sub	s4, a1, a0
	slli	a0, a0, 3
	add	s7, s7, a0
	add	s0, s0, a0
	add	s1, s9, a0
	addi	s9, sp, 136
	addi	s10, sp, 128
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	lwu	a0, 4(s1)
	lwu	a1, 0(s1)
	lwu	a2, 4(s0)
	slli	a0, a0, 32
	lwu	a3, 0(s0)
	or	a0, a0, a1
	slli	a2, a2, 32
	fld	fa5, 0(s7)
	or	a2, a2, a3
	sd	a0, 136(sp)
	sd	a2, 144(sp)
	fsd	fa5, 128(sp)
	sd	s9, 488(sp)
	sd	s9, 496(sp)
	sd	zero, 504(sp)
	sd	s5, 512(sp)
	sd	s8, 520(sp)
	sd	s10, 448(sp)
	sd	s10, 456(sp)
	sd	zero, 464(sp)
	addi	a1, sp, 488
	addi	a2, sp, 448
	mv	a0, s6
	call	_mlir_ciface_lexInsertF64
	addi	s4, s4, -1
	addi	s7, s7, 8
	addi	s0, s0, 8
	addi	s1, s1, 8
	bnez	s4, .LBB1_2
.LBB1_3:                                # %._crit_edge
	addi	a0, s2, 63
	andi	s0, a0, -64
	mv	a0, s6
	call	endLexInsert
	sd	s8, 56(sp)
	sd	s5, 48(sp)
	sd	s5, 40(sp)
	sd	s3, 32(sp)
	sd	zero, 24(sp)
	sd	s0, 16(sp)
	lui	a0, %hi(.L__constant_3x2xf64)
	addi	a3, a0, %lo(.L__constant_3x2xf64)
	addi	a0, sp, 72
	sd	s2, 8(sp)
	mv	a1, s6
	call	matmul
	li	a0, 1
	ld	ra, 616(sp)                     # 8-byte Folded Reload
	ld	s0, 608(sp)                     # 8-byte Folded Reload
	ld	s1, 600(sp)                     # 8-byte Folded Reload
	ld	s2, 592(sp)                     # 8-byte Folded Reload
	ld	s3, 584(sp)                     # 8-byte Folded Reload
	ld	s4, 576(sp)                     # 8-byte Folded Reload
	ld	s5, 568(sp)                     # 8-byte Folded Reload
	ld	s6, 560(sp)                     # 8-byte Folded Reload
	ld	s7, 552(sp)                     # 8-byte Folded Reload
	ld	s8, 544(sp)                     # 8-byte Folded Reload
	ld	s9, 536(sp)                     # 8-byte Folded Reload
	ld	s10, 528(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 624
	ret
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

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym .L__constant_3x2xf64
