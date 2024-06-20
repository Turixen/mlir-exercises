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
	.globl	_insert_compressed_nonunique_nonordered_singleton_nonordered_3_4_f64_0_0 # -- Begin function _insert_compressed_nonunique_nonordered_singleton_nonordered_3_4_f64_0_0
	.p2align	1
	.type	_insert_compressed_nonunique_nonordered_singleton_nonordered_3_4_f64_0_0,@function
_insert_compressed_nonunique_nonordered_singleton_nonordered_3_4_f64_0_0: # @_insert_compressed_nonunique_nonordered_singleton_nonordered_3_4_f64_0_0
# %bb.0:
	addi	sp, sp, -208
	sd	ra, 200(sp)                     # 8-byte Folded Spill
	sd	s0, 192(sp)                     # 8-byte Folded Spill
	sd	s1, 184(sp)                     # 8-byte Folded Spill
	sd	s2, 176(sp)                     # 8-byte Folded Spill
	sd	s3, 168(sp)                     # 8-byte Folded Spill
	sd	s4, 160(sp)                     # 8-byte Folded Spill
	sd	s5, 152(sp)                     # 8-byte Folded Spill
	sd	s6, 144(sp)                     # 8-byte Folded Spill
	sd	s7, 136(sp)                     # 8-byte Folded Spill
	sd	s8, 128(sp)                     # 8-byte Folded Spill
	sd	s9, 120(sp)                     # 8-byte Folded Spill
	sd	s10, 112(sp)                    # 8-byte Folded Spill
	sd	s11, 104(sp)                    # 8-byte Folded Spill
	mv	s8, a7
	mv	s0, a0
	ld	s4, 296(sp)
	ld	s3, 312(sp)
	ld	s5, 216(sp)
	ld	a7, 208(sp)
	srli	a0, s4, 1
	addi	a0, a0, 1
	sw	a0, 8(a2)
	srli	a0, a0, 32
	addi	t3, s4, 1
	sw	a0, 12(a2)
	sd	a1, 88(sp)                      # 8-byte Folded Spill
	sd	a2, 80(sp)                      # 8-byte Folded Spill
	sd	a3, 72(sp)                      # 8-byte Folded Spill
	bgeu	s5, t3, .LBB1_3
# %bb.1:
	slli	s1, s5, 1
	li	a0, 1
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	blez	s5, .LBB1_4
# %bb.2:
	slli	a0, s5, 4
	mv	s10, a4
	mv	s11, a5
	mv	s6, a6
	mv	s7, a7
	mv	s9, t3
	call	malloc
	mv	s2, a0
	slli	a2, s5, 3
	slli	a1, s7, 3
	add	a1, a1, s8
	call	memcpy
	mv	a0, s6
	call	free
	mv	t3, s9
	mv	a5, s11
	mv	a4, s10
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	li	a7, 0
	mv	a6, s2
	mv	s8, s2
	j	.LBB1_5
.LBB1_3:
	ld	a0, 224(sp)
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	j	.LBB1_6
.LBB1_4:
	li	a7, 0
.LBB1_5:
	mv	s5, s1
.LBB1_6:
	ld	t0, 304(sp)
	ld	s10, 320(sp)
	ld	s6, 256(sp)
	slli	a0, s4, 3
	add	a0, a0, s8
	srli	s1, s3, 32
	sw	s1, 4(a0)
	addi	t2, s4, 2
	sw	s3, 0(a0)
	bgeu	s5, t2, .LBB1_9
# %bb.7:
	slli	t1, s5, 1
	li	a0, 1
	sd	a0, 96(sp)                      # 8-byte Folded Spill
	blez	s5, .LBB1_10
# %bb.8:
	slli	a0, s5, 4
	sd	a4, 64(sp)                      # 8-byte Folded Spill
	sd	a5, 56(sp)                      # 8-byte Folded Spill
	mv	s1, a6
	mv	s2, a7
	mv	s4, t0
	mv	s11, t1
	mv	s7, t2
	mv	s9, t3
	call	malloc
	mv	s3, a0
	slli	a2, s5, 3
	slli	a1, s2, 3
	add	a1, a1, s8
	call	memcpy
	mv	a0, s1
	call	free
	mv	t3, s9
	mv	t2, s7
	mv	t1, s11
	mv	t0, s4
	ld	a5, 56(sp)                      # 8-byte Folded Reload
	ld	a4, 64(sp)                      # 8-byte Folded Reload
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	li	a7, 0
	mv	a6, s3
	mv	s8, s3
	j	.LBB1_11
.LBB1_9:
	mv	t1, s5
	j	.LBB1_11
.LBB1_10:
	li	a7, 0
.LBB1_11:
	ld	s7, 288(sp)
	ld	s5, 280(sp)
	ld	t4, 272(sp)
	ld	s11, 328(sp)
	ld	s3, 248(sp)
	ld	s9, 240(sp)
	ld	s4, 232(sp)
	slli	a0, t3, 3
	add	a0, a0, s8
	srli	s1, s10, 32
	sw	s1, 4(a0)
	addi	s2, t0, 1
	sw	s10, 0(a0)
	bgeu	s6, s2, .LBB1_14
# %bb.12:
	slli	a0, s6, 1
	li	s10, 1
	blez	s6, .LBB1_15
# %bb.13:
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	slli	a0, s6, 4
	sd	a4, 64(sp)                      # 8-byte Folded Spill
	sd	a5, 56(sp)                      # 8-byte Folded Spill
	sd	a6, 48(sp)                      # 8-byte Folded Spill
	sd	a7, 40(sp)                      # 8-byte Folded Spill
	sd	t0, 32(sp)                      # 8-byte Folded Spill
	sd	t1, 24(sp)                      # 8-byte Folded Spill
	sd	t2, 16(sp)                      # 8-byte Folded Spill
	sd	t4, 8(sp)                       # 8-byte Folded Spill
	call	malloc
	mv	s1, a0
	slli	a2, s6, 3
	slli	a1, s3, 3
	add	a1, a1, s9
	call	memcpy
	mv	a0, s4
	call	free
	ld	t4, 8(sp)                       # 8-byte Folded Reload
	ld	t2, 16(sp)                      # 8-byte Folded Reload
	ld	t1, 24(sp)                      # 8-byte Folded Reload
	ld	t0, 32(sp)                      # 8-byte Folded Reload
	ld	a7, 40(sp)                      # 8-byte Folded Reload
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	ld	a5, 56(sp)                      # 8-byte Folded Reload
	ld	a4, 64(sp)                      # 8-byte Folded Reload
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	ld	a2, 80(sp)                      # 8-byte Folded Reload
	ld	a1, 88(sp)                      # 8-byte Folded Reload
	li	s3, 0
	mv	s4, s1
	mv	s9, s1
	ld	s6, 0(sp)                       # 8-byte Folded Reload
	j	.LBB1_16
.LBB1_14:
	ld	s10, 264(sp)
	j	.LBB1_16
.LBB1_15:
	li	s3, 0
	mv	s6, a0
