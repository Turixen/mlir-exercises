	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_c2p0"
	.file	"LLVMDialectModule"
	.globl	matmul                          # -- Begin function matmul
	.p2align	1
	.type	matmul,@function
matmul:                                 # @matmul
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -192
	.cfi_def_cfa_offset 192
	sd	ra, 184(sp)                     # 8-byte Folded Spill
	sd	s0, 176(sp)                     # 8-byte Folded Spill
	sd	s1, 168(sp)                     # 8-byte Folded Spill
	sd	s2, 160(sp)                     # 8-byte Folded Spill
	sd	s3, 152(sp)                     # 8-byte Folded Spill
	sd	s4, 144(sp)                     # 8-byte Folded Spill
	sd	s5, 136(sp)                     # 8-byte Folded Spill
	sd	s6, 128(sp)                     # 8-byte Folded Spill
	sd	s7, 120(sp)                     # 8-byte Folded Spill
	sd	s8, 112(sp)                     # 8-byte Folded Spill
	sd	s9, 104(sp)                     # 8-byte Folded Spill
	sd	s10, 96(sp)                     # 8-byte Folded Spill
	sd	s11, 88(sp)                     # 8-byte Folded Spill
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
	.cfi_offset s11, -104
	ld	s2, 208(sp)
	mv	s3, a3
	mv	s0, a1
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	addi	a0, sp, 48
	li	a2, 1
	call	_mlir_ciface_sparsePositions0
	ld	s7, 56(sp)
	addi	a0, sp, 48
	li	a2, 1
	mv	a1, s0
	call	_mlir_ciface_sparseCoordinates0
	ld	s4, 56(sp)
	addi	a0, sp, 48
	mv	a1, s0
	call	_mlir_ciface_sparseValuesF64
	lwu	a0, 4(s7)
	lwu	a1, 0(s7)
	slli	a0, a0, 32
	lwu	a2, 12(s7)
	lwu	a3, 8(s7)
	or	a0, a0, a1
	ld	a4, 56(sp)
	slli	a1, a2, 32
	or	a1, a1, a3
	addi	s5, s2, 8
	sd	a4, 32(sp)                      # 8-byte Folded Spill
	bge	a0, a1, .LBB0_4
# %bb.1:                                # %.lr.ph
	sub	s9, a1, a0
	slli	a0, a0, 3
	add	s0, a4, a0
	mv	s11, s4
	add	s1, s4, a0
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	lwu	a0, 0(s1)
	lwu	a1, 4(s1)
	ld	s8, 0(s0)
	slli	a0, a0, 4
	slli	a1, a1, 36
	or	s4, a1, a0
	add	s10, s2, s4
	ld	s6, 0(s10)
	ld	a1, 0(s3)
	mv	a0, s8
	call	__muldf3
	mv	a1, a0
	mv	a0, s6
	call	__adddf3
	sd	a0, 0(s10)
	add	s4, s4, s5
	ld	s6, 0(s4)
	ld	a1, 8(s3)
	mv	a0, s8
	call	__muldf3
	mv	a1, a0
	mv	a0, s6
	call	__adddf3
	sd	a0, 0(s4)
	addi	s9, s9, -1
	addi	s0, s0, 8
	addi	s1, s1, 8
	bnez	s9, .LBB0_2
# %bb.3:                                # %.loopexit.loopexit
	lwu	a0, 12(s7)
	lwu	a1, 8(s7)
	slli	a0, a0, 32
	or	a1, a1, a0
	mv	s4, s11
	ld	a4, 32(sp)                      # 8-byte Folded Reload
.LBB0_4:                                # %.loopexit
	lwu	a0, 20(s7)
	lwu	a2, 16(s7)
	slli	a0, a0, 32
	or	a0, a0, a2
	bge	a1, a0, .LBB0_8
