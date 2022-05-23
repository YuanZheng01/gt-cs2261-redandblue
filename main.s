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
	.file	"main.c"
	.text
	.align	2
	.global	goToSplash
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToSplash, %function
goToSplash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	ldr	r4, .L4+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r3, #2272
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+16
	mov	r0, #3
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	waitForVBlank
	.word	DMANow
	.word	splashPal
	.word	splashTiles
	.word	100720640
	.word	splashMap
	.word	state
	.size	goToSplash, .-goToSplash
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r5, .L8
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L8+4
	mov	lr, pc
	bx	r5
	mov	r4, #67108864
	mov	r3, #4864
	mov	r1, #7168
	ldr	r2, .L8+8
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #8]	@ movhi
	mov	r3, #256
	strh	r1, [r4, #10]	@ movhi
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L8+20
	ldr	r1, .L8+24
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	ldr	r3, .L8+28
	mov	lr, pc
	bx	r3
	mov	lr, #0
	mov	r5, #1
	ldr	r0, .L8+32
	ldr	r2, .L8+36
	ldrh	r1, [r0, #48]
	ldr	r3, .L8+40
	strh	r1, [r2]	@ movhi
	strh	lr, [r3]	@ movhi
	ldr	r1, .L8+44
	ldrh	ip, [r4, #4]
	ldrh	r3, [r0, #50]
	ldrh	r2, [r1]
	orr	ip, ip, #8
	strh	ip, [r4, #4]	@ movhi
	ldr	lr, .L8+48
	ldr	ip, .L8+52
	orr	r3, r3, #16384
	orr	r2, r2, #4096
	orr	r2, r2, r5
	orr	r3, r3, #255
	strh	r2, [r1]	@ movhi
	strh	r3, [r0, #50]	@ movhi
	strh	r5, [r1, #8]	@ movhi
	ldr	r3, .L8+56
	str	lr, [ip, #4092]
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToSplash
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	splash
	.word	6916
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	67109376
	.word	interruptHandler
	.word	50360320
	.word	setupSounds
	.size	initialize, .-initialize
	.align	2
	.global	goToMenu
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToMenu, %function
goToMenu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	mov	r5, #1
	ldr	r3, .L12+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L12+8
	mov	r3, #128
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L12+12
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #67108864
	mov	r2, #4352
	mov	r0, #7168
	ldr	ip, .L12+16
	str	r5, [ip]
	ldr	ip, .L12+20
	str	r3, [ip]
	ldr	ip, .L12+24
	str	r3, [ip]
	strh	r2, [r1]	@ movhi
	mov	r3, #256
	strh	r0, [r1, #8]	@ movhi
	ldr	r2, .L12+28
	mov	r0, #3
	ldr	r1, .L12+32
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L12+36
	ldr	r1, .L12+40
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+44
	mov	lr, pc
	bx	r4
	mov	r3, #2096
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L12+48
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L12+52
	ldr	r1, .L12+56
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+60
	str	r5, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	songID
	.word	ins
	.word	cheater
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	menuPal
	.word	menuTiles
	.word	100720640
	.word	menuMap
	.word	state
	.size	goToMenu, .-goToMenu
	.align	2
	.global	splash
	.syntax unified
	.arm
	.fpu softvfp
	.type	splash, %function
splash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L27
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L15
	ldr	r2, .L27+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	goToMenu
.L15:
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L27+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	b	goToMenu
.L28:
	.align	2
.L27:
	.word	oldButtons
	.word	buttons
	.size	splash, .-splash
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L31
	mov	lr, pc
	bx	r3
	ldr	r4, .L31+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L31+8
	mov	lr, pc
	bx	r4
	mov	r3, #80
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L31+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L31+16
	mov	r0, #3
	ldr	r1, .L31+20
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L31+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L32:
	.align	2
.L31:
	.word	waitForVBlank
	.word	DMANow
	.word	gamePal
	.word	gameTiles
	.word	100720640
	.word	gameMap
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L35
	mov	lr, pc
	bx	r3
	ldr	r4, .L35+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L35+8
	mov	lr, pc
	bx	r4
	mov	r3, #272
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L35+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L35+16
	ldr	r1, .L35+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L35+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L35+28
	mov	lr, pc
	bx	r3
	mov	r3, #128
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L35+32
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L35+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L36:
	.align	2
.L35:
	.word	hideSprites
	.word	DMANow
	.word	pausePal
	.word	pauseTiles
	.word	100720640
	.word	pauseMap
	.word	waitForVBlank
	.word	pauseSound
	.word	shadowOAM
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L44
	mov	lr, pc
	bx	r3
	ldr	r3, .L44+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L44+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L38
	ldr	r3, .L44+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L43
.L38:
	ldr	r2, .L44+16
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L43:
	bl	goToPause
	b	.L38
.L45:
	.align	2
.L44:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	timer
	.size	game, .-game
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L58
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L47
	ldr	r2, .L58+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L56
.L47:
	tst	r3, #8
	beq	.L46
	ldr	r3, .L58+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L57
.L46:
	pop	{r4, r5, r6, lr}
	bx	lr
.L57:
	ldr	r3, .L58+8
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToMenu
.L56:
	ldr	r5, .L58+12
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L58+16
	mov	lr, pc
	bx	r5
	mov	r3, #80
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L58+20
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L58+24
	ldr	r1, .L58+28
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	ldr	r3, .L58+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+36
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L47
.L59:
	.align	2
.L58:
	.word	oldButtons
	.word	buttons
	.word	hideSprites
	.word	DMANow
	.word	gamePal
	.word	gameTiles
	.word	100720640
	.word	gameMap
	.word	waitForVBlank
	.word	unpauseSound
	.size	pause, .-pause
	.align	2
	.global	goToRating
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToRating, %function
goToRating:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L62
	mov	lr, pc
	bx	r3
	ldr	r4, .L62+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L62+8
	mov	lr, pc
	bx	r4
	mov	r3, #1376
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L62+12
	mov	lr, pc
	bx	r4
	ldr	r2, .L62+16
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L62+20
	mov	lr, pc
	bx	r4
	mov	r1, #80
	mov	r0, #160
	ldr	r3, .L62+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L62+28
	mov	lr, pc
	bx	r3
	mov	r3, #128
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L62+32
	mov	lr, pc
	bx	r4
	mov	r0, #0
	mov	r2, #5
	ldr	r1, .L62+36
	ldr	r3, .L62+40
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L63:
	.align	2
.L62:
	.word	hideSprites
	.word	DMANow
	.word	ratingPal
	.word	ratingTiles
	.word	100720640
	.word	ratingMap
	.word	drawScore
	.word	waitForVBlank
	.word	shadowOAM
	.word	cheater
	.word	state
	.size	goToRating, .-goToRating
	.align	2
	.global	goToInstruction
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstruction, %function
goToInstruction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L66
	mov	lr, pc
	bx	r3
	ldr	r4, .L66+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L66+8
	mov	lr, pc
	bx	r4
	mov	r3, #2256
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L66+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L66+16
	ldr	r1, .L66+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L66+24
	mov	lr, pc
	bx	r3
	mov	r3, #128
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L66+28
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L66+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L67:
	.align	2
.L66:
	.word	hideSprites
	.word	DMANow
	.word	instructionPal
	.word	instructionTiles
	.word	100720640
	.word	instructionMap
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToInstruction, .-goToInstruction
	.align	2
	.global	menu
	.syntax unified
	.arm
	.fpu softvfp
	.type	menu, %function
menu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L97
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L69
	ldr	r2, .L97+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L94
.L69:
	tst	r3, #4
	beq	.L71
	ldr	r2, .L97+4
	ldrh	r2, [r2]
	tst	r2, #4
	ldreq	r1, .L97+8
	ldreq	r2, [r1]
	addeq	r2, r2, #1
	streq	r2, [r1]
.L71:
	tst	r3, #2
	beq	.L72
	ldr	r2, .L97+4
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L95
.L72:
	tst	r3, #64
	beq	.L73
	ldr	r2, .L97+4
	ldrh	r2, [r2]
	ands	r2, r2, #64
	beq	.L96
.L73:
	tst	r3, #128
	beq	.L68
	ldr	r3, .L97+4
	ldrh	r3, [r3]
	tst	r3, #128
	bne	.L68
	ldr	r2, .L97+12
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L68
	mov	r3, #83886080
	mov	r1, #1
	str	r1, [r2]
	ldrh	r1, [r3, #4]
	ldrh	r2, [r3, #8]
	strh	r1, [r3, #6]	@ movhi
	strh	r2, [r3, #4]	@ movhi
.L68:
	pop	{r4, r5, r6, lr}
	bx	lr
.L96:
	ldr	r1, .L97+12
	ldr	r0, [r1]
	cmp	r0, #0
	beq	.L73
	mov	r3, #83886080
	str	r2, [r1]
	ldrh	r1, [r3, #6]
	ldrh	r2, [r3, #8]
	strh	r1, [r3, #4]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	ldrh	r3, [r4]
	b	.L73
.L94:
	ldr	r3, .L97+12
	ldr	r5, [r3]
	cmp	r5, #0
	beq	.L70
	bl	goToInstruction
	ldrh	r3, [r4]
	b	.L69
.L95:
	bl	goToSplash
	ldrh	r3, [r4]
	b	.L72
.L70:
	ldr	r3, .L97+16
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L97+20
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L97+24
	ldr	r3, .L97+28
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L69
.L98:
	.align	2
.L97:
	.word	oldButtons
	.word	buttons
	.word	cheater
	.word	ins
	.word	initGame
	.word	redandblue_length
	.word	redandblue_data
	.word	playSoundA
	.size	menu, .-menu
	.align	2
	.global	instruction
	.syntax unified
	.arm
	.fpu softvfp
	.type	instruction, %function
instruction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L119
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L100
	ldr	r2, .L119+4
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L100
.L101:
	b	goToMenu
.L100:
	tst	r3, #2
	beq	.L102
	ldr	r2, .L119+4
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L101
.L102:
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L119+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToMenu
.L120:
	.align	2
.L119:
	.word	oldButtons
	.word	buttons
	.size	instruction, .-instruction
	.align	2
	.global	goToTest
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToTest, %function
goToTest:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r8, .L123
	mov	lr, pc
	bx	r8
	mov	r5, #67108864
	mov	r2, #4864
	ldr	r4, .L123+4
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L123+8
	mov	lr, pc
	bx	r4
	mov	r1, #22528
	ldr	r2, .L123+12
	ldr	r6, .L123+16
	strh	r2, [r5, #8]	@ movhi
	ldr	r7, .L123+20
	strh	r1, [r5, #10]	@ movhi
	mov	r3, #608
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L123+24
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L123+28
	ldr	r1, .L123+32
	mov	lr, pc
	bx	r4
	ldrh	r3, [r6]
	ldrh	r2, [r7]
	strh	r3, [r5, #20]	@ movhi
	mov	r0, #3
	strh	r2, [r5, #22]	@ movhi
	mov	r3, #1184
	ldr	r2, .L123+36
	ldr	r1, .L123+40
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L123+44
	ldr	r1, .L123+48
	mov	lr, pc
	bx	r4
	ldrh	r3, [r6]
	ldrh	r2, [r7]
	strh	r3, [r5, #16]	@ movhi
	mov	r0, #3
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	ldr	r2, .L123+52
	ldr	r1, .L123+56
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L123+60
	ldr	r1, .L123+64
	mov	lr, pc
	bx	r4
	mov	r5, #0
	mov	r1, #24
	ldr	r0, .L123+68
	ldr	r2, .L123+72
	ldr	r3, .L123+76
	str	r5, [r0]
	str	r1, [r2]
	str	r5, [r7]
	str	r5, [r6]
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r8
	mov	r3, #128
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L123+80
	mov	lr, pc
	bx	r4
	mov	r7, #3
	mov	r0, #32
	mov	r1, #1
	mov	lr, #7
	ldr	r2, [r6]
	ldr	r3, .L123+84
	ldr	r4, .L123+88
	ldr	ip, .L123+92
	add	r2, r2, #104
	str	r5, [r3, #24]
	str	r5, [r3, #36]
	str	r5, [r3, #28]
	str	r7, [r3, #40]
	str	r5, [r4]
	str	lr, [ip]
	str	r2, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L124:
	.align	2
.L123:
	.word	waitForVBlank
	.word	DMANow
	.word	testMap1Pal
	.word	5892
	.word	hOff
	.word	vOff
	.word	testMap1Tiles
	.word	100712448
	.word	testMap1Map
	.word	100679680
	.word	testMap2Tiles
	.word	100710400
	.word	testMap2Map
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hikariOff
	.word	screenBlock
	.word	hideSprites
	.word	shadowOAM
	.word	hikari
	.word	cheater
	.word	state
	.size	goToTest, .-goToTest
	.align	2
	.global	rating
	.syntax unified
	.arm
	.fpu softvfp
	.type	rating, %function
rating:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L152
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L126
	ldr	r2, .L152+4
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L126
.L127:
	bl	goToMenu
	ldrh	r3, [r4]
.L129:
	ldr	r2, .L152+8
	tst	r3, #4
	ldr	r3, [r2]
	beq	.L130
	ldr	r1, .L152+4
	ldrh	r1, [r1]
	tst	r1, #4
	addeq	r3, r3, #1
	streq	r3, [r2]
.L130:
	cmp	r3, #39
	beq	.L151
	pop	{r4, lr}
	bx	lr
.L126:
	tst	r3, #1
	beq	.L128
	ldr	r2, .L152+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L127
.L128:
	tst	r3, #2
	beq	.L129
	ldr	r2, .L152+4
	ldrh	r2, [r2]
	tst	r2, #2
	bne	.L129
	bl	goToMenu
	ldrh	r3, [r4]
	b	.L129
.L151:
	pop	{r4, lr}
	b	goToTest
.L153:
	.align	2
.L152:
	.word	oldButtons
	.word	buttons
	.word	cheater
	.size	rating, .-rating
	.align	2
	.global	initTest
	.syntax unified
	.arm
	.fpu softvfp
	.type	initTest, %function
initTest:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	lr, #3
	mov	ip, #32
	mov	r0, #1
	ldr	r3, .L156
	ldr	r1, [r3]
	ldr	r3, .L156+4
	add	r1, r1, #104
	str	lr, [r3, #40]
	str	r1, [r3, #4]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	ldr	lr, [sp], #4
	bx	lr
.L157:
	.align	2
.L156:
	.word	hOff
	.word	hikari
	.size	initTest, .-initTest
	.align	2
	.global	drawTest
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTest, %function
drawTest:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L160
	mov	lr, pc
	bx	r3
	ldr	r4, .L160+4
	mov	r3, #128
	mov	r2, #117440512
	ldr	r1, .L160+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L160+12
	ldrh	r1, [r2]
	ldr	r2, .L160+16
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L161:
	.align	2
.L160:
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawTest, .-drawTest
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	initTest
	.size	initPlayer, .-initPlayer
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L175
	ldrh	r3, [r3, #48]
	tst	r3, #16
	push	{r4, lr}
	bne	.L173
	ldr	ip, .L175+4
	ldr	r2, [ip, #4]
	ldr	r3, [ip, #16]
	ldr	r1, .L175+8
	add	r3, r2, r3
	cmp	r3, r1
	ldrle	r3, [ip, #12]
	ldr	lr, .L175+12
	addle	r2, r3, r2
	ldr	r3, [lr]
	strle	r2, [ip, #4]
	cmp	r3, #26
	bgt	.L167
	ldr	r1, .L175+16
	ldr	r3, [r1]
	ldr	r0, .L175+20
	cmp	r3, #784
	ldr	r2, [r0]
	bge	.L168
	ldr	lr, [ip, #4]
	sub	lr, lr, r2
	cmp	lr, #80
	ble	.L165
	ldr	ip, [ip, #12]
	add	r3, r3, ip
	add	r2, r2, ip
	str	r3, [r1]
	str	r2, [r0]
	b	.L165
.L167:
	cmp	r3, #27
	bleq	goToMenu
.L173:
	ldr	r1, .L175+16
	ldr	r0, .L175+20
	ldr	r3, [r1]
	ldr	r2, [r0]
.L165:
	cmp	r3, #256
	bgt	.L174
.L170:
	cmp	r2, #512
	subgt	r2, r2, #512
	strgt	r2, [r0]
	mov	r2, #67108864
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r2, #20]	@ movhi
	pop	{r4, lr}
	bx	lr
.L174:
	ldr	lr, .L175+12
.L168:
	mov	r4, #67108864
	ldr	ip, [lr]
	sub	r3, r3, #256
	add	ip, ip, #1
	str	r3, [r1]
	lsl	r1, ip, #24
	orr	r1, r1, #1073741824
	lsr	r1, r1, #16
	str	ip, [lr]
	strh	r1, [r4, #10]	@ movhi
	b	.L170
.L176:
	.align	2
.L175:
	.word	67109120
	.word	hikari
	.word	1022
	.word	screenBlock
	.word	hOff
	.word	hikariOff
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateTest
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTest, %function
updateTest:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updatePlayer
	.size	updateTest, .-updateTest
	.align	2
	.global	test
	.syntax unified
	.arm
	.fpu softvfp
	.type	test, %function
test:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer
	pop	{r4, lr}
	b	drawTest
	.size	test, .-test
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L194
	mov	lr, pc
	bx	r3
	ldr	r6, .L194+4
	ldr	r7, .L194+8
	ldr	r5, .L194+12
	ldr	fp, .L194+16
	ldr	r10, .L194+20
	ldr	r9, .L194+24
	ldr	r8, .L194+28
	ldr	r4, .L194+32
.L181:
	ldr	r2, [r6]
	ldrh	r3, [r7]
.L182:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #7
	ldrls	pc, [pc, r2, asl #2]
	b	.L182
.L184:
	.word	.L190
	.word	.L189
	.word	.L182
	.word	.L188
	.word	.L187
	.word	.L186
	.word	.L185
	.word	.L183
.L183:
	ldr	r3, .L194+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L194+40
	mov	lr, pc
	bx	r3
	b	.L181
.L185:
	ldr	r3, .L194+44
	mov	lr, pc
	bx	r3
	b	.L181
.L186:
	ldr	r3, .L194+48
	mov	lr, pc
	bx	r3
	b	.L181
.L187:
	mov	lr, pc
	bx	r8
	b	.L181
.L188:
	mov	lr, pc
	bx	r9
	b	.L181
.L189:
	mov	lr, pc
	bx	r10
	b	.L181
.L190:
	mov	lr, pc
	bx	fp
	b	.L181
.L195:
	.align	2
.L194:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	splash
	.word	menu
	.word	game
	.word	pause
	.word	67109120
	.word	updatePlayer
	.word	drawTest
	.word	instruction
	.word	rating
	.size	main, .-main
	.text
	.align	2
	.global	setupInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, #67108864
	mov	r4, #1
	ldr	r1, .L198
	ldr	lr, .L198+4
	ldrh	r2, [r1]
	ldrh	r3, [lr, #50]
	orr	r2, r2, #4096
	ldrh	r0, [ip, #4]
	orr	r2, r2, r4
	strh	r2, [r1]	@ movhi
	strh	r4, [r1, #8]	@ movhi
	ldr	r2, .L198+8
	ldr	r1, .L198+12
	orr	r3, r3, #16384
	orr	r3, r3, #255
	orr	r0, r0, #8
	strh	r3, [lr, #50]	@ movhi
	strh	r0, [ip, #4]	@ movhi
	pop	{r4, lr}
	str	r1, [r2, #4092]
	bx	lr
.L199:
	.align	2
.L198:
	.word	67109376
	.word	67109120
	.word	50360320
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.align	2
	.global	colorDecay
	.syntax unified
	.arm
	.fpu softvfp
	.type	colorDecay, %function
colorDecay:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r2, [r0]
	lsl	r3, r2, #3
	ands	r3, r3, #255
	lslne	r3, r3, #13
	lsr	r1, r2, #2
	subne	r3, r3, #65536
	and	r1, r1, #248
	asrne	r3, r3, #16
	cmp	r1, #0
	lslne	r1, r1, #2
	lsr	r2, r2, #7
	and	r2, r2, #248
	subne	r1, r1, #32
	orrne	r3, r3, r1
	cmp	r2, #0
	lslne	r2, r2, #7
	subne	r2, r2, #1024
	orrne	r3, r3, r2
	lslne	r3, r3, #16
	asrne	r3, r3, #16
	strh	r3, [r0]	@ movhi
	bx	lr
	.size	colorDecay, .-colorDecay
	.align	2
	.global	interruptHandler
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, lr}
	ldr	r3, .L256
	ldr	r4, .L256+4
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r4]
	cmp	r3, #3
	beq	.L249
.L212:
	ldr	r2, .L256
	ldrh	r2, [r2, #2]
	tst	r2, #1
	beq	.L218
	ldr	r0, .L256+8
	ldr	r2, [r0, #12]
	cmp	r2, #0
	beq	.L220
	ldr	r2, [r0, #28]
	ldr	r1, [r0, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r0, #28]
	ble	.L220
	ldr	r2, [r0, #16]
	cmp	r2, #0
	bne	.L250
	ldr	ip, .L256+12
	ldr	r1, .L256+16
	ldr	ip, [ip]
	cmp	r3, #3
	str	r2, [r0, #12]
	str	r2, [ip, #20]
	strh	r2, [r1, #2]	@ movhi
	beq	.L251
.L220:
	ldr	r3, .L256+20
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L218
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L218
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L252
	ldr	r0, .L256+12
	ldr	r1, .L256+16
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #32]
	strh	r2, [r1, #6]	@ movhi
.L218:
	mov	r1, #1
	ldr	r3, .L256
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L249:
	mov	r3, #83886080
	ldrh	r3, [r3, #2]
	cmp	r3, r2
	bne	.L253
.L213:
	mov	r3, #83886080
	ldrh	r3, [r3, #4]
	cmp	r3, #0
	bne	.L254
.L214:
	mov	r3, #83886080
	ldrh	r3, [r3, #6]
	cmp	r3, #0
	bne	.L255
.L215:
	ldr	r3, [r4]
	cmp	r3, #3
	bne	.L212
	ldr	r2, .L256
	ldrh	r2, [r2, #2]
	tst	r2, #4096
	beq	.L216
	ldr	r2, .L256+16
	ldrh	r2, [r2, #48]
	mvn	r2, r2
	tst	r2, #3
	movne	r2, #83886080
	ldrhne	r1, [r2, #8]
	strhne	r1, [r2, #4]	@ movhi
.L216:
	ldr	r2, .L256
	ldrh	r2, [r2, #2]
	tst	r2, #4096
	beq	.L212
	ldr	r2, .L256+16
	ldrh	r2, [r2, #48]
	mvn	r2, r2
	tst	r2, #240
	movne	r2, #83886080
	ldrhne	r1, [r2, #10]
	strhne	r1, [r2, #6]	@ movhi
	b	.L212
.L255:
	ldr	r0, .L256+24
	bl	colorDecay
	b	.L215
.L254:
	ldr	r0, .L256+28
	bl	colorDecay
	b	.L214
.L253:
	ldr	r0, .L256+32
	bl	colorDecay
	b	.L213
.L251:
	bl	goToRating
	b	.L220
.L250:
	ldm	r0, {r0, r1}
	ldr	r3, .L256+36
	mov	lr, pc
	bx	r3
	b	.L220
.L252:
	ldm	r3, {r0, r1}
	ldr	r3, .L256+36
	mov	lr, pc
	bx	r3
	b	.L218
.L257:
	.align	2
.L256:
	.word	67109376
	.word	state
	.word	soundA
	.word	dma
	.word	67109120
	.word	soundB
	.word	83886086
	.word	83886084
	.word	83886082
	.word	playSoundA
	.size	interruptHandler, .-interruptHandler
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	songID,4,4
	.comm	ins,4,4
	.comm	hikari,48,4
	.comm	screenBlock,4,4
	.comm	hikariOff,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	frameCount,4,4
	.comm	timer,4,4
	.comm	shadowCount,4,4
	.comm	shadowOAM,1024,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
