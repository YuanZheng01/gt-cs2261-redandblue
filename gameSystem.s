	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"gameSystem.c"
	.text
	.align	2
	.global	initInputLine
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initInputLine, %function
initInputLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #16
	mov	lr, #128
	mov	ip, #0
	mov	r0, #8
	mov	r1, #1
	ldr	r3, .L4
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #20]
	str	r1, [r3, #24]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	line
	.size	initInputLine, .-initInputLine
	.align	2
	.global	hitRed
	.syntax unified
	.arm
	.fpu softvfp
	.type	hitRed, %function
hitRed:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L16
	ldr	r2, .L16+4
	ldr	r1, [r4]
	ldr	r3, [r2]
	ldr	ip, [r2, #20]
	ldr	r0, [r1, #24]
	ldr	r2, [r1, #4]
	add	r3, r3, ip
	add	r2, r2, r0
	sub	r0, r3, #49
	cmp	r0, r2
	bgt	.L6
	add	r0, r3, #29
	cmp	r2, r0
	bgt	.L6
	ldr	r0, [r1, #28]
	cmp	r0, #0
	beq	.L6
	sub	r0, r3, #9
	ldr	ip, .L16+8
	cmp	r2, r0
	ldr	r0, [ip]
	blt	.L8
	add	lr, r3, #4
	cmp	r2, lr
	ble	.L15
.L8:
	sub	lr, r3, #24
	cmp	r2, lr
	blt	.L9
	add	r3, r3, #14
	cmp	r2, r3
	bgt	.L9
	mov	lr, #0
	mov	r7, #4
	mov	r6, #32
	mov	r5, #8
	ldr	r3, [r1]
	ldr	r2, .L16+12
	add	r3, r3, #1
	smull	r9, r8, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r8, asr #1
	add	r2, r2, r2, lsl #3
	add	r0, r0, #80
	sub	r3, r3, r2
	ldr	r2, .L16+16
	str	r0, [ip]
	add	r3, r3, r3, lsl #2
	ldr	r0, .L16+20
	add	r3, r2, r3, lsl #3
.L14:
	str	r3, [r4]
	ldr	r3, [r0]
	add	r3, r3, #1
	str	r3, [r0]
	ldr	r2, .L16+24
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	lr, [r1, #28]
	str	lr, [r1, #8]
	str	lr, [r1, #4]
	str	lr, [r1, #36]
	str	r7, [r1, #16]
	str	r6, [r1, #12]
	str	r5, [r1, #24]
.L6:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L9:
	mov	r5, #0
	ldr	lr, .L16+28
	ldr	r3, [lr]
	ldr	r2, .L16+32
	add	r0, r0, #10
	str	r0, [ip]
	add	r3, r3, #1
	ldr	ip, .L16+24
	ldr	r1, [r2]
	str	r3, [lr]
	mov	r2, r5
	ldr	r3, .L16+36
	ldr	r0, .L16+40
	str	r5, [ip]
	mov	lr, pc
	bx	r3
	mov	lr, #4
	mov	ip, #32
	mov	r0, #8
	ldr	r1, [r4]
	ldr	r3, [r1]
	ldr	r2, .L16+12
	add	r3, r3, #1
	smull	r7, r6, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r6, asr #1
	add	r2, r2, r2, lsl #3
	sub	r3, r3, r2
	ldr	r2, .L16+16
	add	r3, r3, r3, lsl #2
	add	r3, r2, r3, lsl #3
	str	r5, [r1, #28]
	str	r5, [r1, #8]
	str	r5, [r1, #4]
	str	r5, [r1, #36]
	str	lr, [r1, #16]
	str	ip, [r1, #12]
	str	r0, [r1, #24]
	str	r3, [r4]
	b	.L6
.L15:
	ldr	r3, [r1]
	ldr	r2, .L16+12
	add	r3, r3, #1
	smull	r9, r8, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r8, asr #1
	add	r2, r2, r2, lsl #3
	sub	r3, r3, r2
	ldr	r2, .L16+16
	add	r0, r0, #100
	add	r3, r3, r3, lsl #2
	str	r0, [ip]
	mov	lr, #0
	mov	r7, #4
	mov	r6, #32
	mov	r5, #8
	ldr	r0, .L16+44
	add	r3, r2, r3, lsl #3
	b	.L14
.L17:
	.align	2
.L16:
	.word	red
	.word	line
	.word	score
	.word	954437177
	.word	reds
	.word	greatCount
	.word	combo
	.word	badCount
	.word	hitsound_length
	.word	playSoundB
	.word	hitsound_data
	.word	perfectCount
	.size	hitRed, .-hitRed
	.align	2
	.global	hitBlue
	.syntax unified
	.arm
	.fpu softvfp
	.type	hitBlue, %function
hitBlue:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L28
	ldr	r2, .L28+4
	ldr	r1, [r4]
	ldr	r3, [r2]
	ldr	ip, [r2, #20]
	ldr	r0, [r1, #24]
	ldr	r2, [r1, #4]
	add	r3, r3, ip
	add	r2, r2, r0
	sub	r0, r3, #59
	cmp	r0, r2
	bgt	.L18
	add	r0, r3, #59
	cmp	r2, r0
	bgt	.L18
	ldr	r0, [r1, #28]
	cmp	r0, #0
	beq	.L18
	sub	r0, r3, #9
	ldr	ip, .L28+8
	cmp	r2, r0
	ldr	r0, [ip]
	blt	.L20
	add	lr, r3, #4
	cmp	r2, lr
	ble	.L27
.L20:
	sub	lr, r3, #24
	cmp	r2, lr
	blt	.L21
	add	r3, r3, #14
	cmp	r2, r3
	bgt	.L21
	mov	lr, #0
	mov	r7, #4
	mov	r6, #32
	mov	r5, #8
	ldr	r3, [r1]
	ldr	r2, .L28+12
	add	r3, r3, #1
	smull	r9, r8, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r8, asr #1
	add	r2, r2, r2, lsl #3
	add	r0, r0, #80
	sub	r3, r3, r2
	ldr	r2, .L28+16
	str	r0, [ip]
	add	r3, r3, r3, lsl #2
	ldr	r0, .L28+20
	add	r3, r2, r3, lsl #3
.L26:
	str	r3, [r4]
	ldr	r3, [r0]
	add	r3, r3, #1
	str	r3, [r0]
	ldr	r2, .L28+24
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	lr, [r1, #28]
	str	lr, [r1, #8]
	str	lr, [r1, #4]
	str	lr, [r1, #36]
	str	r7, [r1, #16]
	str	r6, [r1, #12]
	str	r5, [r1, #24]
.L18:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L21:
	mov	r5, #0
	ldr	lr, .L28+28
	ldr	r3, [lr]
	ldr	r2, .L28+32
	add	r0, r0, #10
	str	r0, [ip]
	add	r3, r3, #1
	ldr	ip, .L28+24
	ldr	r1, [r2]
	str	r3, [lr]
	mov	r2, r5
	ldr	r3, .L28+36
	ldr	r0, .L28+40
	str	r5, [ip]
	mov	lr, pc
	bx	r3
	mov	lr, #4
	mov	ip, #32
	mov	r0, #8
	ldr	r1, [r4]
	ldr	r3, [r1]
	ldr	r2, .L28+12
	add	r3, r3, #1
	smull	r7, r6, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r6, asr #1
	add	r2, r2, r2, lsl #3
	sub	r3, r3, r2
	ldr	r2, .L28+16
	add	r3, r3, r3, lsl #2
	add	r3, r2, r3, lsl #3
	str	r5, [r1, #28]
	str	r5, [r1, #8]
	str	r5, [r1, #4]
	str	r5, [r1, #36]
	str	lr, [r1, #16]
	str	ip, [r1, #12]
	str	r0, [r1, #24]
	str	r3, [r4]
	b	.L18
.L27:
	ldr	r3, [r1]
	ldr	r2, .L28+12
	add	r3, r3, #1
	smull	r9, r8, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r8, asr #1
	add	r2, r2, r2, lsl #3
	sub	r3, r3, r2
	ldr	r2, .L28+16
	add	r0, r0, #100
	add	r3, r3, r3, lsl #2
	str	r0, [ip]
	mov	lr, #0
	mov	r7, #4
	mov	r6, #32
	mov	r5, #8
	ldr	r0, .L28+44
	add	r3, r2, r3, lsl #3
	b	.L26
.L29:
	.align	2
.L28:
	.word	blue
	.word	line
	.word	score
	.word	954437177
	.word	blues
	.word	greatCount
	.word	combo
	.word	badCount
	.word	hitsound_length
	.word	playSoundB
	.word	hitsound_data
	.word	perfectCount
	.size	hitBlue, .-hitBlue
	.align	2
	.global	updateInputLine
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateInputLine, %function
updateInputLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L72
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L31
	ldr	r2, .L72+4
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L31
	bl	hitRed
	ldrh	r3, [r4]
.L33:
	tst	r3, #32
	beq	.L34
	ldr	r2, .L72+4
	ldrh	r2, [r2]
	tst	r2, #32
	bne	.L34
.L35:
	pop	{r4, lr}
	b	hitBlue
.L31:
	tst	r3, #2
	beq	.L33
	ldr	r2, .L72+4
	ldrh	r2, [r2]
	tst	r2, #2
	bne	.L33
	bl	hitRed
	ldrh	r3, [r4]
	b	.L33
.L34:
	tst	r3, #16
	beq	.L36
	ldr	r2, .L72+4
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L35
.L36:
	tst	r3, #64
	bne	.L71
.L37:
	tst	r3, #128
	beq	.L30
	ldr	r3, .L72+4
	ldrh	r3, [r3]
	tst	r3, #128
	beq	.L35
.L30:
	pop	{r4, lr}
	bx	lr
.L71:
	ldr	r2, .L72+4
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L37
	pop	{r4, lr}
	b	hitBlue
.L73:
	.align	2
.L72:
	.word	oldButtons
	.word	buttons
	.size	updateInputLine, .-updateInputLine
	.align	2
	.global	recycleNote
	.syntax unified
	.arm
	.fpu softvfp
	.type	recycleNote, %function
recycleNote:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	mov	ip, #4
	mov	r1, #32
	mov	r2, #8
	str	ip, [r0, #16]
	str	r1, [r0, #12]
	str	r2, [r0, #24]
	str	r3, [r0, #28]
	str	r3, [r0, #8]
	str	r3, [r0, #4]
	str	r3, [r0, #36]
	bx	lr
	.size	recycleNote, .-recycleNote
	.align	2
	.global	initNotes
	.syntax unified
	.arm
	.fpu softvfp
	.type	initNotes, %function
initNotes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	push	{r4, r5, lr}
	mov	r1, r0
	mov	r5, #4
	mov	r4, #32
	mov	lr, #8
	ldr	r3, .L79
	ldr	r2, .L79+4
	ldr	ip, [r3]
	ldr	r3, .L79+8
.L76:
	str	r0, [r2]
	str	r0, [r3]
	add	r0, r0, #1
	cmp	r0, #9
	str	r1, [r2, #28]
	str	r1, [r2, #8]
	str	r1, [r2, #4]
	str	r5, [r2, #16]
	str	r4, [r2, #12]
	str	lr, [r2, #24]
	str	ip, [r2, #32]
	str	r1, [r2, #36]
	str	r1, [r3, #28]
	str	r1, [r3, #8]
	str	r1, [r3, #4]
	str	r5, [r3, #16]
	str	r4, [r3, #12]
	str	lr, [r3, #24]
	str	ip, [r3, #32]
	str	r1, [r3, #36]
	add	r2, r2, #40
	add	r3, r3, #40
	bne	.L76
	pop	{r4, r5, lr}
	bx	lr
.L80:
	.align	2
.L79:
	.word	.LANCHOR0
	.word	reds
	.word	blues
	.size	initNotes, .-initNotes
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, lr}
	mov	r3, #16
	mov	ip, #8
	mov	r0, #1
	mov	r4, #128
	ldr	r1, .L83
	str	r2, [r1]
	ldr	r1, .L83+4
	str	r2, [r1]
	ldr	r1, .L83+8
	str	r2, [r1]
	ldr	r1, .L83+12
	str	r2, [r1]
	ldr	r1, .L83+16
	str	r2, [r1]
	ldr	r1, .L83+20
	str	r2, [r1]
	ldr	r1, .L83+24
	str	r2, [r1]
	ldr	r1, .L83+28
	str	r2, [r1]
	ldr	r1, .L83+32
	str	r2, [r1]
	ldr	r1, .L83+36
	str	r2, [r1, #4]
	str	ip, [r1, #20]
	str	r0, [r1, #24]
	str	r4, [r1]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	bl	initNotes
	ldr	r3, .L83+40
	ldr	r2, .L83+44
	ldr	ip, [r3, #4]
	ldr	r1, [r3, #540]
	ldr	r3, .L83+48
	str	ip, [r2]
	ldr	r0, .L83+52
	ldr	ip, .L83+56
	ldr	r2, .L83+60
	str	r1, [r3]
	ldr	r1, .L83+64
	ldr	r3, .L83+68
	str	ip, [r0]
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r2, #117440512
	ldr	r4, .L83+72
	mov	r0, #3
	ldr	r1, .L83+76
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L84:
	.align	2
.L83:
	.word	score
	.word	frame
	.word	combo
	.word	perfectCount
	.word	greatCount
	.word	goodCount
	.word	badCount
	.word	gameBcount
	.word	gameRcount
	.word	line
	.word	.LANCHOR0
	.word	gameR
	.word	gameB
	.word	red
	.word	reds
	.word	blue
	.word	blues
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.size	initGame, .-initGame
	.align	2
	.global	generateRed
	.syntax unified
	.arm
	.fpu softvfp
	.type	generateRed, %function
generateRed:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L92
	ldr	r3, [r3]
	push	{r4, lr}
	ldr	ip, .L92+4
	ldr	r4, [r3]
	ldr	lr, .L92+8
.L88:
	add	r1, r2, r4
	smull	r3, r0, lr, r1
	asr	r3, r1, #31
	rsb	r3, r3, r0, asr #1
	add	r3, r3, r3, lsl #3
	sub	r3, r1, r3
	add	r3, r3, r3, lsl #2
	add	r3, ip, r3, lsl #3
	ldr	r1, [r3, #28]
	cmp	r1, #0
	beq	.L91
	add	r2, r2, #1
	cmp	r2, #9
	bne	.L88
	pop	{r4, lr}
	bx	lr
.L91:
	mov	r0, #1
	add	r2, r2, r2, lsl #2
	add	r2, ip, r2, lsl #3
	ldr	r2, [r2, #12]
	add	r2, r2, r2, lsr #31
	asr	r2, r2, r0
	rsb	r2, r2, #80
	stmib	r3, {r1, r2}
	str	r0, [r3, #28]
	pop	{r4, lr}
	bx	lr
.L93:
	.align	2
.L92:
	.word	red
	.word	reds
	.word	954437177
	.size	generateRed, .-generateRed
	.align	2
	.global	generateBlue
	.syntax unified
	.arm
	.fpu softvfp
	.type	generateBlue, %function
generateBlue:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L101
	ldr	r3, [r3]
	push	{r4, lr}
	ldr	ip, .L101+4
	ldr	r4, [r3]
	ldr	lr, .L101+8
.L97:
	add	r1, r2, r4
	smull	r3, r0, lr, r1
	asr	r3, r1, #31
	rsb	r3, r3, r0, asr #1
	add	r3, r3, r3, lsl #3
	sub	r3, r1, r3
	add	r3, r3, r3, lsl #2
	add	r3, ip, r3, lsl #3
	ldr	r1, [r3, #28]
	cmp	r1, #0
	beq	.L100
	add	r2, r2, #1
	cmp	r2, #9
	bne	.L97
	pop	{r4, lr}
	bx	lr
.L100:
	mov	r0, #1
	add	r2, r2, r2, lsl #2
	add	r2, ip, r2, lsl #3
	ldr	r2, [r2, #12]
	add	r2, r2, r2, lsr #31
	asr	r2, r2, r0
	rsb	r2, r2, #160
	stmib	r3, {r1, r2}
	str	r0, [r3, #28]
	pop	{r4, lr}
	bx	lr
.L102:
	.align	2
.L101:
	.word	blue
	.word	blues
	.word	954437177
	.size	generateBlue, .-generateBlue
	.align	2
	.global	updateNotes
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateNotes, %function
updateNotes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L127
	ldr	r4, .L127+4
	ldr	r2, [r6, #20]
	ldr	r3, [r6]
	ldr	r1, [r4]
	add	r3, r3, r2
	ldr	r2, [r1, #4]
	add	r3, r3, #29
	cmp	r3, r2
	blt	.L123
.L104:
	ldr	r4, .L127+8
	ldr	r1, [r4]
	ldr	r2, [r1, #4]
	cmp	r2, r3
	bgt	.L124
.L105:
	ldr	r4, .L127+12
	ldr	r5, .L127+16
	ldr	r7, .L127+20
	ldr	r10, .L127+24
	ldr	r9, .L127+28
	ldr	r8, .L127+32
	add	fp, r4, #360
	b	.L112
.L107:
	ldr	r3, [r5, #28]
	cmp	r3, #0
	ldrne	r3, [r5, #4]
	ldrne	r2, [r5, #32]
	addne	r3, r3, r2
	strne	r3, [r5, #4]
	ldr	r3, [r4, #28]
	cmp	r3, #0
	ldrne	r3, [r4, #4]
	ldrne	r2, [r4, #32]
	addne	r3, r3, r2
	strne	r3, [r4, #4]
	add	r4, r4, #40
	cmp	fp, r4
	add	r5, r5, #40
	beq	.L125
.L112:
	ldr	r3, [r7]
	cmp	r3, #9
	bne	.L107
	ldr	r1, [r6]
	ldr	r3, [r6, #20]
	ldr	r2, [r5, #4]
	ldr	r0, [r5, #24]
	add	r3, r1, r3
	sub	r1, r3, #4
	add	r2, r2, r0
	cmp	r1, r2
	bgt	.L108
	add	r0, r3, #4
	cmp	r2, r0
	ble	.L126
.L108:
	ldr	r2, [r4, #4]
	ldr	r0, [r4, #24]
	add	r2, r2, r0
	cmp	r2, r1
	blt	.L107
	add	r3, r3, #4
	cmp	r2, r3
	bgt	.L107
	bl	hitBlue
	mov	r2, #0
	mov	r0, r9
	ldr	r1, [r10]
	mov	lr, pc
	bx	r8
	mov	r3, #83886080
	ldrh	r2, [r3, #10]
	strh	r2, [r3, #6]	@ movhi
	b	.L107
.L125:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L126:
	bl	hitRed
	mov	r2, #0
	mov	r0, r9
	ldr	r1, [r10]
	mov	lr, pc
	bx	r8
	mov	r3, #83886080
	ldrh	r2, [r3, #8]
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7]
	cmp	r3, #9
	bne	.L107
	ldr	r2, [r6]
	ldr	r3, [r6, #20]
	add	r3, r2, r3
	sub	r1, r3, #4
	b	.L108
.L123:
	mov	r5, #0
	mov	ip, #32
	mov	lr, #4
	mov	r0, #8
	ldr	r3, .L127+24
	str	ip, [r1, #12]
	str	r0, [r1, #24]
	mov	r2, r5
	str	r5, [r1, #28]
	str	r5, [r1, #8]
	str	r5, [r1, #4]
	str	r5, [r1, #36]
	str	lr, [r1, #16]
	ldr	r0, .L127+28
	ldr	r1, [r3]
	ldr	r3, .L127+32
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	ldrh	r2, [r3, #8]
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r4]
	ldr	r3, [r3]
	ldr	r2, .L127+36
	add	r3, r3, #1
	smull	r0, r1, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #3
	sub	r3, r3, r2
	add	r1, r3, r3, lsl #2
	ldr	r2, .L127+16
	ldr	r3, [r6]
	ldr	r0, [r6, #20]
	ldr	ip, .L127+40
	add	r1, r2, r1, lsl #3
	add	r3, r3, r0
	str	r5, [ip]
	str	r1, [r4]
	add	r3, r3, #29
	b	.L104
.L124:
	mov	r5, #0
	mov	ip, #32
	mov	lr, #4
	mov	r0, #8
	ldr	r3, .L127+24
	str	ip, [r1, #12]
	str	r0, [r1, #24]
	mov	r2, r5
	str	r5, [r1, #28]
	str	r5, [r1, #8]
	str	r5, [r1, #4]
	str	r5, [r1, #36]
	str	lr, [r1, #16]
	ldr	r0, .L127+28
	ldr	r1, [r3]
	ldr	r3, .L127+32
	mov	lr, pc
	bx	r3
	mov	r0, #83886080
	ldr	r3, [r4]
	ldr	r3, [r3]
	ldr	r2, .L127+36
	add	r3, r3, #1
	smull	ip, r1, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #3
	sub	r3, r3, r2
	ldr	r2, .L127+12
	add	r3, r3, r3, lsl #2
	add	r3, r2, r3, lsl #3
	str	r3, [r4]
	ldrh	r2, [r0, #10]
	ldr	r3, .L127+40
	strh	r2, [r0, #2]	@ movhi
	str	r5, [r3]
	b	.L105
.L128:
	.align	2
.L127:
	.word	line
	.word	red
	.word	blue
	.word	blues
	.word	reds
	.word	cheater
	.word	hitsound_length
	.word	hitsound_data
	.word	playSoundB
	.word	954437177
	.word	combo
	.size	updateNotes, .-updateNotes
	.align	2
	.global	drawNotes
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawNotes, %function
drawNotes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, #512
	ldr	r6, .L137
	ldr	r3, .L137+4
	ldr	r5, [r6]
	ldr	r2, .L137+8
	ldr	r1, .L137+12
	ldr	lr, .L137+16
	add	r3, r3, r5, lsl #3
	add	ip, r2, #360
.L134:
	ldr	r0, [r2, #28]
	cmp	r0, #0
	strheq	r4, [r3]	@ movhi
	beq	.L131
	ldr	r10, [r2, #36]
	add	r7, r10, #1
	smull	r8, r0, lr, r7
	ldr	r9, [r2, #8]
	ldr	r8, [r2, #4]
	sub	r0, r0, r7, asr #31
	add	r10, r10, #32
	add	r0, r0, r0, lsl #1
	lsl	r10, r10, #2
	sub	r0, r7, r0
	orr	r8, r8, #16384
	orr	r9, r9, #16384
	strh	r10, [r3, #4]	@ movhi
	str	r0, [r2, #36]
	strh	r8, [r3]	@ movhi
	strh	r9, [r3, #2]	@ movhi
.L131:
	ldr	r0, [r1, #28]
	cmp	r0, #0
	strheq	r4, [r3, #8]	@ movhi
	beq	.L133
	ldr	r10, [r1, #36]
	add	r7, r10, #1
	smull	r8, r0, lr, r7
	ldr	r9, [r1, #8]
	ldr	r8, [r1, #4]
	sub	r0, r0, r7, asr #31
	add	r10, r10, #40
	add	r0, r0, r0, lsl #1
	lsl	r10, r10, #2
	sub	r0, r7, r0
	orr	r8, r8, #16384
	orr	r9, r9, #16384
	strh	r10, [r3, #12]	@ movhi
	str	r0, [r1, #36]
	strh	r8, [r3, #8]	@ movhi
	strh	r9, [r3, #10]	@ movhi
.L133:
	add	r2, r2, #40
	cmp	r2, ip
	add	r1, r1, #40
	add	r3, r3, #16
	bne	.L134
	add	r5, r5, #18
	str	r5, [r6]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L138:
	.align	2
.L137:
	.word	shadowCount
	.word	shadowOAM
	.word	reds
	.word	blues
	.word	1431655766
	.size	drawNotes, .-drawNotes
	.global	__aeabi_idiv
	.align	2
	.global	noteGenerator
	.syntax unified
	.arm
	.fpu softvfp
	.type	noteGenerator, %function
noteGenerator:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L145
	ldr	r6, .L145+4
	ldr	r1, [r4]
	ldr	r0, [r6]
	ldr	r5, .L145+8
	mov	lr, pc
	bx	r5
	ldr	r8, .L145+12
	ldr	r3, [r8]
	ldr	r7, .L145+16
	add	r3, r4, r3, lsl #2
	ldr	r3, [r3, #540]
	ldr	r2, [r7]
	sub	r3, r3, r0
	cmp	r3, r2
	beq	.L143
.L140:
	ldr	r5, .L145+20
	ldr	r3, [r5]
	add	r4, r4, r3, lsl #2
	ldr	r3, [r4, #4]
	sub	r0, r3, r0
	cmp	r0, r2
	beq	.L144
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L143:
	bl	generateBlue
	ldr	r3, [r8]
	add	r3, r3, #1
	ldr	r0, [r6]
	str	r3, [r8]
	ldr	r1, [r4]
	mov	lr, pc
	bx	r5
	ldr	r2, [r7]
	b	.L140
.L144:
	bl	generateRed
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L146:
	.align	2
.L145:
	.word	.LANCHOR0
	.word	line
	.word	__aeabi_idiv
	.word	gameBcount
	.word	frame
	.word	gameRcount
	.size	noteGenerator, .-noteGenerator
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	noteGenerator
	bl	updateInputLine
	bl	updateNotes
	ldr	r2, .L149
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L150:
	.align	2
.L149:
	.word	frame
	.size	updateGame, .-updateGame
	.align	2
	.global	drawScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L159
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r9, [r3]
	cmp	r9, #0
	beq	.L151
	mov	ip, #0
	ldr	r8, .L159+4
	sub	r0, r0, #16
	ldr	r5, [r8]
	ldr	r2, .L159+8
	lsl	r3, r0, #16
	ldr	r7, .L159+12
	ldr	r6, .L159+16
	lsr	r3, r3, #16
	and	r4, r1, #255
	add	r0, r2, r5, lsl #3
.L153:
	smull	r1, r2, r6, r9
	add	ip, ip, #1
	asr	r1, r9, #31
	rsb	r1, r1, r2, asr #2
	cmp	ip, #7
	movgt	lr, #0
	movle	lr, #1
	cmp	r1, #0
	moveq	lr, #0
	add	r2, r1, r1, lsl #2
	sub	r2, r9, r2, lsl #1
	add	r2, r2, #32
	and	r9, r3, r7
	sub	r3, r3, #16
	lsl	r2, r2, #1
	cmp	lr, #0
	lsl	r3, r3, #16
	orr	lr, r9, #16384
	strh	r2, [r0, #4]	@ movhi
	strh	r4, [r0]	@ movhi
	strh	lr, [r0, #2]	@ movhi
	mov	r9, r1
	lsr	r3, r3, #16
	add	r0, r0, #8
	add	r2, ip, r5
	bne	.L153
	str	r2, [r8]
.L151:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L160:
	.align	2
.L159:
	.word	score
	.word	shadowCount
	.word	shadowOAM
	.word	511
	.word	1717986919
	.size	drawScore, .-drawScore
	.align	2
	.global	drawCombo
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCombo, %function
drawCombo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L172
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r9, [r3]
	cmp	r9, #0
	ble	.L161
	mov	r3, r9
	mov	r2, #0
	ldr	r0, .L172+4
.L163:
	mov	lr, r2
	umull	r2, r1, r0, r3
	cmp	r3, #9
	add	r2, lr, #1
	lsr	r3, r1, #3
	bgt	.L163
	cmp	lr, #3
	movgt	r3, #120
	lslle	r3, r2, #19
	addle	r3, r3, #6815744
	lsrle	r3, r3, #16
.L167:
	mov	ip, #0
	mov	r7, #100
	ldr	r8, .L172+8
	ldr	r0, .L172+12
	ldr	r4, [r8]
	ldr	r6, .L172+16
	ldr	r5, .L172+4
	add	r0, r0, r4, lsl #3
	add	r4, r4, #1
.L165:
	umull	r10, r1, r5, r9
	lsr	r1, r1, #3
	cmp	r1, #0
	cmpne	lr, ip
	add	r2, r1, r1, lsl #2
	sub	r2, r9, r2, lsl #1
	and	r10, r3, r6
	add	r2, r2, #32
	sub	r3, r3, #16
	lsl	r2, r2, #1
	orr	r10, r10, #16384
	lsl	r3, r3, #16
	strh	r2, [r0, #4]	@ movhi
	strh	r7, [r0]	@ movhi
	strh	r10, [r0, #2]	@ movhi
	add	r2, r4, ip
	mov	r9, r1
	lsr	r3, r3, #16
	add	r0, r0, #8
	add	ip, ip, #1
	bgt	.L165
	str	r2, [r8]
.L161:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L173:
	.align	2
.L172:
	.word	combo
	.word	-858993459
	.word	shadowCount
	.word	shadowOAM
	.word	511
	.size	drawCombo, .-drawCombo
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L176
	mov	lr, pc
	bx	r3
	bl	drawCombo
	bl	drawNotes
	mov	r0, #240
	mov	r1, #0
	bl	drawScore
	mov	r1, #0
	ldr	r2, .L176+4
	ldr	r3, .L176+8
	str	r1, [r2]
	ldr	r4, .L176+12
	mov	lr, pc
	bx	r3
	mov	r3, #128
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L176+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L177:
	.align	2
.L176:
	.word	hideSprites
	.word	shadowCount
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	drawGame, .-drawGame
	.align	2
	.global	drawFrame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFrame, %function
drawFrame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L186
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r9, [r3]
	cmp	r9, #0
	beq	.L178
	mov	r0, #224
	mov	ip, #0
	mov	r7, #16
	ldr	r8, .L186+4
	ldr	r1, .L186+8
	ldr	r4, [r8]
	ldr	r6, .L186+12
	add	r1, r1, r4, lsl #3
	add	r4, r4, #1
.L180:
	smull	r2, r3, r6, r9
	add	r5, r4, ip
	asr	r2, r9, #31
	add	ip, ip, #1
	rsb	r2, r2, r3, asr #2
	cmp	ip, #5
	movgt	lr, #0
	movle	lr, #1
	cmp	r2, #0
	moveq	lr, #0
	add	r3, r2, r2, lsl #2
	sub	r3, r9, r3, lsl #1
	add	r3, r3, #32
	sub	r9, r0, #16
	lsl	r3, r3, #1
	cmp	lr, #0
	orr	lr, r0, #16384
	lsl	r0, r9, #16
	strh	r7, [r1]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	strh	lr, [r1, #2]	@ movhi
	mov	r9, r2
	lsr	r0, r0, #16
	add	r1, r1, #8
	bne	.L180
	str	r5, [r8]
.L178:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L187:
	.align	2
.L186:
	.word	frame
	.word	shadowCount
	.word	shadowOAM
	.word	1717986919
	.size	drawFrame, .-drawFrame
	.comm	etherstrikeB,4,4
	.comm	etherstrikeR,4,4
	.comm	worldexecutemeB,4,4
	.comm	worldexecutemeR,4,4
	.global	redandblueB
	.global	redandblueR
	.comm	blue,4,4
	.comm	red,4,4
	.comm	gameBcount,4,4
	.comm	gameRcount,4,4
	.comm	gameB,4,4
	.comm	gameR,4,4
	.comm	blues,360,4
	.comm	reds,360,4
	.comm	line,28,4
	.comm	badCount,4,4
	.comm	goodCount,4,4
	.comm	greatCount,4,4
	.comm	perfectCount,4,4
	.comm	combo,4,4
	.comm	cheater,4,4
	.global	velocity
	.comm	score,4,4
	.comm	frame,4,4
	.comm	shadowOAM,1024,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	velocity, %object
	.size	velocity, 4
velocity:
	.word	3
	.type	redandblueR, %object
	.size	redandblueR, 536
redandblueR:
	.word	111
	.word	313
	.word	491
	.word	538
	.word	684
	.word	730
	.word	778
	.word	860
	.word	916
	.word	965
	.word	1016
	.word	1065
	.word	1139
	.word	1183
	.word	1232
	.word	1255
	.word	1302
	.word	1349
	.word	1397
	.word	1447
	.word	1472
	.word	1519
	.word	1660
	.word	1682
	.word	1733
	.word	1828
	.word	1878
	.word	1921
	.word	2025
	.word	2141
	.word	2158
	.word	2204
	.word	2294
	.word	3159
	.word	3189
	.word	3211
	.word	3236
	.word	3260
	.word	3286
	.word	3307
	.word	3332
	.word	3355
	.word	3377
	.word	3404
	.word	3427
	.word	3452
	.word	3472
	.word	3498
	.word	3519
	.word	3547
	.word	3595
	.word	3644
	.word	3692
	.word	3763
	.word	3808
	.word	3855
	.word	3909
	.word	3931
	.word	4027
	.word	4120
	.word	4217
	.word	4314
	.word	4334
	.word	4456
	.word	4476
	.word	4505
	.word	4550
	.word	4596
	.word	4690
	.word	4715
	.word	4739
	.word	4765
	.word	4790
	.word	4825
	.word	4848
	.word	4873
	.word	4923
	.word	4944
	.word	4969
	.word	5002
	.word	5027
	.word	5050
	.word	5074
	.word	5097
	.word	5122
	.word	5144
	.word	5170
	.word	5192
	.word	5217
	.word	5240
	.word	5264
	.word	5301
	.word	5322
	.word	5350
	.word	5398
	.word	5422
	.word	5445
	.word	5457
	.word	5486
	.word	5505
	.word	5555
	.word	5673
	.word	5698
	.word	5745
	.word	5863
	.word	5884
	.word	5937
	.word	5958
	.word	5982
	.word	6029
	.word	6056
	.word	6082
	.word	6127
	.word	6154
	.word	6176
	.word	6217
	.word	6245
	.word	6318
	.word	6363
	.word	6412
	.word	6436
	.word	6458
	.word	6508
	.word	6604
	.word	6628
	.word	6651
	.word	6699
	.word	6724
	.word	6741
	.word	6788
	.word	6819
	.word	6838
	.word	6894
	.word	0
	.type	redandblueB, %object
	.size	redandblueB, 532
redandblueB:
	.word	111
	.word	313
	.word	587
	.word	635
	.word	706
	.word	755
	.word	802
	.word	860
	.word	943
	.word	991
	.word	1041
	.word	1065
	.word	1113
	.word	1161
	.word	1207
	.word	1255
	.word	1280
	.word	1327
	.word	1372
	.word	1424
	.word	1447
	.word	1493
	.word	1660
	.word	1710
	.word	1754
	.word	1828
	.word	1853
	.word	1900
	.word	2025
	.word	2150
	.word	2163
	.word	2260
	.word	2344
	.word	2400
	.word	2448
	.word	2498
	.word	2543
	.word	2590
	.word	2638
	.word	2687
	.word	2734
	.word	2782
	.word	2831
	.word	2879
	.word	2921
	.word	2971
	.word	3017
	.word	3070
	.word	3119
	.word	3572
	.word	3617
	.word	3666
	.word	3712
	.word	3738
	.word	3786
	.word	3834
	.word	3879
	.word	3931
	.word	4027
	.word	4120
	.word	4217
	.word	4359
	.word	4385
	.word	4404
	.word	4430
	.word	4525
	.word	4574
	.word	4596
	.word	4690
	.word	4727
	.word	4752
	.word	4778
	.word	4815
	.word	4835
	.word	4862
	.word	4884
	.word	4912
	.word	4933
	.word	4954
	.word	4980
	.word	5015
	.word	5039
	.word	5062
	.word	5110
	.word	5133
	.word	5157
	.word	5205
	.word	5229
	.word	5252
	.word	5287
	.word	5315
	.word	5338
	.word	5362
	.word	5385
	.word	5410
	.word	5433
	.word	5457
	.word	5577
	.word	5601
	.word	5647
	.word	5765
	.word	5790
	.word	5834
	.word	5863
	.word	5884
	.word	5937
	.word	5958
	.word	5982
	.word	6029
	.word	6056
	.word	6082
	.word	6127
	.word	6154
	.word	6176
	.word	6217
	.word	6267
	.word	6318
	.word	6338
	.word	6412
	.word	6508
	.word	6531
	.word	6557
	.word	6604
	.word	6628
	.word	6651
	.word	6699
	.word	6724
	.word	6741
	.word	6788
	.word	6819
	.word	6838
	.word	6894
	.word	0
	.ident	"GCC: (devkitARM release 53) 9.1.0"
