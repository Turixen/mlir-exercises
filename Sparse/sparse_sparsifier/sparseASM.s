	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_matmul                         ; -- Begin function matmul
	.p2align	2
_matmul:                                ; @matmul
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 112
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x20, x2
	mov	x21, x0
	ldr	x19, [sp, #120]
	add	x0, sp, #8
	mov	x1, x21
	mov	w2, #1                          ; =0x1
	bl	__mlir_ciface_sparsePositions0
	ldr	x23, [sp, #16]
	add	x0, sp, #8
	mov	x1, x21
	mov	w2, #1                          ; =0x1
	bl	__mlir_ciface_sparseCoordinates0
	ldr	x22, [sp, #16]
	add	x0, sp, #8
	mov	x1, x21
	bl	__mlir_ciface_sparseValuesF64
	ldr	x8, [sp, #16]
	ldp	x12, x11, [x23]
	subs	x9, x11, x12
	b.le	LBB0_4
; %bb.1:                                ; %.lr.ph
	add	x10, x19, #8
	lsl	x12, x12, #3
	add	x11, x8, x12
	add	x12, x22, x12
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x13, [x12], #8
	ldr	d0, [x11], #8
	lsl	x13, x13, #4
	ldr	d1, [x19, x13]
	ldr	d2, [x20]
	fmul	d2, d0, d2
	fadd	d1, d1, d2
	str	d1, [x19, x13]
	ldr	d1, [x10, x13]
	ldr	d2, [x20, #8]
	fmul	d0, d0, d2
	fadd	d0, d1, d0
	str	d0, [x10, x13]
	subs	x9, x9, #1
	b.ne	LBB0_2
; %bb.3:                                ; %.loopexit.loopexit
	ldr	x11, [x23, #8]
LBB0_4:                                 ; %.loopexit
	ldp	x5, x6, [sp, #152]
	ldp	x3, x4, [sp, #136]
	ldr	x2, [sp, #128]
	ldr	x0, [sp, #112]
	ldr	x12, [x23, #16]
	subs	x9, x12, x11
	b.le	LBB0_8
; %bb.5:                                ; %.lr.ph.1
	add	x10, x19, #8
	lsl	x12, x11, #3
	add	x11, x8, x12
	add	x12, x22, x12
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x13, [x12], #8
	ldr	d0, [x11], #8
	lsl	x13, x13, #4
	ldr	d1, [x19, x13]
	ldr	d2, [x20, #16]
	fmul	d2, d0, d2
	fadd	d1, d1, d2
	str	d1, [x19, x13]
	ldr	d1, [x10, x13]
	ldr	d2, [x20, #24]
	fmul	d0, d0, d2
	fadd	d0, d1, d0
	str	d0, [x10, x13]
	subs	x9, x9, #1
	b.ne	LBB0_6
; %bb.7:                                ; %.loopexit.loopexit.1
	ldr	x12, [x23, #16]
LBB0_8:                                 ; %.loopexit.1
	ldr	x9, [x23, #24]
	subs	x9, x9, x12
	b.le	LBB0_11
; %bb.9:                                ; %.lr.ph.2
	add	x10, x19, #8
	lsl	x11, x12, #3
	add	x8, x8, x11
	add	x11, x22, x11
LBB0_10:                                ; =>This Inner Loop Header: Depth=1
	ldr	x12, [x11], #8
	ldr	d0, [x8], #8
	lsl	x12, x12, #4
	ldr	d1, [x19, x12]
	ldr	d2, [x20, #32]
	fmul	d2, d0, d2
	fadd	d1, d1, d2
	str	d1, [x19, x12]
	ldr	d1, [x10, x12]
	ldr	d2, [x20, #40]
	fmul	d0, d0, d2
	fadd	d0, d1, d0
	str	d0, [x10, x12]
	subs	x9, x9, #1
	b.ne	LBB0_10
LBB0_11:                                ; %.loopexit.2
	mov	x1, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function main
lCPI1_0:
	.quad	3                               ; 0x3
	.quad	4                               ; 0x4
lCPI1_1:
	.quad	0                               ; 0x0
	.quad	1                               ; 0x1
lCPI1_2:
	.quad	0                               ; 0x0
	.quad	2                               ; 0x2
lCPI1_3:
	.quad	2                               ; 0x2
	.quad	0                               ; 0x0
lCPI1_4:
	.quad	2                               ; 0x2
	.quad	1                               ; 0x1
lCPI1_5:
	.quad	2                               ; 0x2
	.quad	3                               ; 0x3
lCPI1_6:
	.quad	4                               ; 0x4
	.quad	3                               ; 0x3
lCPI1_7:
	.quad	1                               ; 0x1
	.quad	0                               ; 0x0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	sub	sp, sp, #528
	.cfi_def_cfa_offset 624
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	add	x22, sp, #272
	mov	w0, #128                        ; =0x80
	bl	_malloc
	mov	x19, x0
	mov	w8, #4619                       ; =0x120b
	strh	w8, [sp, #326]
Lloh0:
	adrp	x8, lCPI1_0@PAGE
Lloh1:
	ldr	q0, [x8, lCPI1_0@PAGEOFF]
	str	q0, [sp, #80]                   ; 16-byte Folded Spill
Lloh2:
	adrp	x8, lCPI1_1@PAGE
Lloh3:
	ldr	q1, [x8, lCPI1_1@PAGEOFF]
	str	q1, [sp, #64]                   ; 16-byte Folded Spill
	stp	q1, q0, [x22, #16]
	add	x8, sp, #304
	stp	x8, x8, [sp, #488]
Lloh4:
	adrp	x9, lCPI1_2@PAGE
Lloh5:
	ldr	q0, [x9, lCPI1_2@PAGEOFF]
	str	q0, [sp, #96]                   ; 16-byte Folded Spill
	add	x9, sp, #249
	stur	q0, [x9, #255]
	mov	w23, #1                         ; =0x1
	str	x23, [sp, #520]
	stp	x8, x8, [sp, #448]
	str	q0, [x22, #192]
	str	x23, [sp, #480]
	add	x8, sp, #326
	stp	x8, x8, [sp, #408]
	add	x8, sp, #169
	stur	q0, [x8, #255]
	str	x23, [sp, #440]
	add	x8, sp, #288
	stp	x8, x8, [sp, #368]
	str	q0, [x22, #112]
	str	x23, [sp, #400]
	stp	x8, x8, [sp, #328]
	add	x8, sp, #89
	stur	q0, [x8, #255]
	str	x23, [sp, #360]
	str	xzr, [sp, #8]
	str	wzr, [sp]
	add	x0, sp, #488
	add	x1, sp, #448
	add	x2, sp, #408
	add	x3, sp, #368
	add	x4, sp, #328
	mov	w5, #0                          ; =0x0
	mov	w6, #0                          ; =0x0
	mov	w7, #1                          ; =0x1
	bl	__mlir_ciface_newSparseTensor
	mov	x20, x0
	stp	xzr, xzr, [sp, #272]
	mov	x8, #4607182418800017408        ; =0x3ff0000000000000
	str	x8, [sp, #264]
	stp	x22, x22, [sp, #488]
	ldr	q0, [sp, #96]                   ; 16-byte Folded Reload
	add	x8, sp, #249
	stur	q0, [x8, #255]
	str	x23, [sp, #520]
	add	x21, sp, #264
	stp	x21, x21, [sp, #448]
	str	xzr, [sp, #464]
	add	x1, sp, #488
	add	x2, sp, #448
	bl	__mlir_ciface_lexInsertF64
Lloh6:
	adrp	x8, lCPI1_3@PAGE
Lloh7:
	ldr	q0, [x8, lCPI1_3@PAGEOFF]
	str	q0, [x22]
	mov	x8, #4613937818241073152        ; =0x4008000000000000
	str	x8, [sp, #264]
	stp	x22, x22, [sp, #488]
	ldr	q0, [sp, #96]                   ; 16-byte Folded Reload
	add	x8, sp, #249
	stur	q0, [x8, #255]
	str	x23, [sp, #520]
	stp	x21, x21, [sp, #448]
	str	xzr, [sp, #464]
	add	x1, sp, #488
	add	x2, sp, #448
	mov	x0, x20
	bl	__mlir_ciface_lexInsertF64
	dup.2d	v0, x23
	str	q0, [x22]
	mov	x8, #4611686018427387904        ; =0x4000000000000000
	str	x8, [sp, #264]
	stp	x22, x22, [sp, #488]
	ldr	q0, [sp, #96]                   ; 16-byte Folded Reload
	add	x8, sp, #249
	stur	q0, [x8, #255]
	str	x23, [sp, #520]
	stp	x21, x21, [sp, #448]
	str	xzr, [sp, #464]
	add	x1, sp, #488
	add	x2, sp, #448
	mov	x0, x20
	bl	__mlir_ciface_lexInsertF64
Lloh8:
	adrp	x8, lCPI1_4@PAGE
Lloh9:
	ldr	q0, [x8, lCPI1_4@PAGEOFF]
	str	q0, [x22]
	mov	x8, #4616189618054758400        ; =0x4010000000000000
	str	x8, [sp, #264]
	stp	x22, x22, [sp, #488]
	ldr	q0, [sp, #96]                   ; 16-byte Folded Reload
	add	x8, sp, #249
	stur	q0, [x8, #255]
	str	x23, [sp, #520]
	stp	x21, x21, [sp, #448]
	str	xzr, [sp, #464]
	add	x1, sp, #488
	add	x2, sp, #448
	mov	x0, x20
	bl	__mlir_ciface_lexInsertF64
Lloh10:
	adrp	x8, lCPI1_5@PAGE
Lloh11:
	ldr	q0, [x8, lCPI1_5@PAGEOFF]
	str	q0, [x22]
	mov	x8, #4617315517961601024        ; =0x4014000000000000
	str	x8, [sp, #264]
	stp	x22, x22, [sp, #488]
	ldr	q0, [sp, #96]                   ; 16-byte Folded Reload
	add	x8, sp, #249
	stur	q0, [x8, #255]
	str	x23, [sp, #520]
	stp	x21, x21, [sp, #448]
	str	xzr, [sp, #464]
	add	x1, sp, #488
	add	x2, sp, #448
	mov	x0, x20
	bl	__mlir_ciface_lexInsertF64
	mov	x0, x20
	bl	_endLexInsert
	mov	w8, #4105                       ; =0x1009
	strh	w8, [sp, #262]
Lloh12:
	adrp	x8, lCPI1_6@PAGE
Lloh13:
	ldr	q1, [x8, lCPI1_6@PAGEOFF]
Lloh14:
	adrp	x8, lCPI1_7@PAGE
Lloh15:
	ldr	q2, [x8, lCPI1_7@PAGEOFF]
	stp	q2, q1, [sp, #224]
	ldp	q1, q0, [sp, #80]               ; 32-byte Folded Reload
	stp	q1, q2, [sp, #192]
	add	x8, sp, #240
	stp	x8, x8, [sp, #488]
	add	x8, sp, #249
	stur	q0, [x8, #255]
	str	x23, [sp, #520]
	add	x8, sp, #192
	stp	x8, x8, [sp, #448]
	str	q0, [x22, #192]
	str	x23, [sp, #480]
	add	x8, sp, #262
	stp	x8, x8, [sp, #408]
	add	x8, sp, #169
	stur	q0, [x8, #255]
	str	x23, [sp, #440]
	add	x8, sp, #224
	stp	x8, x8, [sp, #368]
	str	q0, [x22, #112]
	str	x23, [sp, #400]
	add	x8, sp, #208
	stp	x8, x8, [sp, #328]
	add	x8, sp, #89
	stur	q0, [x8, #255]
	str	x23, [sp, #360]
	str	x20, [sp, #8]
	mov	w8, #8                          ; =0x8
	str	w8, [sp]
	add	x0, sp, #488
	add	x1, sp, #448
	add	x2, sp, #408
	add	x3, sp, #368
	add	x4, sp, #328
	mov	w5, #0                          ; =0x0
	mov	w6, #0                          ; =0x0
	mov	w7, #1                          ; =0x1
	bl	__mlir_ciface_newSparseTensor
	mov	x21, x0
	mov	w8, #2052                       ; =0x804
	strh	w8, [sp, #190]
	ldp	q0, q1, [sp, #64]               ; 32-byte Folded Reload
	stp	q0, q1, [sp, #144]
	add	x8, sp, #160
	stp	x8, x8, [sp, #488]
	ldr	q0, [sp, #96]                   ; 16-byte Folded Reload
	add	x9, sp, #249
	stur	q0, [x9, #255]
	str	x23, [sp, #520]
	stp	x8, x8, [sp, #448]
	str	q0, [x22, #192]
	str	x23, [sp, #480]
	add	x8, sp, #190
	stp	x8, x8, [sp, #408]
	add	x8, sp, #169
	stur	q0, [x8, #255]
	str	x23, [sp, #440]
	add	x8, sp, #144
	stp	x8, x8, [sp, #368]
	str	q0, [x22, #112]
	str	x23, [sp, #400]
	stp	x8, x8, [sp, #328]
	add	x8, sp, #89
	stur	q0, [x8, #255]
	str	x23, [sp, #360]
	str	xzr, [sp, #8]
	str	wzr, [sp]
	add	x0, sp, #488
	add	x1, sp, #448
	add	x2, sp, #408
	add	x3, sp, #368
	add	x4, sp, #328
	mov	w5, #0                          ; =0x0
	mov	w6, #0                          ; =0x0
	mov	w7, #1                          ; =0x1
	bl	__mlir_ciface_newSparseTensor
	mov	x20, x0
	add	x0, sp, #488
	mov	x1, x21
	mov	x2, #0                          ; =0x0
	bl	__mlir_ciface_sparsePositions0
	ldr	x22, [sp, #496]
	add	x0, sp, #488
	mov	x1, x21
	mov	x2, #0                          ; =0x0
	bl	__mlir_ciface_sparseCoordinates0
	ldr	x24, [sp, #496]
	add	x0, sp, #488
	mov	x1, x21
	mov	w2, #1                          ; =0x1
	bl	__mlir_ciface_sparseCoordinates0
	ldr	x23, [sp, #496]
	add	x0, sp, #488
	mov	x1, x21
	bl	__mlir_ciface_sparseValuesF64
	ldp	x8, x9, [x22]
	subs	x21, x9, x8
	b.le	LBB1_3
; %bb.1:                                ; %.lr.ph
	ldr	x9, [sp, #496]
	lsl	x8, x8, #3
	add	x22, x9, x8
	add	x23, x23, x8
	add	x24, x24, x8
	add	x25, sp, #128
	mov	w26, #1                         ; =0x1
	add	x27, sp, #120
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x24], #8
	ldr	x9, [x23], #8
	ldr	d0, [x22], #8
	stp	x8, x9, [sp, #128]
	str	d0, [sp, #120]
	stp	x25, x25, [sp, #488]
	ldr	q0, [sp, #96]                   ; 16-byte Folded Reload
	add	x8, sp, #249
	stur	q0, [x8, #255]
	str	x26, [sp, #520]
	stp	x27, x27, [sp, #448]
	str	xzr, [sp, #464]
	add	x1, sp, #488
	add	x2, sp, #448
	mov	x0, x20
	bl	__mlir_ciface_lexInsertF64
	subs	x21, x21, #1
	b.ne	LBB1_2
LBB1_3:                                 ; %._crit_edge
	add	x8, x19, #63
	and	x21, x8, #0xffffffffffffffc0
	mov	x0, x20
	bl	_endLexInsert
	mov	w8, #1                          ; =0x1
	str	x8, [sp, #48]
	mov	w8, #2                          ; =0x2
	stp	x8, x8, [sp, #32]
	mov	w8, #4                          ; =0x4
	stp	xzr, x8, [sp, #16]
Lloh16:
	adrp	x2, l___constant_3x2xf64@PAGE
Lloh17:
	add	x2, x2, l___constant_3x2xf64@PAGEOFF
	stp	x19, x21, [sp]
	mov	x0, x20
	bl	_matmul
	mov	w0, #1                          ; =0x1
	add	sp, sp, #528
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
	.loh AdrpLdr	Lloh14, Lloh15
	.loh AdrpAdrp	Lloh12, Lloh14
	.loh AdrpLdr	Lloh12, Lloh13
	.loh AdrpLdr	Lloh10, Lloh11
	.loh AdrpLdr	Lloh8, Lloh9
	.loh AdrpLdr	Lloh6, Lloh7
	.loh AdrpLdr	Lloh4, Lloh5
	.loh AdrpLdr	Lloh2, Lloh3
	.loh AdrpAdrp	Lloh0, Lloh2
	.loh AdrpLdr	Lloh0, Lloh1
	.loh AdrpAdd	Lloh16, Lloh17
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.p2align	6, 0x0                          ; @__constant_3x2xf64
l___constant_3x2xf64:
	.quad	0x3ff0000000000000              ; double 1
	.quad	0x4010000000000000              ; double 4
	.space	16
	.quad	0x0000000000000000              ; double 0
	.quad	0x4018000000000000              ; double 6

.subsections_via_symbols
