	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
	.file	"LLVMDialectModule"
	.globl	matmul                          # -- Begin function matmul
	.p2align	1
	.type	matmul,@function
matmul:                                 # @matmul
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -176
	.cfi_def_cfa_offset 176
	sd	a0, 72(sp)                      # 8-byte Folded Spill
	ld	a0, 384(sp)
	sd	a0, 80(sp)                      # 8-byte Folded Spill
	ld	a0, 376(sp)
	sd	a0, 88(sp)                      # 8-byte Folded Spill
	ld	a0, 368(sp)
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	ld	a0, 360(sp)
	sd	a0, 104(sp)                     # 8-byte Folded Spill
	ld	a0, 352(sp)
	sd	a0, 112(sp)                     # 8-byte Folded Spill
	ld	a0, 344(sp)
	sd	a0, 120(sp)                     # 8-byte Folded Spill
	ld	a0, 336(sp)
	sd	a0, 128(sp)                     # 8-byte Folded Spill
	ld	a0, 328(sp)
	ld	a0, 320(sp)
	ld	a0, 312(sp)
	ld	a0, 304(sp)
	ld	a0, 296(sp)
	ld	a0, 288(sp)
	sd	a0, 136(sp)                     # 8-byte Folded Spill
	ld	a0, 280(sp)
	ld	a0, 232(sp)
	ld	a0, 224(sp)
	ld	a0, 216(sp)
	ld	a0, 208(sp)
	sd	a0, 144(sp)                     # 8-byte Folded Spill
	ld	a0, 200(sp)
	ld	a0, 192(sp)
	ld	a0, 184(sp)
	ld	a0, 176(sp)
	sd	a2, 152(sp)                     # 8-byte Folded Spill
	li	a0, 0
	sd	a7, 160(sp)                     # 8-byte Folded Spill
	sd	a0, 168(sp)                     # 8-byte Folded Spill
	j	.LBB0_1
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	ld	a1, 168(sp)                     # 8-byte Folded Reload
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	li	a0, 2
	blt	a0, a1, .LBB0_9
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, 152(sp)                     # 8-byte Folded Reload
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 3
	add	a1, a1, a0
	lwu	a2, 0(a1)
	lwu	a0, 4(a1)
	slli	a0, a0, 32
	or	a0, a0, a2
	lwu	a2, 8(a1)
	lwu	a1, 12(a1)
	slli	a1, a1, 32
	or	a1, a1, a2
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	j	.LBB0_3
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	bge	a0, a1, .LBB0_8
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=2
	ld	a0, 144(sp)                     # 8-byte Folded Reload
	ld	a2, 160(sp)                     # 8-byte Folded Reload
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	slli	a1, a1, 3
	add	a2, a2, a1
	lwu	a3, 0(a2)
	lwu	a2, 4(a2)
	slli	a2, a2, 32
	or	a2, a2, a3
	sd	a2, 16(sp)                      # 8-byte Folded Spill
	add	a0, a0, a1
	fld	fa5, 0(a0)
	fsd	fa5, 24(sp)                     # 8-byte Folded Spill
	li	a0, 0
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	j	.LBB0_5
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	sd	a1, 8(sp)                       # 8-byte Folded Spill
	li	a0, 1
	blt	a0, a1, .LBB0_7
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=3
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	fld	fa4, 24(sp)                     # 8-byte Folded Reload
	ld	a2, 136(sp)                     # 8-byte Folded Reload
	ld	a3, 64(sp)                      # 8-byte Folded Reload
	ld	a1, 120(sp)                     # 8-byte Folded Reload
	ld	a4, 16(sp)                      # 8-byte Folded Reload
	slli	a4, a4, 1
	add	a4, a4, a0
	slli	a4, a4, 3
	add	a1, a1, a4
	fld	fa5, 0(a1)
	slli	a3, a3, 1
	add	a3, a3, a0
	slli	a3, a3, 3
	add	a2, a2, a3
	fld	fa3, 0(a2)
	fmul.d	fa4, fa4, fa3
	fadd.d	fa5, fa5, fa4
	fsd	fa5, 0(a1)
	addi	a0, a0, 1
	sd	a0, 32(sp)                      # 8-byte Folded Spill
	j	.LBB0_5
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=2
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 1
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	j	.LBB0_3
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, 64(sp)                      # 8-byte Folded Reload
	addi	a0, a0, 1
	sd	a0, 168(sp)                     # 8-byte Folded Spill
	j	.LBB0_1
