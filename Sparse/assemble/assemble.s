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
	call	_mlir_ciface_sparseValuesF64
	ld	s4, 56(sp)
	addi	a0, sp, 48
	li	a2, 1
	mv	a1, s0
	call	_mlir_ciface_sparsePositions0
	ld	s7, 56(sp)
	addi	a0, sp, 48
	li	a2, 1
	mv	a1, s0
	call	_mlir_ciface_sparseCoordinates0
	lwu	a0, 4(s7)
	lwu	a1, 0(s7)
	slli	a0, a0, 32
	lwu	a2, 12(s7)
	lwu	a3, 8(s7)
	or	a0, a0, a1
	ld	s10, 56(sp)
	slli	a1, a2, 32
	or	a1, a1, a3
	addi	s5, s2, 8
	bge	a0, a1, .LBB0_4
# %bb.1:                                # %.lr.ph
	sub	s9, a1, a0
	slli	a0, a0, 3
	sd	s4, 32(sp)                      # 8-byte Folded Spill
	add	s0, s4, a0
	mv	s11, s10
	add	s1, s10, a0
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
	ld	s4, 32(sp)                      # 8-byte Folded Reload
	mv	s10, s11
.LBB0_4:                                # %.loopexit
	lwu	a0, 20(s7)
	lwu	a2, 16(s7)
	slli	a0, a0, 32
	or	a0, a0, a2
	bge	a1, a0, .LBB0_8
# %bb.5:                                # %.lr.ph.1
	sub	s9, a0, a1
	slli	a1, a1, 3
	add	s0, s4, a1
	sd	s10, 32(sp)                     # 8-byte Folded Spill
	add	s1, s10, a1
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
	ld	s10, 32(sp)                     # 8-byte Folded Reload