.LBB1_16:
	slli	a0, t0, 3
	add	a0, a0, s9
	sd	s11, 0(a0)
	sd	s2, 152(s0)
	sd	t2, 144(s0)
	sd	s7, 136(s0)
	sd	s5, 128(s0)
	sd	t4, 120(s0)
	sd	s10, 112(s0)
	sd	s6, 104(s0)
	sd	s3, 96(s0)
	sd	s9, 88(s0)
	sd	s4, 80(s0)
	ld	a0, 96(sp)                      # 8-byte Folded Reload
	sd	a0, 72(s0)
	sd	t1, 64(s0)
	sd	a7, 56(s0)
	sd	s8, 48(s0)
	sd	a6, 40(s0)
	sd	a5, 32(s0)
	sd	a4, 24(s0)
	sd	a3, 16(s0)
	sd	a2, 8(s0)
	sd	a1, 0(s0)
	ld	ra, 200(sp)                     # 8-byte Folded Reload
	ld	s0, 192(sp)                     # 8-byte Folded Reload
	ld	s1, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s3, 168(sp)                     # 8-byte Folded Reload
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	ld	s5, 152(sp)                     # 8-byte Folded Reload
	ld	s6, 144(sp)                     # 8-byte Folded Reload
	ld	s7, 136(sp)                     # 8-byte Folded Reload
	ld	s8, 128(sp)                     # 8-byte Folded Reload
	ld	s9, 120(sp)                     # 8-byte Folded Reload
	ld	s10, 112(sp)                    # 8-byte Folded Reload
	ld	s11, 104(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 208
	ret
.Lfunc_end1:
	.size	_insert_compressed_nonunique_nonordered_singleton_nonordered_3_4_f64_0_0, .Lfunc_end1-_insert_compressed_nonunique_nonordered_singleton_nonordered_3_4_f64_0_0
                                        # -- End function
	.globl	_insert_dense_compressed_3_4_f64_0_0 # -- Begin function _insert_dense_compressed_3_4_f64_0_0
	.p2align	1
	.type	_insert_dense_compressed_3_4_f64_0_0,@function
_insert_dense_compressed_3_4_f64_0_0:   # @_insert_dense_compressed_3_4_f64_0_0
# %bb.0:
	addi	sp, sp, -208
	sd	ra, 200(sp)                     # 8-byte Folded Spill
	sd	s0, 192(sp)                     # 8-byte Folded Spill
	sd	s1, 184(sp)                     # 8-byte Folded Spill
	sd	s2, 176(sp)                     # 8-byte Folded Spill
	sd	s3, 168(sp)                     # 8-byte Folded Spill
	sd	s4, 160(sp)                     # 8-byte Folded Spill
	sd	s5, 152(sp)                     # 8-byte Folded Spill
	sd	s6, 144(sp)                     # 8-byte Folded Spill
	sd	s7, 136(sp)                     # 8-byte Folded Spill
	sd	s8, 128(sp)                     # 8-byte Folded Spill
	sd	s9, 120(sp)                     # 8-byte Folded Spill
	sd	s10, 112(sp)                    # 8-byte Folded Spill
	sd	s11, 104(sp)                    # 8-byte Folded Spill
	ld	t3, 304(sp)
	ld	s1, 312(sp)
	ld	s6, 296(sp)
	ld	s5, 320(sp)
	ld	s2, 256(sp)
	slli	s1, s1, 3
	add	s1, s1, a2
	lwu	t1, 4(s1)
	ld	t5, 216(sp)
	ld	t4, 208(sp)
	lwu	t0, 0(s1)
	slli	t1, t1, 32
	lwu	s0, 12(s1)
	lwu	t2, 8(s1)
	or	t0, t1, t0
	ld	t1, 224(sp)
	slli	s0, s0, 32
	or	s0, s0, t2
	mv	s4, a0
	bgeu	t0, s0, .LBB2_2
# %bb.1:
	slli	s0, s0, 3
	add	s0, s0, a7
	lwu	a0, -4(s0)
	lwu	s0, -8(s0)
	slli	a0, a0, 32
	or	a0, a0, s0
	bne	a0, s5, .LBB2_3
	j	.LBB2_8
.LBB2_2:                                # %.critedge
	sw	s6, 0(s1)
	srli	a0, s6, 32
	sw	a0, 4(s1)
.LBB2_3:
	addi	s11, s6, 1
	sw	s11, 8(s1)
	srli	a0, s11, 32
	sw	a0, 12(s1)
	bgeu	t5, s11, .LBB2_7
# %bb.4:
	slli	a0, t5, 1
	blez	t5, .LBB2_6
# %bb.5:
	sd	a0, 64(sp)                      # 8-byte Folded Spill
	slli	a0, t5, 4
	sd	a2, 96(sp)                      # 8-byte Folded Spill
	sd	t3, 88(sp)                      # 8-byte Folded Spill
	sd	a1, 80(sp)                      # 8-byte Folded Spill
	sd	a3, 72(sp)                      # 8-byte Folded Spill
	mv	s0, a4
	mv	s3, a5
	mv	s7, a6
	mv	s8, a7
	mv	s10, t4
	mv	s1, t5
	call	malloc
	mv	s9, a0
	slli	a2, s1, 3
	slli	a1, s10, 3
	add	a1, a1, s8
	call	memcpy
	mv	a0, s7
	call	free
	li	t1, 1
	mv	a5, s3
	mv	a4, s0
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	ld	t3, 88(sp)                      # 8-byte Folded Reload
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	li	t4, 0
	mv	a6, s9
	mv	a7, s9
	ld	t5, 64(sp)                      # 8-byte Folded Reload
	j	.LBB2_7
.LBB2_6:
	li	t4, 0
	li	t1, 1
	mv	t5, a0
.LBB2_7:
	slli	s6, s6, 3
	add	s6, s6, a7
	srli	a0, s5, 32
	sw	a0, 4(s6)
	sw	s5, 0(s6)
	mv	s6, s11
.LBB2_8:
	ld	s0, 288(sp)
	ld	s1, 280(sp)
	ld	t0, 272(sp)
	ld	s3, 328(sp)
	ld	s7, 248(sp)
	ld	s9, 240(sp)
	ld	s5, 232(sp)
	addi	s10, t3, 1
	bgeu	s2, s10, .LBB2_11
# %bb.9:
	slli	a0, s2, 1
	li	s8, 1
	blez	s2, .LBB2_12
# %bb.10:
	sd	a0, 0(sp)                       # 8-byte Folded Spill
	slli	a0, s2, 4
	sd	a2, 96(sp)                      # 8-byte Folded Spill
	sd	t3, 88(sp)                      # 8-byte Folded Spill
	sd	a1, 80(sp)                      # 8-byte Folded Spill
	sd	a3, 72(sp)                      # 8-byte Folded Spill
	sd	a4, 64(sp)                      # 8-byte Folded Spill
	sd	a5, 56(sp)                      # 8-byte Folded Spill
	sd	a6, 48(sp)                      # 8-byte Folded Spill
	sd	a7, 40(sp)                      # 8-byte Folded Spill
	sd	t4, 32(sp)                      # 8-byte Folded Spill
	sd	t5, 24(sp)                      # 8-byte Folded Spill
	sd	t1, 16(sp)                      # 8-byte Folded Spill
	sd	s1, 8(sp)                       # 8-byte Folded Spill
	mv	s1, t0
	call	malloc
	mv	s11, a0
	slli	a2, s2, 3
	slli	a1, s7, 3
	add	a1, a1, s9
	call	memcpy
	mv	a0, s5
	call	free
	mv	t0, s1
	ld	s1, 8(sp)                       # 8-byte Folded Reload
	ld	t1, 16(sp)                      # 8-byte Folded Reload
	ld	t5, 24(sp)                      # 8-byte Folded Reload
	ld	t4, 32(sp)                      # 8-byte Folded Reload
	ld	a7, 40(sp)                      # 8-byte Folded Reload
	ld	a6, 48(sp)                      # 8-byte Folded Reload
	ld	a5, 56(sp)                      # 8-byte Folded Reload
	ld	a4, 64(sp)                      # 8-byte Folded Reload
	ld	a3, 72(sp)                      # 8-byte Folded Reload
	ld	a1, 80(sp)                      # 8-byte Folded Reload
	ld	t3, 88(sp)                      # 8-byte Folded Reload
	ld	a2, 96(sp)                      # 8-byte Folded Reload
	li	s7, 0
	mv	s5, s11
	mv	s9, s11
	ld	s2, 0(sp)                       # 8-byte Folded Reload
	j	.LBB2_13
.LBB2_11:
	ld	s8, 264(sp)
	j	.LBB2_13
.LBB2_12:
	li	s7, 0
	mv	s2, a0
.LBB2_13:
	slli	a0, t3, 3
	add	a0, a0, s9
	sd	s3, 0(a0)
	sd	s10, 152(s4)
	sd	s6, 144(s4)
	sd	s0, 136(s4)
	sd	s1, 128(s4)
	sd	t0, 120(s4)
	sd	s8, 112(s4)
	sd	s2, 104(s4)
	sd	s7, 96(s4)
	sd	s9, 88(s4)
	sd	s5, 80(s4)
	sd	t1, 72(s4)
	sd	t5, 64(s4)
	sd	t4, 56(s4)
	sd	a7, 48(s4)
	sd	a6, 40(s4)
	sd	a5, 32(s4)
	sd	a4, 24(s4)
	sd	a3, 16(s4)
	sd	a2, 8(s4)
	sd	a1, 0(s4)
	ld	ra, 200(sp)                     # 8-byte Folded Reload
	ld	s0, 192(sp)                     # 8-byte Folded Reload
	ld	s1, 184(sp)                     # 8-byte Folded Reload
	ld	s2, 176(sp)                     # 8-byte Folded Reload
	ld	s3, 168(sp)                     # 8-byte Folded Reload
	ld	s4, 160(sp)                     # 8-byte Folded Reload
	ld	s5, 152(sp)                     # 8-byte Folded Reload
	ld	s6, 144(sp)                     # 8-byte Folded Reload
	ld	s7, 136(sp)                     # 8-byte Folded Reload
	ld	s8, 128(sp)                     # 8-byte Folded Reload
	ld	s9, 120(sp)                     # 8-byte Folded Reload
	ld	s10, 112(sp)                    # 8-byte Folded Reload
	ld	s11, 104(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 208
	ret
.Lfunc_end2:
	.size	_insert_dense_compressed_3_4_f64_0_0, .Lfunc_end2-_insert_dense_compressed_3_4_f64_0_0
                                        # -- End function
	.globl	_sparse_binary_search_0_1_index_coo_0_f64 # -- Begin function _sparse_binary_search_0_1_index_coo_0_f64
	.p2align	1
	.type	_sparse_binary_search_0_1_index_coo_0_f64,@function
_sparse_binary_search_0_1_index_coo_0_f64: # @_sparse_binary_search_0_1_index_coo_0_f64
# %bb.0:
	bgeu	a0, a1, .LBB3_7
# %bb.1:                                # %.lr.ph
	slli	a2, a1, 4
	add	a6, a3, a2
	lwu	a2, 4(a6)
	lwu	a4, 0(a6)
	slli	a2, a2, 32
	or	a7, a2, a4
	addi	a6, a6, 8
	j	.LBB3_3
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	addi	a0, a5, 1
	bgeu	a0, a1, .LBB3_7
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	add	a5, a1, a0
	andi	a4, a5, -2
	slli	a4, a4, 3
	add	a4, a4, a3
	lwu	a2, 4(a4)
	lwu	a4, 0(a4)
	slli	a2, a2, 32
	or	a4, a4, a2
	bne	a7, a4, .LBB3_5
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	slli	a2, a5, 3
	lwu	t0, 0(a6)
	lwu	t1, 4(a6)
	ori	a2, a2, 8
	add	a2, a2, a3
	lwu	a4, 4(a2)
	lwu	t2, 0(a2)
	slli	t1, t1, 32
	or	a2, t1, t0
	slli	a4, a4, 32
	or	a4, a4, t2
	sltu	a4, a2, a4
	srli	a5, a5, 1
	beqz	a4, .LBB3_2
	j	.LBB3_6
.LBB3_5:                                #   in Loop: Header=BB3_3 Depth=1
	sltu	a4, a7, a4
	srli	a5, a5, 1
	beqz	a4, .LBB3_2
.LBB3_6:                                #   in Loop: Header=BB3_3 Depth=1
	mv	a1, a5
	bltu	a0, a5, .LBB3_3
.LBB3_7:                                # %._crit_edge
	ret
.Lfunc_end3:
	.size	_sparse_binary_search_0_1_index_coo_0_f64, .Lfunc_end3-_sparse_binary_search_0_1_index_coo_0_f64
                                        # -- End function
	.globl	_sparse_sort_stable_0_1_index_coo_0_f64 # -- Begin function _sparse_sort_stable_0_1_index_coo_0_f64
	.p2align	1
	.type	_sparse_sort_stable_0_1_index_coo_0_f64,@function
_sparse_sort_stable_0_1_index_coo_0_f64: # @_sparse_sort_stable_0_1_index_coo_0_f64
# %bb.0:
	addi	t3, a0, 1
	bge	t3, a1, .LBB4_15
# %bb.1:                                # %.lr.ph3.preheader
	addi	sp, sp, -48
	sd	s0, 40(sp)                      # 8-byte Folded Spill
	sd	s1, 32(sp)                      # 8-byte Folded Spill
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	sd	s3, 16(sp)                      # 8-byte Folded Spill
	sd	s4, 8(sp)                       # 8-byte Folded Spill
	ld	a6, 48(sp)
	slli	a2, a0, 3
	add	a2, a2, a6
	addi	a7, a2, 8
	slli	a2, a0, 4
	add	a2, a2, a3
	addi	t2, a2, 16
	j	.LBB4_3
.LBB4_2:                                # %._crit_edge
                                        #   in Loop: Header=BB4_3 Depth=1
	slli	t5, t5, 32
	or	s1, t5, t4
	slli	t6, t6, 32
	or	a4, t6, t1
	slli	a5, s2, 4
	add	a5, a5, a3
	srli	a2, s1, 32
	sw	a2, 4(a5)
	sw	s1, 0(a5)
	srli	a2, a4, 32
	sw	a2, 12(a5)
	sw	a4, 8(a5)
	slli	s2, s2, 3
	add	s2, s2, a6
	sd	t0, 0(s2)
	addi	t3, t3, 1
	addi	a7, a7, 8
	addi	t2, t2, 16
	beq	t3, a1, .LBB4_14
.LBB4_3:                                # %.lr.ph3
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
                                        #     Child Loop BB4_13 Depth 2
	slli	a2, t3, 1
	slli	t0, a2, 3
	bgeu	a0, t3, .LBB4_10
# %bb.4:                                # %.lr.ph.i
                                        #   in Loop: Header=BB4_3 Depth=1
	add	a4, a3, t0
	lwu	a5, 4(a4)
	lwu	a4, 0(a4)
	slli	a5, a5, 32
	or	t5, a5, a4
	ori	t1, a2, 1
	slli	t4, t1, 3
	add	t4, t4, a3
	mv	a5, t3
	mv	s2, a0
	j	.LBB4_6
.LBB4_5:                                #   in Loop: Header=BB4_6 Depth=2
	addi	s2, a2, 1
	bgeu	s2, a5, .LBB4_11
.LBB4_6:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a4, s2, a5
	andi	a2, a4, -2
	slli	a2, a2, 3
	add	a2, a2, a3
	lwu	s0, 4(a2)
	lwu	a2, 0(a2)
	slli	s0, s0, 32
	or	s0, s0, a2
	bne	t5, s0, .LBB4_8
# %bb.7:                                #   in Loop: Header=BB4_6 Depth=2
	slli	a2, a4, 3
	lwu	t6, 0(t4)
	lwu	s1, 4(t4)
	ori	a2, a2, 8
	add	a2, a2, a3
	lwu	s0, 4(a2)
	lwu	a2, 0(a2)
	slli	s1, s1, 32
	or	s1, s1, t6
	slli	s0, s0, 32
	or	a2, a2, s0
	sltu	s0, s1, a2
	srli	a2, a4, 1
	beqz	s0, .LBB4_5
	j	.LBB4_9
.LBB4_8:                                #   in Loop: Header=BB4_6 Depth=2
	sltu	s0, t5, s0
	srli	a2, a4, 1
	beqz	s0, .LBB4_5
.LBB4_9:                                #   in Loop: Header=BB4_6 Depth=2
	mv	a5, a2
	bltu	s2, a2, .LBB4_6
	j	.LBB4_11
.LBB4_10:                               # %.lr.ph3._sparse_binary_search_0_1_index_coo_0_f64.exit_crit_edge
                                        #   in Loop: Header=BB4_3 Depth=1
	ori	t1, a2, 1
	mv	s2, a0
.LBB4_11:                               # %_sparse_binary_search_0_1_index_coo_0_f64.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	add	t0, t0, a3
	lwu	t4, 0(t0)
	lwu	t5, 4(t0)
	slli	t1, t1, 3
	add	a2, a3, t1
	lwu	t1, 0(a2)
	lwu	t6, 4(a2)
	slli	a2, t3, 3
	add	a2, a2, a6
	ld	t0, 0(a2)
	sub	a4, t3, s2
	blez	a4, .LBB4_2
# %bb.12:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	mv	s0, t2
	mv	a2, a7
.LBB4_13:                               # %.lr.ph
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lwu	s3, -12(s0)
	lwu	s4, -16(s0)
	lwu	a5, -4(s0)
	lwu	s1, -8(s0)
	sw	s3, 4(s0)
	sw	s4, 0(s0)
	sw	a5, 12(s0)
	sw	s1, 8(s0)
	ld	a5, -8(a2)
	addi	s0, s0, -16
	addi	s1, a2, -8
	addi	a4, a4, -1
	sd	a5, 0(a2)
	mv	a2, s1
	bnez	a4, .LBB4_13
	j	.LBB4_2
.LBB4_14:
	ld	s0, 40(sp)                      # 8-byte Folded Reload
	ld	s1, 32(sp)                      # 8-byte Folded Reload
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	ld	s3, 16(sp)                      # 8-byte Folded Reload
	ld	s4, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
.LBB4_15:                               # %._crit_edge4
	ret
.Lfunc_end4:
	.size	_sparse_sort_stable_0_1_index_coo_0_f64, .Lfunc_end4-_sparse_sort_stable_0_1_index_coo_0_f64
                                        # -- End function
	.globl	_sparse_shift_down_0_1_index_coo_0_f64 # -- Begin function _sparse_shift_down_0_1_index_coo_0_f64
	.p2align	1
	.type	_sparse_shift_down_0_1_index_coo_0_f64,@function
_sparse_shift_down_0_1_index_coo_0_f64: # @_sparse_shift_down_0_1_index_coo_0_f64
# %bb.0:
	addi	sp, sp, -32
	sd	s0, 24(sp)                      # 8-byte Folded Spill
	sd	s1, 16(sp)                      # 8-byte Folded Spill
	sd	s2, 8(sp)                       # 8-byte Folded Spill
	sd	s3, 0(sp)                       # 8-byte Folded Spill
	ld	a7, 64(sp)
	li	a2, 2
	bltu	a7, a2, .LBB5_2
# %bb.1:
	sub	a2, a1, a0
	addi	a4, a7, -2
	srli	t2, a4, 1
	bgeu	t2, a2, .LBB5_3
.LBB5_2:                                # %.loopexit
	ld	s0, 24(sp)                      # 8-byte Folded Reload
	ld	s1, 16(sp)                      # 8-byte Folded Reload
	ld	s2, 8(sp)                       # 8-byte Folded Reload
	ld	s3, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.LBB5_3:
	slli	a2, a2, 1
	addi	t3, a2, 1
	addi	a2, a2, 2
	add	t1, t3, a0
	bgeu	a2, a7, .LBB5_9
# %bb.4:
	add	a6, a2, a0
	slli	a4, t1, 4
	add	a4, a4, a3
	lwu	t0, 0(a4)
	lwu	t4, 4(a4)
	slli	a5, a6, 4
	add	a5, a5, a3
	lwu	a4, 4(a5)
	lwu	t5, 0(a5)
	slli	t4, t4, 32
	or	a5, t4, t0
	slli	a4, a4, 32
	or	a4, a4, t5
	bne	a5, a4, .LBB5_6
# %bb.5:
	slli	a4, t1, 1
	slli	a5, a6, 1
	slli	a4, a4, 3
	slli	a5, a5, 3
	add	a4, a4, a3
	lwu	t0, 8(a4)
	lwu	t4, 12(a4)
	add	a5, a5, a3
	lwu	t5, 12(a5)
	lwu	a5, 8(a5)
	slli	t4, t4, 32
	or	a4, t4, t0
	slli	t5, t5, 32
	or	a5, t5, a5
	sltu	a5, a4, a5
	beqz	a5, .LBB5_7
	j	.LBB5_8
.LBB5_6:
	sltu	a5, a5, a4
	bnez	a5, .LBB5_8
.LBB5_7:
	mv	a2, t3
	mv	a6, t1
.LBB5_8:
	mv	t3, a2
	mv	t1, a6
.LBB5_9:                                # %.preheader.preheader
	ld	a6, 32(sp)
	j	.LBB5_11
.LBB5_10:                               #   in Loop: Header=BB5_11 Depth=1
	mv	t3, a2
	mv	t1, s1
	mv	a1, t0
.LBB5_11:                               # %.preheader.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_19 Depth 2
	mv	t0, t1
	slli	t5, a1, 1
	slli	t4, a1, 4
	add	t4, t4, a3
	lwu	t1, 0(t4)
	lwu	s0, 4(t4)
	slli	a2, t0, 4
	add	a2, a2, a3
	lwu	a4, 4(a2)
	lwu	a5, 0(a2)
	slli	s0, s0, 32
	or	s0, s0, t1
	slli	a4, a4, 32
	or	a4, a4, a5
	slli	t1, t0, 1
	bne	s0, a4, .LBB5_13
# %bb.12:                               #   in Loop: Header=BB5_11 Depth=1
	ori	t6, t5, 1
	ori	t5, t1, 1
	slli	a5, t6, 3
	add	a5, a5, a3
	lwu	s2, 0(a5)
	lwu	s3, 4(a5)
	slli	s1, t5, 3
	add	s1, s1, a3
	lwu	a5, 4(s1)
	lwu	s1, 0(s1)
	slli	s3, s3, 32
	or	s2, s3, s2
	slli	a5, a5, 32
	or	a5, a5, s1
	bltu	s2, a5, .LBB5_15
	j	.LBB5_2
.LBB5_13:                               #   in Loop: Header=BB5_11 Depth=1
	bgeu	s0, a4, .LBB5_2
# %bb.14:                               # %._crit_edge.peel
                                        #   in Loop: Header=BB5_11 Depth=1
	ori	t6, t5, 1
	ori	t5, t1, 1
.LBB5_15:                               #   in Loop: Header=BB5_11 Depth=1
	sw	a4, 0(t4)
	srli	a4, a4, 32
	sw	a4, 4(t4)
	srli	a4, s0, 32
	sw	a4, 4(a2)
	sw	s0, 0(a2)
	slli	t6, t6, 3
	add	t6, t6, a3
	slli	t5, t5, 3
	add	t5, t5, a3
	lwu	a4, 0(t5)
	lwu	a5, 4(t5)
	lwu	s1, 4(t6)
	lwu	s0, 0(t6)
	sw	a4, 0(t6)
	sw	a5, 4(t6)
	sw	s1, 4(t5)
	sw	s0, 0(t5)
	slli	a1, a1, 3
	add	a1, a1, a6
	slli	a4, t0, 3
	add	a4, a4, a6
	ld	a5, 0(a4)
	ld	s1, 0(a1)
	sd	a5, 0(a1)
	sd	s1, 0(a4)
	bgeu	t2, t3, .LBB5_21
# %bb.16:                               # %.preheader.outer.peel.newph
                                        #   in Loop: Header=BB5_11 Depth=1
	addi	t1, t1, 1
	slli	a1, t1, 3
	add	a1, a1, a3
	j	.LBB5_19
.LBB5_17:                               #   in Loop: Header=BB5_19 Depth=2
	bgeu	a4, a5, .LBB5_2
.LBB5_18:                               # %._crit_edge
                                        #   in Loop: Header=BB5_19 Depth=2
	sw	a5, 0(a2)
	srli	a5, a5, 32
	sw	a5, 4(a2)
	srli	a5, a4, 32
	sw	a5, 4(a2)
	sw	a4, 0(a2)
	lwu	a4, 0(a1)
	lwu	a5, 4(a1)
	lwu	s1, 4(a1)
	lwu	s0, 0(a1)
	sw	a4, 0(a1)
	sw	a5, 4(a1)
	sw	s1, 4(a1)
	sw	s0, 0(a1)
	bgeu	t2, t3, .LBB5_21
.LBB5_19:                               # %.preheader
                                        #   Parent Loop BB5_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lwu	a4, 4(a2)
	lwu	a5, 0(a2)
	lwu	s1, 4(a2)
	lwu	s0, 0(a2)
	slli	a4, a4, 32
	or	a4, a4, a5
	slli	a5, s1, 32
	or	a5, a5, s0
	bne	a4, a5, .LBB5_17
# %bb.20:                               #   in Loop: Header=BB5_19 Depth=2
	lwu	t4, 4(a1)
	lwu	t1, 0(a1)
	lwu	t5, 4(a1)
	lwu	s1, 0(a1)
	slli	t4, t4, 32
	or	s0, t4, t1
	slli	t5, t5, 32
	or	s1, t5, s1
	bltu	s0, s1, .LBB5_18
	j	.LBB5_2
.LBB5_21:                               # %.loopexit24
                                        #   in Loop: Header=BB5_11 Depth=1
	slli	a2, t3, 1
	addi	t3, a2, 1
	addi	a2, a2, 2
	add	t1, t3, a0
	mv	a1, t0
	bgeu	a2, a7, .LBB5_11
# %bb.22:                               #   in Loop: Header=BB5_11 Depth=1
	add	s1, a2, a0
	slli	a4, t1, 4
	add	a4, a4, a3
	lwu	a5, 0(a4)
	lwu	a4, 4(a4)
	slli	a1, s1, 4
	add	a1, a1, a3
	lwu	s0, 4(a1)
	lwu	a1, 0(a1)
	slli	a4, a4, 32
	or	a4, a4, a5
	slli	a5, s0, 32
	or	a5, a5, a1
	bne	a4, a5, .LBB5_24
# %bb.23:                               #   in Loop: Header=BB5_11 Depth=1
	slli	a1, t1, 1
	slli	a4, s1, 1
	slli	a1, a1, 3
	slli	a4, a4, 3
	add	a1, a1, a3
	lwu	a5, 8(a1)
	lwu	a1, 12(a1)
	add	a4, a4, a3
	lwu	s0, 12(a4)
	lwu	a4, 8(a4)
	slli	a1, a1, 32
	or	a1, a1, a5
	slli	s0, s0, 32
	or	a4, a4, s0
	sltu	a4, a1, a4
	bnez	a4, .LBB5_10
	j	.LBB5_25
.LBB5_24:                               #   in Loop: Header=BB5_11 Depth=1
	sltu	a4, a4, a5
	bnez	a4, .LBB5_10
.LBB5_25:                               #   in Loop: Header=BB5_11 Depth=1
	mv	a2, t3
	mv	s1, t1
	j	.LBB5_10
.Lfunc_end5:
	.size	_sparse_shift_down_0_1_index_coo_0_f64, .Lfunc_end5-_sparse_shift_down_0_1_index_coo_0_f64
                                        # -- End function
	.globl	_sparse_heap_sort_0_1_index_coo_0_f64 # -- Begin function _sparse_heap_sort_0_1_index_coo_0_f64
	.p2align	1
	.type	_sparse_heap_sort_0_1_index_coo_0_f64,@function
_sparse_heap_sort_0_1_index_coo_0_f64:  # @_sparse_heap_sort_0_1_index_coo_0_f64
# %bb.0:
	addi	sp, sp, -128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	sd	s1, 104(sp)                     # 8-byte Folded Spill
	sd	s2, 96(sp)                      # 8-byte Folded Spill
	sd	s3, 88(sp)                      # 8-byte Folded Spill
	sd	s4, 80(sp)                      # 8-byte Folded Spill
	sd	s5, 72(sp)                      # 8-byte Folded Spill
	sd	s6, 64(sp)                      # 8-byte Folded Spill
	sd	s7, 56(sp)                      # 8-byte Folded Spill
	sd	s8, 48(sp)                      # 8-byte Folded Spill
	sd	s9, 40(sp)                      # 8-byte Folded Spill
	mv	s2, a1
	mv	s5, a0
	ld	s4, 128(sp)
	sub	s9, a1, a0
	addi	a0, s9, -2
	srli	a0, a0, 1
	li	a1, -1
	srli	a1, a1, 1
	mv	s3, a3
	beq	a0, a1, .LBB6_3
# %bb.1:                                # %.lr.ph
	add	s0, a0, s5
	not	s1, a0
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	sd	s9, 32(sp)
	sd	s4, 0(sp)
	mv	a0, s5
	mv	a1, s0
	mv	a3, s3
	call	_sparse_shift_down_0_1_index_coo_0_f64
	addi	s1, s1, 1
	addi	s0, s0, -1
	bnez	s1, .LBB6_2
.LBB6_3:                                # %._crit_edge
	addi	s9, s9, -1
	blez	s9, .LBB6_6
# %bb.4:                                # %.lr.ph3
	slli	s6, s5, 4
	add	s6, s6, s3
	addi	s8, s6, 8
	slli	s7, s5, 3
	add	s7, s7, s4
	slli	a0, s2, 4
	add	a0, a0, s3
	addi	s1, a0, -8
	slli	s2, s2, 3
	add	s0, s2, s4
	addi	s0, s0, -8
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	lwu	a0, -8(s1)
	lwu	a1, -4(s1)
	lwu	a2, 4(s6)
	lwu	a3, 0(s6)
	sw	a0, 0(s6)
	sw	a1, 4(s6)
	sw	a2, -4(s1)
	sw	a3, -8(s1)
	lwu	a0, 0(s1)
	lwu	a1, 4(s1)
	lwu	a2, 4(s8)
	lwu	a3, 0(s8)
	sw	a0, 0(s8)
	sw	a1, 4(s8)
	sw	a2, 4(s1)
	sw	a3, 0(s1)
	ld	a0, 0(s0)
	ld	a1, 0(s7)
	sd	a0, 0(s7)
	sd	a1, 0(s0)
	sd	s9, 32(sp)
	sd	s4, 0(sp)
	mv	a0, s5
	mv	a1, s5
	mv	a3, s3
	call	_sparse_shift_down_0_1_index_coo_0_f64
	addi	s9, s9, -1
	addi	s1, s1, -16
	addi	s0, s0, -8
	bnez	s9, .LBB6_5
.LBB6_6:                                # %._crit_edge4
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	ld	s1, 104(sp)                     # 8-byte Folded Reload
	ld	s2, 96(sp)                      # 8-byte Folded Reload
	ld	s3, 88(sp)                      # 8-byte Folded Reload
	ld	s4, 80(sp)                      # 8-byte Folded Reload
	ld	s5, 72(sp)                      # 8-byte Folded Reload
	ld	s6, 64(sp)                      # 8-byte Folded Reload
	ld	s7, 56(sp)                      # 8-byte Folded Reload
	ld	s8, 48(sp)                      # 8-byte Folded Reload
	ld	s9, 40(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end6:
	.size	_sparse_heap_sort_0_1_index_coo_0_f64, .Lfunc_end6-_sparse_heap_sort_0_1_index_coo_0_f64
                                        # -- End function
	.globl	_sparse_partition_0_1_index_coo_0_f64 # -- Begin function _sparse_partition_0_1_index_coo_0_f64
	.p2align	1
	.type	_sparse_partition_0_1_index_coo_0_f64,@function
_sparse_partition_0_1_index_coo_0_f64:  # @_sparse_partition_0_1_index_coo_0_f64
# %bb.0:
	addi	sp, sp, -48
	sd	s0, 40(sp)                      # 8-byte Folded Spill
	sd	s1, 32(sp)                      # 8-byte Folded Spill
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	sd	s3, 16(sp)                      # 8-byte Folded Spill
	sd	s4, 8(sp)                       # 8-byte Folded Spill
	sd	s5, 0(sp)                       # 8-byte Folded Spill
	ld	t2, 48(sp)
	add	a6, a1, a0
	srli	t3, a6, 1
	addi	t4, a1, -1
	sub	a5, a1, a0
	li	s1, 999
	andi	a4, a6, -2
	slli	t0, a0, 1
	slli	a2, a0, 4
	bltu	s1, a5, .LBB7_3
# %bb.1:
	slli	a1, a4, 3
	add	s2, a3, a1
	lwu	a4, 0(s2)
	lwu	a5, 4(s2)
	add	a7, a3, a2
	lwu	s1, 4(a7)
	lwu	s0, 0(a7)
	slli	a2, a5, 32
	or	a2, a2, a4
	slli	a4, s1, 32
	or	a4, a4, s0
	bne	a2, a4, .LBB7_5
# %bb.2:
	ori	t6, a6, 1
	ori	t5, t0, 1
	slli	s1, t6, 3
	add	s1, s1, a3
	lwu	t1, 0(s1)
	lwu	s1, 4(s1)
	slli	a5, t5, 3
	add	a5, a5, a3
	lwu	s0, 4(a5)
	lwu	a5, 0(a5)
	slli	s1, s1, 32
	or	s1, s1, t1
	slli	s0, s0, 32
	or	a5, a5, s0
	bltu	s1, a5, .LBB7_7
	j	.LBB7_8
.LBB7_3:
	add	t1, t3, a1
	slli	a4, a4, 3
	add	a7, a3, a4
	lwu	a4, 0(a7)
	lwu	a5, 4(a7)
	add	a1, a3, a2
	lwu	a2, 4(a1)
	lwu	s1, 0(a1)
	slli	a5, a5, 32
	or	a4, a4, a5
	slli	a2, a2, 32
	or	a5, a2, s1
	srli	t5, t1, 1
	bne	a4, a5, .LBB7_10
# %bb.4:
	ori	s2, a6, 1
	ori	t6, t0, 1
	slli	s0, s2, 3
	add	s0, s0, a3
	lwu	t0, 0(s0)
	lwu	s0, 4(s0)
	slli	s1, t6, 3
	add	s1, s1, a3
	lwu	a2, 4(s1)
	lwu	s1, 0(s1)
	slli	s0, s0, 32
	or	s0, s0, t0
	slli	a2, a2, 32
	or	a2, a2, s1
	bltu	s0, a2, .LBB7_12
	j	.LBB7_13
.LBB7_5:
	bgeu	a2, a4, .LBB7_8
# %bb.6:                                # %._crit_edge85
	ori	t6, a6, 1
	ori	t5, t0, 1
.LBB7_7:
	sw	a4, 0(s2)
	srli	a4, a4, 32
	sw	a4, 4(s2)
	srli	a4, a2, 32
	sw	a4, 4(a7)
	sw	a2, 0(a7)
	slli	t6, t6, 3
	add	t6, t6, a3
	slli	t5, t5, 3
	add	t5, t5, a3
	lwu	a2, 0(t5)
	lwu	a4, 4(t5)
	lwu	a5, 4(t6)
	lwu	s1, 0(t6)
	sw	a2, 0(t6)
	sw	a4, 4(t6)
	sw	a5, 4(t5)
	sw	s1, 0(t5)
	slli	a2, t3, 3
	add	a2, a2, t2
	slli	a4, a0, 3
	add	a4, a4, t2
	ld	a5, 0(a4)
	ld	s1, 0(a2)
	sd	a5, 0(a2)
	sd	s1, 0(a4)
	lwu	a2, 4(s2)
	lwu	a4, 0(s2)
	slli	a2, a2, 32
	or	a2, a2, a4
.LBB7_8:
	slli	a4, t4, 4
	add	a4, a4, a3
	lwu	a5, 4(a4)
	lwu	s1, 0(a4)
	slli	a5, a5, 32
	or	a5, a5, s1
	slli	s1, t4, 1
	bne	a5, a2, .LBB7_16
# %bb.9:
	ori	t5, s1, 1
	ori	a6, a6, 1
	slli	s0, t5, 3
	add	s0, s0, a3
	lwu	t1, 0(s0)
	lwu	t6, 4(s0)
	slli	s1, a6, 3
	add	s1, s1, a3
	lwu	s0, 4(s1)
	lwu	s1, 0(s1)
	slli	t6, t6, 32
	or	a1, t6, t1
	slli	s0, s0, 32
	or	s0, s0, s1
	bltu	a1, s0, .LBB7_18
	j	.LBB7_35
.LBB7_10:
	bgeu	a4, a5, .LBB7_13
# %bb.11:                               # %._crit_edge82
	ori	s2, a6, 1
	ori	t6, t0, 1
.LBB7_12:
	sw	a5, 0(a7)
	srli	a5, a5, 32
	sw	a5, 4(a7)
	srli	a2, a4, 32
	sw	a2, 4(a1)
	sw	a4, 0(a1)
	slli	s2, s2, 3
	add	s2, s2, a3
	slli	t6, t6, 3
	add	t6, t6, a3
	lwu	a1, 0(t6)
	lwu	a2, 4(t6)
	lwu	a4, 4(s2)
	lwu	a5, 0(s2)
	sw	a1, 0(s2)
	sw	a2, 4(s2)
	sw	a4, 4(t6)
	sw	a5, 0(t6)
	slli	a1, t3, 3
	add	a1, a1, t2
	slli	a2, a0, 3
	add	a2, a2, t2
	ld	a4, 0(a2)
	ld	a5, 0(a1)
	sd	a4, 0(a1)
	sd	a5, 0(a2)
	lwu	a1, 4(a7)
	lwu	a2, 0(a7)
	slli	a1, a1, 32
	or	a4, a1, a2
.LBB7_13:
	andi	a1, t1, -2
	slli	a1, a1, 3
	add	s3, a3, a1
	lwu	a2, 4(s3)
	lwu	a5, 0(s3)
	slli	a2, a2, 32
	or	a5, a5, a2
	slli	t0, t5, 3
	bne	a5, a4, .LBB7_20
# %bb.14:
	ori	s2, t1, 1
	ori	t6, a6, 1
	slli	a2, s2, 3
	add	a2, a2, a3
	lwu	t5, 0(a2)
	lwu	a2, 4(a2)
	slli	s1, t6, 3
	add	s1, s1, a3
	lwu	s0, 4(s1)
	lwu	s1, 0(s1)
	slli	a2, a2, 32
	or	a2, a2, t5
	slli	s0, s0, 32
	or	s0, s0, s1
	bltu	a2, s0, .LBB7_22
# %bb.15:
	mv	a5, a4
	j	.LBB7_23
.LBB7_16:
	bgeu	a5, a2, .LBB7_35
# %bb.17:                               # %._crit_edge84
	ori	t5, s1, 1
	ori	a6, a6, 1
.LBB7_18:
	sw	a2, 0(a4)
	srli	a2, a2, 32
	sw	a2, 4(a4)
	srli	a1, a5, 32
	sw	a1, 4(s2)
	sw	a5, 0(s2)
	slli	t5, t5, 3
	add	t5, t5, a3
	slli	a2, a6, 3
	add	a2, a2, a3
	lwu	a1, 0(a2)
	lwu	a4, 4(a2)
	lwu	a5, 4(t5)
	lwu	s1, 0(t5)
	sw	a1, 0(t5)
	sw	a4, 4(t5)
	sw	a5, 4(a2)
	sw	s1, 0(a2)
	slli	a1, t4, 3
	add	a1, a1, t2
	slli	a4, t3, 3
	add	a4, a4, t2
	ld	a5, 0(a4)
	ld	s1, 0(a1)
	sd	a5, 0(a1)
	sd	s1, 0(a4)
	lwu	a1, 4(s2)
	lwu	a5, 0(s2)
	lwu	s1, 4(a7)
	lwu	s0, 0(a7)
	slli	a1, a1, 32
	or	a5, a5, a1
	slli	s1, s1, 32
	or	s1, s1, s0
	bne	a5, s1, .LBB7_29
# %bb.19:
	ori	t1, t0, 1
	lwu	a6, 0(a2)
	lwu	t0, 4(a2)
	slli	s0, t1, 3
	add	s0, s0, a3
	lwu	a1, 4(s0)
	lwu	s0, 0(s0)
	slli	t0, t0, 32
	or	a6, t0, a6
	slli	a1, a1, 32
	or	a1, a1, s0
	bltu	a6, a1, .LBB7_31
	j	.LBB7_35
.LBB7_20:
	bgeu	a5, a4, .LBB7_23
# %bb.21:                               # %._crit_edge81
	ori	s2, t1, 1
	ori	t6, a6, 1
.LBB7_22:
	sw	a4, 0(s3)
	srli	a4, a4, 32
	sw	a4, 4(s3)
	srli	a2, a5, 32
	sw	a2, 4(a7)
	sw	a5, 0(a7)
	slli	s2, s2, 3
	add	s2, s2, a3
	slli	t6, t6, 3
	add	t6, t6, a3
	lwu	a2, 0(t6)
	lwu	a4, 4(t6)
	lwu	a5, 4(s2)
	lwu	s1, 0(s2)
	sw	a2, 0(s2)
	sw	a4, 4(s2)
	sw	a5, 4(t6)
	sw	s1, 0(t6)
	add	a2, t2, t0
	slli	a4, t3, 3
	add	a4, a4, t2
	ld	a5, 0(a4)
	ld	s1, 0(a2)
	sd	a5, 0(a2)
	sd	s1, 0(a4)
	lwu	a2, 4(s3)
	lwu	a4, 0(s3)
	slli	a2, a2, 32
	or	a5, a2, a4
.LBB7_23:
	slli	a4, t4, 4
	add	a4, a4, a3
	lwu	a2, 4(a4)
	lwu	s1, 0(a4)
	slli	a2, a2, 32
	or	s1, s1, a2
	slli	a2, t4, 1
	bne	s1, a5, .LBB7_25
# %bb.24:
	ori	t6, a2, 1
	ori	t1, t1, 1
	slli	a2, t6, 3
	add	a2, a2, a3
	lwu	t5, 0(a2)
	lwu	s2, 4(a2)
	slli	s0, t1, 3
	add	s0, s0, a3
	lwu	a2, 4(s0)
	lwu	s0, 0(s0)
	slli	s2, s2, 32
	or	a1, s2, t5
	slli	a2, a2, 32
	or	a2, a2, s0
	bltu	a1, a2, .LBB7_27
	j	.LBB7_35
.LBB7_25:
	bgeu	s1, a5, .LBB7_35
# %bb.26:                               # %._crit_edge80
	ori	t6, a2, 1
	ori	t1, t1, 1
.LBB7_27:
	sw	a5, 0(a4)
	srli	a5, a5, 32
	sw	a5, 4(a4)
	srli	a1, s1, 32
	sw	a1, 4(s3)
	sw	s1, 0(s3)
	slli	t6, t6, 3
	add	t6, t6, a3
	slli	a4, t1, 3
	add	a4, a4, a3
	lwu	a1, 0(a4)
	lwu	a2, 4(a4)
	lwu	a5, 4(t6)
	lwu	s1, 0(t6)
	sw	a1, 0(t6)
	sw	a2, 4(t6)
	sw	a5, 4(a4)
	sw	s1, 0(a4)
	slli	a1, t4, 3
	add	a1, a1, t2
	add	t0, t0, t2
	ld	a2, 0(t0)
	ld	a5, 0(a1)
	sd	a2, 0(a1)
	sd	a5, 0(t0)
	lwu	a1, 4(s3)
	lwu	a2, 0(s3)
	lwu	s1, 4(a7)
	lwu	s0, 0(a7)
	slli	a1, a1, 32
	or	a5, a1, a2
	slli	s1, s1, 32
	or	s1, s1, s0
	bne	a5, s1, .LBB7_32
# %bb.28:
	ori	a6, a6, 1
	lwu	t1, 0(a4)
	lwu	t5, 4(a4)
	slli	s0, a6, 3
	add	s0, s0, a3
	lwu	a1, 4(s0)
	lwu	a2, 0(s0)
	slli	t5, t5, 32
	or	s0, t5, t1
	slli	a1, a1, 32
	or	a2, a2, a1
	bltu	s0, a2, .LBB7_34
	j	.LBB7_35
.LBB7_29:
	bgeu	a5, s1, .LBB7_35
# %bb.30:                               # %._crit_edge83
	ori	t1, t0, 1
.LBB7_31:
	sw	s1, 0(s2)
	srli	s1, s1, 32
	sw	s1, 4(s2)
	srli	a1, a5, 32
	sw	a1, 4(a7)
	sw	a5, 0(a7)
	slli	t1, t1, 3
	add	t1, t1, a3
	lwu	a1, 0(t1)
	lwu	a5, 4(t1)
	lwu	s1, 4(a2)
	lwu	s0, 0(a2)
	sw	a1, 0(a2)
	sw	a5, 4(a2)
	sw	s1, 4(t1)
	sw	s0, 0(t1)
	slli	a1, a0, 3
	add	a1, a1, t2
	ld	a2, 0(a1)
	ld	a5, 0(a4)
	sd	a2, 0(a4)
	sd	a5, 0(a1)
	j	.LBB7_35
.LBB7_32:
	bgeu	a5, s1, .LBB7_35
# %bb.33:                               # %._crit_edge
	lwu	t1, 0(a4)
	lwu	t5, 4(a4)
	ori	a6, a6, 1
	slli	s0, a6, 3
	add	s0, s0, a3
	lwu	a1, 4(s0)
	lwu	a2, 0(s0)
	slli	t5, t5, 32
	or	s0, t5, t1
	slli	a1, a1, 32
	or	a2, a2, a1
.LBB7_34:
	sw	s1, 0(s3)
	srli	s1, s1, 32
	sw	s1, 4(s3)
	srli	a1, a5, 32
	sw	a1, 4(a7)
	sw	a5, 0(a7)
	slli	a6, a6, 3
	add	a6, a6, a3
	sw	a2, 0(a4)
	srli	a2, a2, 32
	sw	a2, 4(a4)
	srli	a1, s0, 32
	sw	a1, 4(a6)
	sw	s0, 0(a6)
	slli	a1, t3, 3
	add	a1, a1, t2
	ld	a2, 0(a1)
	ld	a4, 0(t0)
	sd	a2, 0(t0)
	sd	a4, 0(a1)
.LBB7_35:                               # %.preheader.preheader
	addi	a6, a3, 8
	j	.LBB7_37
.LBB7_36:                               #   in Loop: Header=BB7_37 Depth=1
	and	a1, a7, t4
	sub	a0, a1, t0
	neg	a2, s3
	sub	t4, a2, a1
	mv	t3, s1
.LBB7_37:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_40 Depth 2
                                        #     Child Loop BB7_47 Depth 2
	slli	a1, t3, 4
	add	a1, a1, a3
	lwu	a2, 4(a1)
	lwu	a4, 0(a1)
	slli	a2, a2, 32
	or	s5, a2, a4
	addi	s2, a1, 8
	neg	t0, a0
	slli	t6, a0, 3
	add	t6, t6, t2
	slli	a0, a0, 4
	add	a0, a0, a6
	j	.LBB7_40
.LBB7_38:                               #   in Loop: Header=BB7_40 Depth=2
	lwu	a1, 4(a0)
	lwu	a2, 0(a0)
	lwu	a4, 4(s2)
	lwu	a5, 0(s2)
	slli	a1, a1, 32
	or	a1, a1, a2
	slli	a2, a4, 32
	or	a2, a2, a5
	bgeu	a1, a2, .LBB7_43
.LBB7_39:                               #   in Loop: Header=BB7_40 Depth=2
	addi	t0, t0, -1
	addi	t6, t6, 8
	addi	a0, a0, 16
.LBB7_40:                               #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lwu	a1, -4(a0)
	lwu	a2, -8(a0)
	slli	a1, a1, 32
	or	a5, a1, a2
	beq	a5, s5, .LBB7_38
# %bb.41:                               #   in Loop: Header=BB7_40 Depth=2
	bltu	a5, s5, .LBB7_39
# %bb.42:                               #   in Loop: Header=BB7_37 Depth=1
	li	a7, 0
	j	.LBB7_44
.LBB7_43:                               #   in Loop: Header=BB7_37 Depth=1
	xor	a1, a1, a2
	seqz	a7, a1
	mv	a5, s5
.LBB7_44:                               # %.loopexit38
                                        #   in Loop: Header=BB7_37 Depth=1
	add	t1, t3, t0
	neg	t5, t0
	neg	s3, t4
	slli	s0, t4, 3
	add	s4, t2, s0
	slli	a1, t4, 4
	add	a1, a1, a6
	j	.LBB7_47
.LBB7_45:                               #   in Loop: Header=BB7_47 Depth=2
	lwu	a2, 4(s2)
	lwu	a4, 0(s2)
	lwu	s0, 4(a1)
	lwu	s1, 0(a1)
	slli	a2, a2, 32
	or	a4, a4, a2
	slli	a2, s0, 32
	or	a2, a2, s1
	bgeu	a4, a2, .LBB7_50
.LBB7_46:                               #   in Loop: Header=BB7_47 Depth=2
	addi	s3, s3, 1
	addi	s4, s4, -8
	addi	a1, a1, -16
.LBB7_47:                               #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lwu	a2, -4(a1)
	lwu	a4, -8(a1)
	slli	a2, a2, 32
	or	a4, a4, a2
	beq	s5, a4, .LBB7_45
# %bb.48:                               #   in Loop: Header=BB7_47 Depth=2
	bltu	s5, a4, .LBB7_46
# %bb.49:                               #   in Loop: Header=BB7_37 Depth=1
	li	t4, 0
	neg	s1, s3
	bltu	t5, s1, .LBB7_51
	j	.LBB7_55
.LBB7_50:                               #   in Loop: Header=BB7_37 Depth=1
	xor	a2, a2, a4
	seqz	t4, a2
	mv	a4, s5
	neg	s1, s3
	bgeu	t5, s1, .LBB7_55
.LBB7_51:                               #   in Loop: Header=BB7_37 Depth=1
	sw	a4, -8(a0)
	srli	a4, a4, 32
	sw	a4, -4(a0)
	srli	a2, a5, 32
	sw	a2, -4(a1)
	sw	a5, -8(a1)
	lwu	a2, 0(a1)
	lwu	a4, 4(a1)
	lwu	a5, 4(a0)
	lwu	s0, 0(a0)
	sw	a2, 0(a0)
	sw	a4, 4(a0)
	sw	a5, 4(a1)
	sw	s0, 0(a1)
	ld	a0, 0(s4)
	ld	a1, 0(t6)
	add	a2, t3, s3
	sd	a0, 0(t6)
	sd	a1, 0(s4)
	beqz	a2, .LBB7_53
# %bb.52:                               #   in Loop: Header=BB7_37 Depth=1
	mv	t5, t3
.LBB7_53:                               #   in Loop: Header=BB7_37 Depth=1
	beqz	t1, .LBB7_36
# %bb.54:                               #   in Loop: Header=BB7_37 Depth=1
	mv	s1, t5
	j	.LBB7_36
.LBB7_55:
	li	a0, 1
	sub	a0, a0, s3
	ld	s0, 40(sp)                      # 8-byte Folded Reload
	ld	s1, 32(sp)                      # 8-byte Folded Reload
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	ld	s3, 16(sp)                      # 8-byte Folded Reload
	ld	s4, 8(sp)                       # 8-byte Folded Reload
	ld	s5, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end7:
	.size	_sparse_partition_0_1_index_coo_0_f64, .Lfunc_end7-_sparse_partition_0_1_index_coo_0_f64
                                        # -- End function
	.globl	_sparse_hybrid_qsort_0_1_index_coo_0_f64 # -- Begin function _sparse_hybrid_qsort_0_1_index_coo_0_f64
	.p2align	1
	.type	_sparse_hybrid_qsort_0_1_index_coo_0_f64,@function
_sparse_hybrid_qsort_0_1_index_coo_0_f64: # @_sparse_hybrid_qsort_0_1_index_coo_0_f64
# %bb.0:
	addi	sp, sp, -176
	sd	ra, 168(sp)                     # 8-byte Folded Spill
	sd	s0, 160(sp)                     # 8-byte Folded Spill
	sd	s1, 152(sp)                     # 8-byte Folded Spill
	sd	s2, 144(sp)                     # 8-byte Folded Spill
	sd	s3, 136(sp)                     # 8-byte Folded Spill
	sd	s4, 128(sp)                     # 8-byte Folded Spill
	sd	s5, 120(sp)                     # 8-byte Folded Spill
	sd	s6, 112(sp)                     # 8-byte Folded Spill
	sd	s7, 104(sp)                     # 8-byte Folded Spill
	sd	s8, 96(sp)                      # 8-byte Folded Spill
	sd	s9, 88(sp)                      # 8-byte Folded Spill
	sd	s10, 80(sp)                     # 8-byte Folded Spill
	sd	s11, 72(sp)                     # 8-byte Folded Spill
	mv	s8, a0
	addi	a0, a0, 1
	sd	a7, 64(sp)                      # 8-byte Folded Spill
	bgeu	a0, a1, .LBB8_21
# %bb.1:                                # %.lr.ph
	mv	s0, a3
	mv	s7, a1
	ld	s9, 208(sp)
	ld	s1, 176(sp)
	addi	s9, s9, -1
	beqz	s9, .LBB8_15
# %bb.2:
	mv	s3, a6
	mv	s4, a5
	mv	s5, a4
	mv	s6, a2
	ld	a0, 200(sp)
	sd	a0, 56(sp)                      # 8-byte Folded Spill
	ld	a0, 192(sp)
	sd	a0, 48(sp)                      # 8-byte Folded Spill
	ld	a0, 184(sp)
	sd	a0, 40(sp)                      # 8-byte Folded Spill
	li	s11, 30
	j	.LBB8_6
.LBB8_3:                                #   in Loop: Header=BB8_6 Depth=1
	mv	s7, a0
.LBB8_4:                                #   in Loop: Header=BB8_6 Depth=1
	sd	s9, 32(sp)
	ld	a0, 56(sp)                      # 8-byte Folded Reload
	sd	a0, 24(sp)
	ld	a0, 48(sp)                      # 8-byte Folded Reload
	sd	a0, 16(sp)
	ld	a0, 40(sp)                      # 8-byte Folded Reload
	sd	a0, 8(sp)
	sd	s1, 0(sp)
	mv	a0, s8
	mv	a1, s7
	mv	a2, s6
	mv	a3, s0
	mv	a4, s5
	mv	a5, s4
	mv	a6, s3
	ld	a7, 64(sp)                      # 8-byte Folded Reload
	call	_sparse_hybrid_qsort_0_1_index_coo_0_f64
.LBB8_5:                                #   in Loop: Header=BB8_6 Depth=1
	addi	a0, s10, 1
	mv	s7, s2
	mv	s8, s10
	bgeu	a0, s2, .LBB8_21
.LBB8_6:                                # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	sub	a0, s7, s8
	bltu	s11, a0, .LBB8_8
# %bb.7:                                #   in Loop: Header=BB8_6 Depth=1
	sd	s1, 0(sp)
	mv	a0, s8
	mv	a1, s7
	mv	a3, s0
	call	_sparse_sort_stable_0_1_index_coo_0_f64
	mv	s10, s8
	mv	s2, s8
	j	.LBB8_5
.LBB8_8:                                #   in Loop: Header=BB8_6 Depth=1
	sd	s1, 0(sp)
	mv	a0, s8
	mv	a1, s7
	mv	a3, s0
	call	_sparse_partition_0_1_index_coo_0_f64
	sub	a1, s7, a0
	sub	a2, a0, s8
	mv	s10, s8
	mv	s2, a0
	bgeu	a1, a2, .LBB8_11
# %bb.9:                                #   in Loop: Header=BB8_6 Depth=1
	mv	a3, a2
	bgeu	a2, a1, .LBB8_12
.LBB8_10:                               #   in Loop: Header=BB8_6 Depth=1
	bnez	a3, .LBB8_13
	j	.LBB8_5
.LBB8_11:                               #   in Loop: Header=BB8_6 Depth=1
	mv	s10, a0
	mv	s2, s7
	mv	a3, a2
	bltu	a2, a1, .LBB8_10
.LBB8_12:                               #   in Loop: Header=BB8_6 Depth=1
	mv	a3, a1
	beqz	a1, .LBB8_5
.LBB8_13:                               #   in Loop: Header=BB8_6 Depth=1
	bgeu	a1, a2, .LBB8_3
# %bb.14:                               #   in Loop: Header=BB8_6 Depth=1
	mv	s8, a0
	j	.LBB8_4
.LBB8_15:                               # %.lr.ph.split.us
	li	a0, -1
	beq	s8, a0, .LBB8_18
# %bb.16:                               # %.lr.ph.split.us.split
	sub	a0, s7, s8
	li	a1, 31
	bgeu	a0, a1, .LBB8_20
# %bb.17:
	sd	s1, 0(sp)
	mv	a0, s8
	mv	a1, s7
	mv	a3, s0
	call	_sparse_sort_stable_0_1_index_coo_0_f64
	j	.LBB8_21
.LBB8_18:                               # %.lr.ph.split.us.split.us.preheader
	addi	a0, s7, 1
	li	a1, 31
	bgeu	a0, a1, .LBB8_22
# %bb.19:
	li	a0, -1
	sd	s1, 0(sp)
	mv	a1, s7
	mv	a3, s0
	call	_sparse_sort_stable_0_1_index_coo_0_f64
	j	.LBB8_23
.LBB8_20:
	sd	s1, 0(sp)
	mv	a0, s8
	mv	a1, s7
	mv	a3, s0
	call	_sparse_heap_sort_0_1_index_coo_0_f64
.LBB8_21:                               # %._crit_edge
	ld	ra, 168(sp)                     # 8-byte Folded Reload
	ld	s0, 160(sp)                     # 8-byte Folded Reload
	ld	s1, 152(sp)                     # 8-byte Folded Reload
	ld	s2, 144(sp)                     # 8-byte Folded Reload
	ld	s3, 136(sp)                     # 8-byte Folded Reload
	ld	s4, 128(sp)                     # 8-byte Folded Reload
	ld	s5, 120(sp)                     # 8-byte Folded Reload
	ld	s6, 112(sp)                     # 8-byte Folded Reload
	ld	s7, 104(sp)                     # 8-byte Folded Reload
	ld	s8, 96(sp)                      # 8-byte Folded Reload
	ld	s9, 88(sp)                      # 8-byte Folded Reload
	ld	s10, 80(sp)                     # 8-byte Folded Reload
	ld	s11, 72(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 176
	ret
.LBB8_22:
	li	a0, -1
	sd	s1, 0(sp)
	mv	a1, s7
	mv	a3, s0
	call	_sparse_heap_sort_0_1_index_coo_0_f64
.LBB8_23:                               # %.lr.ph.split.us.split.us.peel.next
                                        # =>This Inner Loop Header: Depth=1
	li	a0, -1
	li	a1, -1
	sd	s1, 0(sp)
	mv	a3, s0
	call	_sparse_sort_stable_0_1_index_coo_0_f64
	j	.LBB8_23
.Lfunc_end8:
	.size	_sparse_hybrid_qsort_0_1_index_coo_0_f64, .Lfunc_end8-_sparse_hybrid_qsort_0_1_index_coo_0_f64
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -624
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
	sd	s11, 520(sp)                    # 8-byte Folded Spill
	li	a0, 128
	call	malloc
	sd	a0, 224(sp)                     # 8-byte Folded Spill
	li	a0, 128
	call	malloc
	mv	s0, a0
	li	a0, 16
	sd	a0, 280(sp)                     # 8-byte Folded Spill
	li	a0, 128
	call	malloc
	mv	s8, a0
	li	a0, 128
	call	malloc
	mv	s11, a0
	li	s5, 0
	sd	zero, 296(sp)                   # 8-byte Folded Spill
	sd	zero, 248(sp)                   # 8-byte Folded Spill
	li	s2, 0
	li	s10, 0
	sw	zero, 0(s0)
	sw	zero, 4(s0)
	sw	zero, 8(s0)
	sd	s0, 256(sp)                     # 8-byte Folded Spill
	sw	zero, 12(s0)
	lui	a0, %hi(.L__constant_4x3xf64+16)
	addi	s4, a0, %lo(.L__constant_4x3xf64+16)
	li	a0, 1
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	li	s0, 16
	li	a0, 1
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	j	.LBB9_4
.LBB9_1:                                #   in Loop: Header=BB9_4 Depth=1
	ld	s11, 288(sp)                    # 8-byte Folded Reload
.LBB9_2:                                # %_insert_compressed_nonunique_nonordered_singleton_nonordered_3_4_f64_0_0.exit.2
                                        #   in Loop: Header=BB9_4 Depth=1
	ld	s7, 296(sp)                     # 8-byte Folded Reload
	slli	s7, s7, 3
	add	s7, s7, s11
	sd	s9, 0(s7)
	mv	s0, s3
	sd	s1, 296(sp)                     # 8-byte Folded Spill
.LBB9_3:                                #   in Loop: Header=BB9_4 Depth=1
                                        # implicit-def: $x10
                                        # implicit-def: $x10
                                        # implicit-def: $x10
                                        # implicit-def: $x10
	addi	s10, s10, 1
	addi	s4, s4, 24
	li	a0, 4
	beq	s10, a0, .LBB9_54
.LBB9_4:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld	s9, -16(s4)
                                        # implicit-def: $x10
                                        # implicit-def: $x10
                                        # implicit-def: $x10
                                        # implicit-def: $x10
	mv	a0, s9
	li	a1, 0
	call	__eqdf2
	srli	s6, s10, 32
	sd	s6, 272(sp)                     # 8-byte Folded Spill
	beqz	a0, .LBB9_21
# %bb.5:                                #   in Loop: Header=BB9_4 Depth=1
	sd	s11, 288(sp)                    # 8-byte Folded Spill
	srli	a0, s5, 1
	addi	a0, a0, 1
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	sw	a0, 8(a1)
	srli	a0, a0, 32
	addi	s11, s5, 1
	sw	a0, 12(a1)
	bgeu	s0, s11, .LBB9_10
# %bb.6:                                #   in Loop: Header=BB9_4 Depth=1
	slli	s6, s0, 1
	li	a0, 1
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	blez	s0, .LBB9_8
# %bb.7:                                #   in Loop: Header=BB9_4 Depth=1
	slli	a0, s0, 4
	call	malloc
	mv	s1, a0
	slli	a2, s0, 3
	slli	a1, s2, 3
	add	a1, a1, s8
	call	memcpy
	mv	a0, s8
	call	free
	li	s2, 0
	mv	s8, s1
	j	.LBB9_9
.LBB9_8:                                #   in Loop: Header=BB9_4 Depth=1
	li	s2, 0
.LBB9_9:                                #   in Loop: Header=BB9_4 Depth=1
	mv	s0, s6
	ld	s6, 272(sp)                     # 8-byte Folded Reload
.LBB9_10:                               #   in Loop: Header=BB9_4 Depth=1
	slli	a0, s5, 3
	add	a0, a0, s8
	sw	zero, 4(a0)
	addi	s5, s5, 2
	sw	zero, 0(a0)
	bgeu	s0, s5, .LBB9_13
# %bb.11:                               #   in Loop: Header=BB9_4 Depth=1
	slli	a1, s0, 1
	li	a0, 1
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	blez	s0, .LBB9_14
# %bb.12:                               #   in Loop: Header=BB9_4 Depth=1
	slli	a0, s0, 4
	mv	s3, a1
	call	malloc
	mv	s1, a0
	slli	a2, s0, 3
	slli	a1, s2, 3
	add	a1, a1, s8
	call	memcpy
	mv	a0, s8
	call	free
	mv	a1, s3
	li	s2, 0
	mv	s8, s1
	j	.LBB9_15
.LBB9_13:                               #   in Loop: Header=BB9_4 Depth=1
	mv	a1, s0
	j	.LBB9_15
.LBB9_14:                               #   in Loop: Header=BB9_4 Depth=1
	li	s2, 0
.LBB9_15:                               #   in Loop: Header=BB9_4 Depth=1
	slli	s11, s11, 3
	add	s11, s11, s8
	sw	s6, 4(s11)
	ld	s1, 296(sp)                     # 8-byte Folded Reload
	addi	s1, s1, 1
	sw	s10, 0(s11)
	ld	s0, 280(sp)                     # 8-byte Folded Reload
	bgeu	s0, s1, .LBB9_20
# %bb.16:                               #   in Loop: Header=BB9_4 Depth=1
	slli	s11, s0, 1
	li	a0, 1
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	blez	s0, .LBB9_18
# %bb.17:                               #   in Loop: Header=BB9_4 Depth=1
	slli	a0, s0, 4
	mv	s6, a1
	call	malloc
	sd	s2, 232(sp)                     # 8-byte Folded Spill
	mv	s3, a0
	slli	a2, s0, 3
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	slli	a1, a1, 3
	ld	s0, 288(sp)                     # 8-byte Folded Reload
	add	a1, a1, s0
	call	memcpy
	mv	a0, s0
	call	free
	mv	a1, s6
	sd	zero, 248(sp)                   # 8-byte Folded Spill
	sd	s3, 288(sp)                     # 8-byte Folded Spill
	ld	s2, 232(sp)                     # 8-byte Folded Reload
	ld	s6, 272(sp)                     # 8-byte Folded Reload
	j	.LBB9_19
.LBB9_18:                               #   in Loop: Header=BB9_4 Depth=1
	sd	zero, 248(sp)                   # 8-byte Folded Spill
.LBB9_19:                               # %_insert_compressed_nonunique_nonordered_singleton_nonordered_3_4_f64_0_0.exit
                                        #   in Loop: Header=BB9_4 Depth=1
	sd	s11, 280(sp)                    # 8-byte Folded Spill
.LBB9_20:                               # %_insert_compressed_nonunique_nonordered_singleton_nonordered_3_4_f64_0_0.exit
                                        #   in Loop: Header=BB9_4 Depth=1
	ld	s7, 296(sp)                     # 8-byte Folded Reload
	slli	s7, s7, 3
	ld	s11, 288(sp)                    # 8-byte Folded Reload
	add	s7, s7, s11
	sd	s9, 0(s7)
	mv	s0, a1
	sd	s1, 296(sp)                     # 8-byte Folded Spill
.LBB9_21:                               #   in Loop: Header=BB9_4 Depth=1
	ld	s9, -8(s4)
                                        # implicit-def: $x10
                                        # implicit-def: $x10
                                        # implicit-def: $x10
                                        # implicit-def: $x10
	mv	a0, s9
	li	a1, 0
	call	__eqdf2
	beqz	a0, .LBB9_38
# %bb.22:                               #   in Loop: Header=BB9_4 Depth=1
	sd	s11, 288(sp)                    # 8-byte Folded Spill
	srli	a0, s5, 1
	addi	a0, a0, 1
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	sw	a0, 8(a1)
	srli	a0, a0, 32
	addi	s11, s5, 1
	sw	a0, 12(a1)
	bgeu	s0, s11, .LBB9_27
# %bb.23:                               #   in Loop: Header=BB9_4 Depth=1
	slli	s6, s0, 1
	li	a0, 1
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	blez	s0, .LBB9_25
# %bb.24:                               #   in Loop: Header=BB9_4 Depth=1
	slli	a0, s0, 4
	call	malloc
	mv	s1, a0
	slli	a2, s0, 3
	slli	a1, s2, 3
	add	a1, a1, s8
	call	memcpy
	mv	a0, s8
	call	free
	li	s2, 0
	mv	s8, s1
	j	.LBB9_26
.LBB9_25:                               #   in Loop: Header=BB9_4 Depth=1
	li	s2, 0
.LBB9_26:                               #   in Loop: Header=BB9_4 Depth=1
	mv	s0, s6
	ld	s6, 272(sp)                     # 8-byte Folded Reload
.LBB9_27:                               #   in Loop: Header=BB9_4 Depth=1
	slli	a0, s5, 3
	add	a0, a0, s8
	sw	zero, 4(a0)
	addi	s5, s5, 2
	li	a1, 1
	sw	a1, 0(a0)
	bgeu	s0, s5, .LBB9_30
# %bb.28:                               #   in Loop: Header=BB9_4 Depth=1
	slli	s3, s0, 1
	li	a0, 1
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	blez	s0, .LBB9_31
# %bb.29:                               #   in Loop: Header=BB9_4 Depth=1
	slli	a0, s0, 4
	call	malloc
	mv	s1, a0
	slli	a2, s0, 3
	slli	a1, s2, 3
	add	a1, a1, s8
	call	memcpy
	mv	a0, s8
	call	free
	li	s2, 0
	mv	s8, s1
	j	.LBB9_32
.LBB9_30:                               #   in Loop: Header=BB9_4 Depth=1
	mv	s3, s0
	j	.LBB9_32
.LBB9_31:                               #   in Loop: Header=BB9_4 Depth=1
	li	s2, 0
.LBB9_32:                               #   in Loop: Header=BB9_4 Depth=1
	slli	s11, s11, 3
	add	s11, s11, s8
	sw	s6, 4(s11)
	ld	s1, 296(sp)                     # 8-byte Folded Reload
	addi	s1, s1, 1
	sw	s10, 0(s11)
	ld	s0, 280(sp)                     # 8-byte Folded Reload
	bgeu	s0, s1, .LBB9_37
# %bb.33:                               #   in Loop: Header=BB9_4 Depth=1
	slli	s11, s0, 1
	li	a0, 1
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	blez	s0, .LBB9_35
# %bb.34:                               #   in Loop: Header=BB9_4 Depth=1
	slli	a0, s0, 4
	call	malloc
	mv	s7, s3
	mv	s3, a0
	slli	a2, s0, 3
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	slli	a1, a1, 3
	ld	s0, 288(sp)                     # 8-byte Folded Reload
	add	a1, a1, s0
	call	memcpy
	mv	a0, s0
	call	free
	sd	zero, 248(sp)                   # 8-byte Folded Spill
	sd	s3, 288(sp)                     # 8-byte Folded Spill
	mv	s3, s7
	ld	s6, 272(sp)                     # 8-byte Folded Reload
	j	.LBB9_36
.LBB9_35:                               #   in Loop: Header=BB9_4 Depth=1
	sd	zero, 248(sp)                   # 8-byte Folded Spill
.LBB9_36:                               # %_insert_compressed_nonunique_nonordered_singleton_nonordered_3_4_f64_0_0.exit.1
                                        #   in Loop: Header=BB9_4 Depth=1
	sd	s11, 280(sp)                    # 8-byte Folded Spill
.LBB9_37:                               # %_insert_compressed_nonunique_nonordered_singleton_nonordered_3_4_f64_0_0.exit.1
                                        #   in Loop: Header=BB9_4 Depth=1
	ld	s7, 296(sp)                     # 8-byte Folded Reload
	slli	s7, s7, 3
	ld	s11, 288(sp)                    # 8-byte Folded Reload
	add	s7, s7, s11
	sd	s9, 0(s7)
	mv	s0, s3
	sd	s1, 296(sp)                     # 8-byte Folded Spill
.LBB9_38:                               #   in Loop: Header=BB9_4 Depth=1
	ld	s9, 0(s4)
                                        # implicit-def: $x10
                                        # implicit-def: $x10
                                        # implicit-def: $x10
                                        # implicit-def: $x10
	mv	a0, s9
	li	a1, 0
	call	__eqdf2
	beqz	a0, .LBB9_3
# %bb.39:                               #   in Loop: Header=BB9_4 Depth=1
	sd	s11, 288(sp)                    # 8-byte Folded Spill
	srli	a0, s5, 1
	addi	a0, a0, 1
	ld	a1, 256(sp)                     # 8-byte Folded Reload
	sw	a0, 8(a1)
	srli	a0, a0, 32
	addi	s11, s5, 1
	sw	a0, 12(a1)
	bgeu	s0, s11, .LBB9_44
# %bb.40:                               #   in Loop: Header=BB9_4 Depth=1
	slli	s6, s0, 1
	li	a0, 1
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	blez	s0, .LBB9_42
# %bb.41:                               #   in Loop: Header=BB9_4 Depth=1
	slli	a0, s0, 4
	call	malloc
	mv	s1, a0
	slli	a2, s0, 3
	slli	a1, s2, 3
	add	a1, a1, s8
	call	memcpy
	mv	a0, s8
	call	free
	li	s2, 0
	mv	s8, s1
	j	.LBB9_43
.LBB9_42:                               #   in Loop: Header=BB9_4 Depth=1
	li	s2, 0
.LBB9_43:                               #   in Loop: Header=BB9_4 Depth=1
	mv	s0, s6
	ld	s6, 272(sp)                     # 8-byte Folded Reload
.LBB9_44:                               #   in Loop: Header=BB9_4 Depth=1
	slli	a0, s5, 3
	add	a0, a0, s8
	sw	zero, 4(a0)
	addi	s5, s5, 2
	li	a1, 2
	sw	a1, 0(a0)
	bgeu	s0, s5, .LBB9_47
# %bb.45:                               #   in Loop: Header=BB9_4 Depth=1
	slli	s3, s0, 1
	li	a0, 1
	sd	a0, 264(sp)                     # 8-byte Folded Spill
	blez	s0, .LBB9_48
# %bb.46:                               #   in Loop: Header=BB9_4 Depth=1
	slli	a0, s0, 4
	call	malloc
	mv	s1, a0
	slli	a2, s0, 3
	slli	a1, s2, 3
	add	a1, a1, s8
	call	memcpy
	mv	a0, s8
	call	free
	li	s2, 0
	mv	s8, s1
	j	.LBB9_49
.LBB9_47:                               #   in Loop: Header=BB9_4 Depth=1
	mv	s3, s0
	j	.LBB9_49
.LBB9_48:                               #   in Loop: Header=BB9_4 Depth=1
	li	s2, 0
.LBB9_49:                               #   in Loop: Header=BB9_4 Depth=1
	slli	s11, s11, 3
	add	s11, s11, s8
	sw	s6, 4(s11)
	ld	s1, 296(sp)                     # 8-byte Folded Reload
	addi	s1, s1, 1
	sw	s10, 0(s11)
	ld	s0, 280(sp)                     # 8-byte Folded Reload
	bgeu	s0, s1, .LBB9_1
# %bb.50:                               #   in Loop: Header=BB9_4 Depth=1
	mv	s7, s3
	slli	s3, s0, 1
	li	a0, 1
	sd	a0, 240(sp)                     # 8-byte Folded Spill
	ld	s11, 288(sp)                    # 8-byte Folded Reload
	blez	s0, .LBB9_52
# %bb.51:                               #   in Loop: Header=BB9_4 Depth=1
	slli	a0, s0, 4
	call	malloc
	mv	a2, s0
	mv	s0, a0
	slli	a2, a2, 3
	ld	a1, 248(sp)                     # 8-byte Folded Reload
	slli	a1, a1, 3
	add	a1, a1, s11
	call	memcpy
	mv	a0, s11
	call	free
	sd	zero, 248(sp)                   # 8-byte Folded Spill
	mv	s11, s0
	j	.LBB9_53
.LBB9_52:                               #   in Loop: Header=BB9_4 Depth=1
	sd	zero, 248(sp)                   # 8-byte Folded Spill
.LBB9_53:                               # %_insert_compressed_nonunique_nonordered_singleton_nonordered_3_4_f64_0_0.exit.2
                                        #   in Loop: Header=BB9_4 Depth=1
	sd	s3, 280(sp)                     # 8-byte Folded Spill
	mv	s3, s7
	j	.LBB9_2
.LBB9_54:
	li	a0, 64
	li	a1, 64
	ld	a2, 296(sp)                     # 8-byte Folded Reload
	beqz	a2, .LBB9_56
# %bb.55:                               # %cond.false
	ld	a2, 296(sp)                     # 8-byte Folded Reload
	srli	a1, a2, 1
	or	a1, a1, a2
	srli	a2, a1, 2
	or	a1, a1, a2
	srli	a2, a1, 4
	or	a1, a1, a2
	srli	a2, a1, 8
	or	a1, a1, a2
	srli	a2, a1, 16
	or	a1, a1, a2
	srli	a2, a1, 32
	or	a1, a1, a2
	not	a1, a1
	srli	a2, a1, 1
	lui	a3, 349525
	addiw	a3, a3, 1365
	slli	a4, a3, 32
	add	a3, a3, a4
	and	a2, a2, a3
	sub	a1, a1, a2
	lui	a2, 209715
	addiw	a2, a2, 819
	slli	a3, a2, 32
	add	a2, a2, a3
	and	a3, a1, a2
	srli	a1, a1, 2
	and	a1, a1, a2
	add	a1, a1, a3
	srli	a2, a1, 4
	add	a1, a1, a2
	lui	a2, 61681
	addiw	a2, a2, -241
	slli	a3, a2, 32
	add	a2, a2, a3
	and	a1, a1, a2
	lui	a2, 4112
	addiw	a2, a2, 257
	slli	a3, a2, 32
	add	a2, a2, a3
	mul	a1, a1, a2
	srli	a1, a1, 56
.LBB9_56:                               # %cond.end
	sub	a0, a0, a1
	sd	a0, 32(sp)
	sd	s11, 0(sp)
	ld	a0, 248(sp)                     # 8-byte Folded Reload
	sd	a0, 8(sp)
	ld	a0, 280(sp)                     # 8-byte Folded Reload
	sd	a0, 16(sp)
	ld	a0, 240(sp)                     # 8-byte Folded Reload
	sd	a0, 24(sp)
	li	a0, 0
	ld	a1, 296(sp)                     # 8-byte Folded Reload
	mv	a2, s8
	mv	a3, s8
	mv	a4, s2
	mv	a5, s0
	ld	a6, 264(sp)                     # 8-byte Folded Reload
	mv	a7, s11
	call	_sparse_hybrid_qsort_0_1_index_coo_0_f64
	li	a0, 128
	call	malloc
	mv	s1, a0
	li	a0, 128
	call	malloc
	mv	s2, a0
	li	a0, 128
	call	malloc
	mv	a1, s1
	sw	zero, 0(s1)
	sw	zero, 4(s1)
	sw	zero, 8(s1)
	sw	zero, 12(s1)
	sw	zero, 16(s1)
	sw	zero, 20(s1)
	sw	zero, 24(s1)
	sw	zero, 28(s1)
	ld	a5, 256(sp)                     # 8-byte Folded Reload
	lwu	a2, 4(a5)
	lwu	a3, 0(a5)
	lwu	a4, 12(a5)
	lwu	a5, 8(a5)
	slli	a2, a2, 32
	or	a2, a2, a3
	slli	a4, a4, 32
	or	a4, a4, a5
	li	t2, 4
	bge	a2, a4, .LBB9_60
# %bb.57:                               # %.lr.ph
	li	t5, 0
	li	t0, 0
	li	t3, 0
	li	t1, 0
	li	a3, 0
	li	t4, 1
	li	s4, 16
	sub	s3, a4, a2
	slli	s0, a2, 3
	add	s9, s11, s0
	slli	a2, a2, 4
	add	a2, a2, s8
	addi	s1, a2, 8
	li	s6, 4
	li	s7, 3
	li	t2, 4
	mv	s5, a0
	mv	a6, s2
	mv	a7, s2
	li	s2, 16
	li	t6, 1
	mv	a2, a1
	li	a4, 16
	li	a5, 1
.LBB9_58:                               # =>This Inner Loop Header: Depth=1
	lwu	s0, -4(s1)
	lwu	s8, -8(s1)
	slli	s10, s0, 32
	lwu	s0, 4(s1)
	lwu	s11, 0(s1)
	ld	ra, 0(s9)
	or	s8, s10, s8
	slli	s0, s0, 32
	or	s0, s0, s11
	sd	ra, 120(sp)
	sd	s0, 112(sp)
	sd	s8, 104(sp)
	sd	t5, 88(sp)
	sd	t2, 80(sp)
	sd	s6, 72(sp)
	sd	s7, 64(sp)
	sd	s4, 48(sp)
	sd	t3, 40(sp)
	sd	s5, 32(sp)
	sd	a0, 24(sp)
	sd	s2, 8(sp)
	sd	t1, 0(sp)
	sd	t0, 96(sp)
	sd	t4, 56(sp)
	addi	a0, sp, 360
	sd	t6, 16(sp)
	call	_insert_dense_compressed_3_4_f64_0_0
	ld	a5, 392(sp)
	ld	a4, 384(sp)
	ld	a3, 376(sp)
	ld	a2, 368(sp)
	ld	a1, 360(sp)
	ld	t6, 432(sp)
	ld	s2, 424(sp)
	ld	t1, 416(sp)
	ld	a7, 408(sp)
	ld	a6, 400(sp)
	ld	t4, 472(sp)
	ld	s4, 464(sp)
	ld	t3, 456(sp)
	ld	s5, 448(sp)
	ld	a0, 440(sp)
	ld	t0, 512(sp)
	ld	t5, 504(sp)
	ld	t2, 496(sp)
	ld	s6, 488(sp)
	ld	s7, 480(sp)
	addi	s3, s3, -1
	addi	s9, s9, 8
	addi	s1, s1, 16
	bnez	s3, .LBB9_58
# %bb.59:                               # %._crit_edge.loopexit
	mv	a1, a2
	mv	a0, s5
	li	a2, 2
	bge	t2, a2, .LBB9_61
	j	.LBB9_67
.LBB9_60:
	mv	a7, s2
	li	a2, 2
	blt	t2, a2, .LBB9_67
.LBB9_61:                               # %.lr.ph20.preheader
	lwu	a3, 4(a1)
	lwu	a4, 0(a1)
	slli	a3, a3, 32
	or	a5, a3, a4
	addi	t2, t2, -1
	addi	a3, a1, 8
	mv	s1, a5
	j	.LBB9_64
.LBB9_62:                               # %.lr.ph20
                                        #   in Loop: Header=BB9_64 Depth=1
	beqz	a4, .LBB9_66
# %bb.63:                               #   in Loop: Header=BB9_64 Depth=1
	addi	t2, t2, -1
	addi	a3, a3, 8
	mv	a5, s1
	beqz	t2, .LBB9_67
.LBB9_64:                               # %.lr.ph20
                                        # =>This Inner Loop Header: Depth=1
	lwu	a4, 4(a3)
	lwu	s0, 0(a3)
	slli	a4, a4, 32
	or	a4, a4, s0
	beqz	a4, .LBB9_62
# %bb.65:                               # %.lr.ph20
                                        #   in Loop: Header=BB9_64 Depth=1
	mv	s1, a4
	j	.LBB9_62
.LBB9_66:                               #   in Loop: Header=BB9_64 Depth=1
	sw	a5, 0(a3)
	srli	a5, a5, 32
	sw	a5, 4(a3)
	addi	t2, t2, -1
	addi	a3, a3, 8
	mv	a5, s1
	bnez	t2, .LBB9_64
.LBB9_67:                               # %._crit_edge21
	ld	a5, 224(sp)                     # 8-byte Folded Reload
	addi	a3, a5, 63
	andi	a3, a3, -64
	li	a4, 1
	sd	a4, 208(sp)
	sd	a2, 200(sp)
	sd	a2, 192(sp)
	li	a2, 4
	sd	a2, 184(sp)
	sd	zero, 176(sp)
	sd	a5, 160(sp)
	lui	a2, %hi(.L__constant_3x2xf64)
	addi	a2, a2, %lo(.L__constant_3x2xf64)
	sd	a2, 112(sp)
	sd	a0, 32(sp)
	addi	a0, sp, 304
	sd	a3, 168(sp)
	mv	a2, a1
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
	ld	s11, 520(sp)                    # 8-byte Folded Reload
	addi	sp, sp, 624
	ret
.Lfunc_end9:
	.size	main, .Lfunc_end9-main
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
	.addrsig
	.addrsig_sym .L__constant_3x2xf64