.LBB0_9:
	ld	a0, 80(sp)                      # 8-byte Folded Reload
	ld	a1, 72(sp)                      # 8-byte Folded Reload
	ld	a2, 88(sp)                      # 8-byte Folded Reload
	ld	a3, 96(sp)                      # 8-byte Folded Reload
	ld	a4, 104(sp)                     # 8-byte Folded Reload
	ld	a5, 112(sp)                     # 8-byte Folded Reload
	ld	a6, 120(sp)                     # 8-byte Folded Reload
	ld	a7, 128(sp)                     # 8-byte Folded Reload
	sd	a7, 0(a1)
	sd	a6, 8(a1)
	sd	a5, 16(a1)
	sd	a4, 24(a1)
	sd	a3, 32(a1)
	sd	a2, 40(a1)
	sd	a0, 48(a1)
	addi	sp, sp, 176
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
	addi	sp, sp, -544
	.cfi_def_cfa_offset 544
	sd	ra, 536(sp)                     # 8-byte Folded Spill
	sd	s0, 528(sp)                     # 8-byte Folded Spill
	sd	s1, 520(sp)                     # 8-byte Folded Spill
	sd	s2, 512(sp)                     # 8-byte Folded Spill
	sd	s3, 504(sp)                     # 8-byte Folded Spill
	sd	s4, 496(sp)                     # 8-byte Folded Spill
	sd	s5, 488(sp)                     # 8-byte Folded Spill
	sd	s6, 480(sp)                     # 8-byte Folded Spill
	sd	s7, 472(sp)                     # 8-byte Folded Spill
	sd	s8, 464(sp)                     # 8-byte Folded Spill
	sd	s9, 456(sp)                     # 8-byte Folded Spill
	sd	s10, 448(sp)                    # 8-byte Folded Spill
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
	mv	s9, a0
	addi	a0, s9, 63
	andi	s10, a0, -64
	addi	a0, sp, 288
	call	test_assemble
	ld	a7, 336(sp)
	ld	a6, 328(sp)
	ld	a5, 320(sp)
	ld	a4, 312(sp)
	ld	a3, 304(sp)
	ld	a2, 296(sp)
	ld	a1, 288(sp)
	ld	a0, 344(sp)
	ld	t1, 352(sp)
	ld	t2, 360(sp)
	ld	t3, 368(sp)
	ld	t4, 376(sp)
	ld	t5, 384(sp)
	ld	t6, 392(sp)
	ld	s0, 400(sp)
	ld	s1, 408(sp)
	ld	s2, 416(sp)
	ld	s3, 424(sp)
	ld	s4, 432(sp)
	ld	s5, 440(sp)
	mv	t0, sp
	li	s8, 1
	sd	s8, 224(sp)                     # 8-byte Folded Spill
	sd	s8, 208(t0)
	li	s7, 2
	sd	s7, 200(t0)
	sd	s7, 192(t0)
	li	s6, 4
	sd	s6, 184(t0)
	li	s6, 0
	sd	s6, 176(t0)
	sd	s10, 168(t0)
	sd	s9, 160(t0)
	sd	s8, 152(t0)
	sd	s7, 144(t0)
	sd	s7, 136(t0)
	li	s7, 3
	sd	s7, 128(t0)
	sd	s6, 120(t0)
	lui	s6, %hi(.L__constant_3x2xf64)
	addi	s6, s6, %lo(.L__constant_3x2xf64)
	sd	s6, 112(t0)
	lui	s6, 228023
	slli	s6, s6, 2
	addi	s6, s6, -273
	sd	s6, 104(t0)
	sd	s5, 96(t0)
	sd	s4, 88(t0)
	sd	s3, 80(t0)
	sd	s2, 72(t0)
	sd	s1, 64(t0)
	sd	s0, 56(t0)
	sd	t6, 48(t0)
	sd	t5, 40(t0)
	sd	t4, 32(t0)
	sd	t3, 24(t0)
	sd	t2, 16(t0)
	sd	t1, 8(t0)
	sd	a0, 0(t0)
	addi	a0, sp, 232
	call	matmul
	ld	a0, 224(sp)                     # 8-byte Folded Reload
	ld	ra, 536(sp)                     # 8-byte Folded Reload
	ld	s0, 528(sp)                     # 8-byte Folded Reload
	ld	s1, 520(sp)                     # 8-byte Folded Reload
	ld	s2, 512(sp)                     # 8-byte Folded Reload
	ld	s3, 504(sp)                     # 8-byte Folded Reload
	ld	s4, 496(sp)                     # 8-byte Folded Reload
	ld	s5, 488(sp)                     # 8-byte Folded Reload
	ld	s6, 480(sp)                     # 8-byte Folded Reload
	ld	s7, 472(sp)                     # 8-byte Folded Reload
	ld	s8, 464(sp)                     # 8-byte Folded Reload
	ld	s9, 456(sp)                     # 8-byte Folded Reload
	ld	s10, 448(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 544
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
	mv	a1, a0
	lui	a2, %hi(.L__constant_4xindex_0)
	lwu	a3, %lo(.L__constant_4xindex_0+24)(a2)
	lwu	a0, %lo(.L__constant_4xindex_0+28)(a2)
	slli	a0, a0, 32
	or	a0, a0, a3
	addi	a3, a2, %lo(.L__constant_4xindex_0)
	lui	a2, %hi(.L__constant_4xindex)
	addi	a7, a2, %lo(.L__constant_4xindex)
	lui	a2, %hi(.L__constant_4xf64)
	addi	a2, a2, %lo(.L__constant_4xf64)
	li	a5, 4
	sd	a5, 136(a1)
	sd	a5, 128(a1)
	li	a4, 3
	sd	a4, 120(a1)
	li	a6, 1
	sd	a6, 112(a1)
	sd	a5, 104(a1)
	li	a4, 0
	sd	a4, 96(a1)
	sd	a2, 88(a1)
	lui	a2, 228023
	slli	a2, a2, 2
	addi	a2, a2, -273
	sd	a2, 80(a1)
	sd	a6, 72(a1)
	sd	a5, 64(a1)
	sd	a4, 56(a1)
	sd	a7, 48(a1)
	sd	a2, 40(a1)
	sd	a6, 32(a1)
	sd	a5, 24(a1)
	sd	a4, 16(a1)
	sd	a3, 8(a1)
	sd	a2, 0(a1)
	sd	a0, 152(a1)
	sd	a0, 144(a1)
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
	.addrsig_sym malloc
	.addrsig_sym matmul
	.addrsig_sym test_assemble
	.addrsig_sym .L__constant_3x2xf64
	.addrsig_sym .L__constant_4xindex_0
	.addrsig_sym .L__constant_4xindex
	.addrsig_sym .L__constant_4xf64