.LBB0_8:                                # %.loopexit.1
	ld	a1, 248(sp)
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	ld	a1, 240(sp)
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	ld	a1, 232(sp)
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	ld	a1, 224(sp)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
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
	add	s9, s4, a0
	add	s10, s10, a0
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
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	sd	a1, 48(a0)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sd	a1, 40(a0)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sd	a1, 32(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
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
	addi	sp, sp, -448
	.cfi_def_cfa_offset 448
	sd	ra, 440(sp)                     # 8-byte Folded Spill
	sd	s0, 432(sp)                     # 8-byte Folded Spill
	sd	s1, 424(sp)                     # 8-byte Folded Spill
	sd	s2, 416(sp)                     # 8-byte Folded Spill
	sd	s3, 408(sp)                     # 8-byte Folded Spill
	sd	s4, 400(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	li	a0, 128
	call	malloc
	mv	s4, a0
	addi	a0, a0, 63
	andi	s3, a0, -64
	lui	a0, 16
	sd	a0, 184(sp)
	lui	a0, 64
	sd	a0, 192(sp)
	li	a0, 3
	sd	a0, 168(sp)
	li	s2, 4
	sd	s2, 176(sp)
	sd	zero, 152(sp)
	li	s1, 1
	sd	s1, 160(sp)
	lui	a0, %hi(.L__constant_4xindex_0)
	addi	a0, a0, %lo(.L__constant_4xindex_0)
	sd	a0, 128(sp)
	lui	a0, %hi(.L__constant_4xindex)
	addi	a0, a0, %lo(.L__constant_4xindex)
	sd	a0, 136(sp)
	lui	a0, %hi(.L__constant_4xf64)
	addi	a0, a0, %lo(.L__constant_4xf64)
	sd	a0, 144(sp)
	addi	a0, sp, 168
	sd	a0, 360(sp)
	sd	a0, 368(sp)
	sd	zero, 376(sp)
	li	s0, 2
	sd	s0, 384(sp)
	sd	s1, 392(sp)
	sd	a0, 320(sp)
	sd	a0, 328(sp)
	sd	zero, 336(sp)
	sd	s0, 344(sp)
	sd	s1, 352(sp)
	addi	a0, sp, 184
	sd	a0, 280(sp)
	sd	a0, 288(sp)
	sd	zero, 296(sp)
	sd	s0, 304(sp)
	sd	s1, 312(sp)
	addi	a0, sp, 152
	sd	a0, 240(sp)
	sd	a0, 248(sp)
	sd	zero, 256(sp)
	sd	s0, 264(sp)
	sd	s1, 272(sp)
	sd	a0, 200(sp)
	sd	a0, 208(sp)
	sd	zero, 216(sp)
	sd	s0, 224(sp)
	sd	s1, 232(sp)
	addi	a0, sp, 128
	sd	a0, 8(sp)
	addi	a0, sp, 360
	addi	a1, sp, 320
	addi	a2, sp, 280
	addi	a3, sp, 240
	addi	a4, sp, 200
	li	a7, 1
	sd	s0, 0(sp)
	li	a5, 0
	li	a6, 0
	call	_mlir_ciface_newSparseTensor
	mv	a1, a0
	sd	s1, 56(sp)
	sd	s0, 48(sp)
	sd	s0, 40(sp)
	sd	s2, 32(sp)
	sd	zero, 24(sp)
	sd	s3, 16(sp)
	lui	a0, %hi(.L__constant_3x2xf64)
	addi	a3, a0, %lo(.L__constant_3x2xf64)
	addi	a0, sp, 72
	sd	s4, 8(sp)
	call	matmul
	li	a0, 1
	ld	ra, 440(sp)                     # 8-byte Folded Reload
	ld	s0, 432(sp)                     # 8-byte Folded Reload
	ld	s1, 424(sp)                     # 8-byte Folded Reload
	ld	s2, 416(sp)                     # 8-byte Folded Reload
	ld	s3, 408(sp)                     # 8-byte Folded Reload
	ld	s4, 400(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 448
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.globl	test_assemble                   # -- Begin function test_assemble
	.p2align	1
	.type	test_assemble,@function
test_assemble:                          # @test_assemble
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -304
	.cfi_def_cfa_offset 304
	sd	ra, 296(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	lui	a0, 16
	sd	a0, 80(sp)
	lui	a0, 64
	sd	a0, 88(sp)
	li	a0, 3
	sd	a0, 64(sp)
	li	a0, 4
	sd	a0, 72(sp)
	sd	zero, 48(sp)
	li	a0, 1
	sd	a0, 56(sp)
	lui	a1, %hi(.L__constant_4xindex_0)
	addi	a1, a1, %lo(.L__constant_4xindex_0)
	sd	a1, 24(sp)
	lui	a1, %hi(.L__constant_4xindex)
	addi	a1, a1, %lo(.L__constant_4xindex)
	sd	a1, 32(sp)
	lui	a1, %hi(.L__constant_4xf64)
	addi	a1, a1, %lo(.L__constant_4xf64)
	sd	a1, 40(sp)
	addi	a1, sp, 64
	sd	a1, 256(sp)
	sd	a1, 264(sp)
	sd	zero, 272(sp)
	li	a5, 2
	sd	a5, 280(sp)
	sd	a0, 288(sp)
	sd	a1, 216(sp)
	sd	a1, 224(sp)
	sd	zero, 232(sp)
	sd	a5, 240(sp)
	sd	a0, 248(sp)
	addi	a1, sp, 80
	sd	a1, 176(sp)
	sd	a1, 184(sp)
	sd	zero, 192(sp)
	sd	a5, 200(sp)
	sd	a0, 208(sp)
	addi	a1, sp, 48
	sd	a1, 136(sp)
	sd	a1, 144(sp)
	sd	zero, 152(sp)
	sd	a5, 160(sp)
	sd	a0, 168(sp)
	sd	a1, 96(sp)
	sd	a1, 104(sp)
	sd	zero, 112(sp)
	sd	a5, 120(sp)
	sd	a0, 128(sp)
	addi	a0, sp, 24
	sd	a0, 8(sp)
	addi	a0, sp, 256
	addi	a1, sp, 216
	addi	a2, sp, 176
	addi	a3, sp, 136
	addi	a4, sp, 96
	li	a7, 1
	sd	a5, 0(sp)
	li	a5, 0
	li	a6, 0
	call	_mlir_ciface_newSparseTensor
	ld	ra, 296(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 304
	ret
.Lfunc_end2:
	.size	test_assemble, .Lfunc_end2-test_assemble
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

	.type	.L__constant_4xindex_0,@object  # @__constant_4xindex_0
	.p2align	6, 0x0
.L__constant_4xindex_0:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.size	.L__constant_4xindex_0, 32

	.type	.L__constant_4xindex,@object    # @__constant_4xindex
	.p2align	6, 0x0
.L__constant_4xindex:
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.size	.L__constant_4xindex, 32

	.type	.L__constant_4xf64,@object      # @__constant_4xf64
	.p2align	6, 0x0
.L__constant_4xf64:
	.quad	0x4008000000000000              # double 3
	.quad	0x4014000000000000              # double 5
	.quad	0x401c000000000000              # double 7
	.quad	0x4010000000000000              # double 4
	.size	.L__constant_4xf64, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym .L__constant_3x2xf64
	.addrsig_sym .L__constant_4xindex_0
	.addrsig_sym .L__constant_4xindex
	.addrsig_sym .L__constant_4xf64
