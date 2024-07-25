	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_c2p0"
	.file	"LLVMDialectModule"
	.globl	matmul                          # -- Begin function matmul
	.p2align	1
	.type	matmul,@function
matmul:                                 # @matmul
# %bb.0:
	addi	sp, sp, -160
	sd	ra, 152(sp)                     # 8-byte Folded Spill
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	sd	s1, 136(sp)                     # 8-byte Folded Spill
	sd	s2, 128(sp)                     # 8-byte Folded Spill
	sd	s3, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
	sd	s5, 104(sp)                     # 8-byte Folded Spill
	sd	s6, 96(sp)                      # 8-byte Folded Spill
	sd	s7, 88(sp)                      # 8-byte Folded Spill
	sd	s8, 80(sp)                      # 8-byte Folded Spill
	sd	s9, 72(sp)                      # 8-byte Folded Spill
	sd	s10, 64(sp)                     # 8-byte Folded Spill
	sd	s11, 56(sp)                     # 8-byte Folded Spill
	mv	s5, a7
	mv	s4, a2
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	lwu	a0, 4(a2)
	ld	s3, 328(sp)
	ld	s6, 272(sp)
	lwu	a1, 0(a2)
	slli	a0, a0, 32
	lwu	a2, 12(a2)
	lwu	a3, 8(s4)
	or	a0, a0, a1
	ld	a4, 192(sp)
	slli	a1, a2, 32
	or	a1, a1, a3
	addi	s7, s3, 8
	sd	a4, 40(sp)                      # 8-byte Folded Spill
	bge	a0, a1, .LBB0_4
# %bb.1:                                # %.lr.ph
	sub	s9, a1, a0
	slli	a0, a0, 3
	add	s0, a4, a0
	mv	s11, s5
	add	s1, s5, a0
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	lwu	a0, 0(s1)
	lwu	a1, 4(s1)
	ld	s8, 0(s0)
	slli	a0, a0, 4
	slli	a1, a1, 36
	or	s5, a1, a0
	add	s10, s3, s5
	ld	s2, 0(s10)
	ld	a1, 0(s6)
	mv	a0, s8
	call	__muldf3
	mv	a1, a0
	mv	a0, s2
	call	__adddf3
	sd	a0, 0(s10)
	add	s5, s5, s7
	ld	s2, 0(s5)
	ld	a1, 8(s6)
	mv	a0, s8
	call	__muldf3
	mv	a1, a0
	mv	a0, s2
	call	__adddf3
	sd	a0, 0(s5)
	addi	s9, s9, -1
	addi	s0, s0, 8
	addi	s1, s1, 8
	bnez	s9, .LBB0_2
# %bb.3:                                # %.loopexit.loopexit
	lwu	a0, 12(s4)
	lwu	a1, 8(s4)
	slli	a0, a0, 32
	or	a1, a1, a0
	mv	s5, s11
	ld	a4, 40(sp)                      # 8-byte Folded Reload
.LBB0_4:                                # %.loopexit
	lwu	a0, 20(s4)
	lwu	a2, 16(s4)
	slli	a0, a0, 32
	or	a0, a0, a2
	bge	a1, a0, .LBB0_8
# %bb.5:                                # %.lr.ph.1
	sub	s9, a0, a1
	slli	a1, a1, 3
	add	s0, a4, a1
	add	s1, s5, a1
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	lwu	a0, 0(s1)
	lwu	a1, 4(s1)
	ld	s8, 0(s0)
	slli	a0, a0, 4
	slli	a1, a1, 36
	or	s10, a1, a0
	add	s11, s3, s10
	ld	s2, 0(s11)
	ld	a1, 16(s6)
	mv	a0, s8
	call	__muldf3
	mv	a1, a0
	mv	a0, s2
	call	__adddf3
	sd	a0, 0(s11)
	add	s10, s10, s7
	ld	s2, 0(s10)
	ld	a1, 24(s6)
	mv	a0, s8
	call	__muldf3
	mv	a1, a0
	mv	a0, s2
	call	__adddf3
	sd	a0, 0(s10)
	addi	s9, s9, -1
	addi	s0, s0, 8
	addi	s1, s1, 8
	bnez	s9, .LBB0_6
# %bb.7:                                # %.loopexit.loopexit.1
	lwu	a0, 20(s4)
	lwu	a1, 16(s4)
	slli	a0, a0, 32
	or	a0, a0, a1
	ld	a4, 40(sp)                      # 8-byte Folded Reload
.LBB0_8:                                # %.loopexit.1
	ld	a1, 368(sp)
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	ld	a1, 360(sp)
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	ld	a1, 352(sp)
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	ld	a1, 344(sp)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	lwu	a1, 28(s4)
	lwu	a2, 24(s4)
	ld	s8, 336(sp)
	ld	s4, 320(sp)
	slli	a1, a1, 32
	or	a1, a1, a2
	bge	a0, a1, .LBB0_11