# %bb.5:                                # %.lr.ph.1
	sub	s9, a0, a1
	slli	a1, a1, 3
	add	s0, a4, a1
	add	s1, s4, a1
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	lwu	a0, 0(s1)
	lwu	a1, 4(s1)
	ld	s8, 0(s0)
	slli	a0, a0, 4
	slli	a1, a1, 36
	or	s10, a1, a0
	add	s11, s2, s10
	ld	s6, 0(s11)
	ld	a1, 16(s3)
	mv	a0, s8
	call	__muldf3
	mv	a1, a0
	mv	a0, s6
	call	__adddf3
	sd	a0, 0(s11)
	add	s10, s10, s5
	ld	s6, 0(s10)
	ld	a1, 24(s3)
	mv	a0, s8
	call	__muldf3
	mv	a1, a0
	mv	a0, s6
	call	__adddf3
	sd	a0, 0(s10)
	addi	s9, s9, -1
	addi	s0, s0, 8
	addi	s1, s1, 8
	bnez	s9, .LBB0_6
# %bb.7:                                # %.loopexit.loopexit.1
	lwu	a0, 20(s7)
	lwu	a1, 16(s7)
	slli	a0, a0, 32
	or	a0, a0, a1
	ld	a4, 32(sp)                      # 8-byte Folded Reload
.LBB0_8:                                # %.loopexit.1
	ld	a1, 248(sp)
	sd	a1, 0(sp)                       # 8-byte Folded Spill
	ld	a1, 240(sp)
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	ld	a1, 232(sp)
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	ld	a1, 224(sp)
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	lwu	a1, 28(s7)
	lwu	a2, 24(s7)
	ld	s8, 216(sp)
	ld	s7, 200(sp)
	slli	a1, a1, 32
	or	a1, a1, a2
	bge	a0, a1, .LBB0_11
# %bb.9:                                # %.lr.ph.2
	sub	s6, a1, a0
	slli	a0, a0, 3
	add	s9, a4, a0
	add	s10, s4, a0
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	lwu	a0, 0(s10)
	lwu	a1, 4(s10)
	ld	s0, 0(s9)
	slli	a0, a0, 4
	slli	a1, a1, 36
	or	s11, a1, a0
	add	s4, s2, s11
	ld	s1, 0(s4)
	ld	a1, 32(s3)
	mv	a0, s0
	call	__muldf3
	mv	a1, a0
	mv	a0, s1
	call	__adddf3
	sd	a0, 0(s4)
	add	s11, s11, s5
	ld	s1, 0(s11)
	ld	a1, 40(s3)
	mv	a0, s0
	call	__muldf3
	mv	a1, a0
	mv	a0, s1
	call	__adddf3
	sd	a0, 0(s11)
	addi	s6, s6, -1
	addi	s9, s9, 8
	addi	s10, s10, 8
	bnez	s6, .LBB0_10
.LBB0_11:                               # %.loopexit.2
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	ld	a1, 0(sp)                       # 8-byte Folded Reload
	sd	a1, 48(a0)
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	sd	a1, 40(a0)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sd	a1, 32(a0)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sd	a1, 24(a0)
	sd	s8, 16(a0)
	sd	s2, 8(a0)
	sd	s7, 0(a0)
	ld	ra, 184(sp)                     # 8-byte Folded Reload
	ld	s0, 176(sp)                     # 8-byte Folded Reload
	ld	s1, 168(sp)                     # 8-byte Folded Reload
	ld	s2, 160(sp)                     # 8-byte Folded Reload
	ld	s3, 152(sp)                     # 8-byte Folded Reload
	ld	s4, 144(sp)                     # 8-byte Folded Reload
	ld	s5, 136(sp)                     # 8-byte Folded Reload
	ld	s6, 128(sp)                     # 8-byte Folded Reload
	ld	s7, 120(sp)                     # 8-byte Folded Reload
	ld	s8, 112(sp)                     # 8-byte Folded Reload
	ld	s9, 104(sp)                     # 8-byte Folded Reload
	ld	s10, 96(sp)                     # 8-byte Folded Reload
	ld	s11, 88(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 192
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
	ld	a1, 0(s7)
	or	a2, a2, a3
	sd	a0, 136(sp)
	sd	a2, 144(sp)
	sd	a1, 128(sp)
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