# %bb.9:                                # %.lr.ph.2
	sub	s2, a1, a0
	slli	a0, a0, 3
	add	s9, a4, a0
	add	s10, s5, a0
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	lwu	a0, 0(s10)
	lwu	a1, 4(s10)
	ld	s0, 0(s9)
	slli	a0, a0, 4
	slli	a1, a1, 36
	or	s11, a1, a0
	add	s5, s3, s11
	ld	s1, 0(s5)
	ld	a1, 32(s6)
	mv	a0, s0
	call	__muldf3
	mv	a1, a0
	mv	a0, s1
	call	__adddf3
	sd	a0, 0(s5)
	add	s11, s11, s7
	ld	s1, 0(s11)
	ld	a1, 40(s6)
	mv	a0, s0
	call	__muldf3
	mv	a1, a0
	mv	a0, s1
	call	__adddf3
	sd	a0, 0(s11)
	addi	s2, s2, -1
	addi	s9, s9, 8
	addi	s10, s10, 8
	bnez	s2, .LBB0_10
.LBB0_11:                               # %.loopexit.2
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	ld	a1, 8(sp)                       # 8-byte Folded Reload
	sd	a1, 48(a0)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sd	a1, 40(a0)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sd	a1, 32(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	sd	a1, 24(a0)
	sd	s8, 16(a0)
	sd	s3, 8(a0)
	sd	s4, 0(a0)
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	s5, 104(sp)                     # 8-byte Folded Reload
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	ld	s7, 88(sp)                      # 8-byte Folded Reload
	ld	s8, 80(sp)                      # 8-byte Folded Reload
	ld	s9, 72(sp)                      # 8-byte Folded Reload
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	ld	s11, 56(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 160
	ret
.Lfunc_end0:
	.size	matmul, .Lfunc_end0-matmul
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -288
	sd	ra, 280(sp)                     # 8-byte Folded Spill
	li	a0, 128
	call	malloc
	addi	a1, a0, 63
	andi	a1, a1, -64
	li	a2, 1
	sd	a2, 208(sp)
	li	a2, 2
	sd	a2, 200(sp)
	sd	a2, 192(sp)
	li	a2, 4
	sd	a2, 184(sp)
	sd	a1, 168(sp)
	sd	a0, 160(sp)
	lui	a0, %hi(.L__constant_3x2xf64)
	addi	a0, a0, %lo(.L__constant_3x2xf64)
	sd	a0, 112(sp)
	lui	a0, %hi(.L__constant_4xf64)
	addi	a0, a0, %lo(.L__constant_4xf64)
	sd	a0, 32(sp)
	lui	a0, %hi(.L__constant_4xindex_0)
	addi	a2, a0, %lo(.L__constant_4xindex_0)
	lui	a0, %hi(.L__constant_4xindex)
	addi	a7, a0, %lo(.L__constant_4xindex)
	addi	a0, sp, 224
	sd	zero, 176(sp)
	call	matmul
	li	a0, 1
	ld	ra, 280(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 288
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.globl	test_assemble                   # -- Begin function test_assemble
	.p2align	1
	.type	test_assemble,@function
test_assemble:                          # @test_assemble
# %bb.0:
	li	a1, 4
	sd	a1, 152(a0)
	sd	a1, 144(a0)
	sd	a1, 136(a0)
	sd	a1, 128(a0)
	li	a2, 3
	sd	a2, 120(a0)
	li	a2, 1
	sd	a2, 112(a0)
	sd	a1, 104(a0)
	sd	zero, 96(a0)
	lui	a3, %hi(.L__constant_4xf64)
	addi	a3, a3, %lo(.L__constant_4xf64)
	sd	a3, 88(a0)
	lui	a3, 228023
	slli	a3, a3, 2
	addi	a3, a3, -273
	sd	a3, 80(a0)
	sd	a2, 72(a0)
	sd	a1, 64(a0)
	sd	zero, 56(a0)
	lui	a4, %hi(.L__constant_4xindex)
	addi	a4, a4, %lo(.L__constant_4xindex)
	sd	a4, 48(a0)
	sd	a3, 40(a0)
	sd	a2, 32(a0)
	sd	a1, 24(a0)
	sd	zero, 16(a0)
	lui	a1, %hi(.L__constant_4xindex_0)
	addi	a1, a1, %lo(.L__constant_4xindex_0)
	sd	a1, 8(a0)
	sd	a3, 0(a0)
	ret
.Lfunc_end2:
	.size	test_assemble, .Lfunc_end2-test_assemble
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
