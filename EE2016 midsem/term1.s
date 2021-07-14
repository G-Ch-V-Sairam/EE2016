	.arch armv5t
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"term1.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata
	.align	2
.LC0:
	.word	__stack_chk_guard
	.text
	.align	2
	.global	func
	.syntax unified
	.arm
	.fpu softvfp
	.type	func, %function
func:
.LFB0:
	.file 1 "term1.c"
	.loc 1 3 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 424
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #424
	str	r0, [fp, #-424]
	str	r1, [fp, #-428]
	
	
	push {r4,r5,r6}
	
	ldr r2,[r0],#4		//r2 =arr[0] and r0 points to arr[1]
	ldr r3,[r0],#4		//r3 =arr[1] and r0 points to arr[2]
	sub r4,r3,r2
	ldr r2,[r0],#4		//r4 =arr[2] and r0 points to arr[3]
	ldr r3,[r0],#4		//r5 =arr[3] and r0 points to arr[4]
	add r4,r4,r3
	sub r4,r4,r2
	ldr r2,[r0],#4		//r6 =arr[4] and r0 points to arr[5]
	ldr r3,[r0],#4		//r7= arr[5] and r0 points to arr[6]
	add r4,r4,r3
	sub r4,r4,r2		//r4=S[0]
	mov r6,r4
	
	mov r12,#0
	sub r1,r1,#5		//r1=n-5
	mov r5,#1
	
Loop:
	ldr r2,[r0]		//r2=arr[i+5] and r0 points to arr[i+5]
	sub r3,r2,r4		//r3=arr[i+5]-S[i-1]
	ldr r2,[r0,#-24]	//r2=arr[i-1]
	sub r3,r3,r2		//r3=S[i]
	
	cmp r3,r6
	movlt r6,r3		//If S[i] < r6 then r6=S[i]
	movlt r12,r5		//r12=i
	
	mov r4,r3		//r4=S[i] i.e, S[i-1] for next loop
	add r5,r5,#1		//i++
	cmp r5,r1		
	bne Loop		//if i is not equal to (n-5) then go back to loop
	
	mov r0,r12		//r0 contains value of i at which S[i] is minimum
	pop {r4,r5,r6}
	
	
.L6:
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L8:
	.align	2
.L7:
	.word	.LC0
	.cfi_endproc

	
	.loc 1 3 1
	.loc 1 5 14
	.loc 1 6 14
	.loc 1 6 21
	.loc 1 6 17
	.loc 1 6 28
	.loc 1 6 24
	.loc 1 6 35
	.loc 1 6 31
	.loc 1 6 42
	.loc 1 6 38
	.loc 1 6 49
	.loc 1 6 45
	.loc 1 6 9
	.loc 1 7 9
.LBB2:
	.loc 1 8 13
	.loc 1 8 5
	b	.L2
.L4:
	.loc 1 11 14
	.loc 1 11 23
	.loc 1 11 19
	.loc 1 11 32
	.loc 1 11 30
	.loc 1 11 28
	.loc 1 11 10
	.loc 1 12 19
	.loc 1 12 11
	.loc 1 14 14
	.loc 1 15 18
.L3:
	.loc 1 8 26 discriminator 2
.L2:
	.loc 1 8 21 discriminator 1
	.loc 1 8 5 discriminator 1
.LBE2:
	.loc 1 18 12
	.loc 1 19 1
	
.LFE0:
	.size	func, .-func
.Letext0:
	.file 2 "/usr/lib/gcc-cross/arm-linux-gnueabi/9/include/stddef.h"
	.file 3 "/usr/arm-linux-gnueabi/include/bits/types.h"
	.file 4 "/usr/arm-linux-gnueabi/include/bits/types/struct_FILE.h"
	.file 5 "/usr/arm-linux-gnueabi/include/bits/types/FILE.h"
	.file 6 "/usr/arm-linux-gnueabi/include/stdio.h"
	.file 7 "/usr/arm-linux-gnueabi/include/bits/sys_errlist.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x380
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xc
	.4byte	.LASF54
	.4byte	.LASF55
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.4byte	0x31
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2f
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.4byte	0x8a
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.4byte	0x64
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x7
	.4byte	0xa3
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x98
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.4byte	0x236
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.4byte	0x5d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.4byte	0x9d
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.4byte	0x9d
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.4byte	0x9d
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.4byte	0x9d
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.4byte	0x9d
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.4byte	0x9d
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.4byte	0x9d
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.4byte	0x9d
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.4byte	0x9d
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.4byte	0x9d
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.4byte	0x9d
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.4byte	0x24f
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.4byte	0x255
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.4byte	0x5d
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.4byte	0x5d
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.4byte	0x7e
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.4byte	0x41
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.4byte	0x4f
	.byte	0x46
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.4byte	0x25b
	.byte	0x47
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.4byte	0x26b
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.4byte	0x91
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.4byte	0x276
	.byte	0x58
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.4byte	0x281
	.byte	0x5c
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.4byte	0x255
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.4byte	0x38
	.byte	0x64
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.4byte	0x25
	.byte	0x68
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.4byte	0x5d
	.byte	0x6c
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.4byte	0x287
	.byte	0x70
	.byte	0
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.4byte	0xaf
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF44
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24a
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaf
	.uleb128 0xc
	.4byte	0xa3
	.4byte	0x26b
	.uleb128 0xd
	.4byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x242
	.uleb128 0xb
	.4byte	.LASF45
	.uleb128 0x6
	.byte	0x4
	.4byte	0x271
	.uleb128 0xb
	.4byte	.LASF46
	.uleb128 0x6
	.byte	0x4
	.4byte	0x27c
	.uleb128 0xc
	.4byte	0xa3
	.4byte	0x297
	.uleb128 0xd
	.4byte	0x31
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.4byte	0x2a3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x236
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.4byte	0x2a3
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.4byte	0x2a3
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.4byte	0x5d
	.uleb128 0xc
	.4byte	0x2e3
	.4byte	0x2d8
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x2cd
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaa
	.uleb128 0x7
	.4byte	0x2dd
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.4byte	0x2d8
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x1
	.byte	0x2
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x371
	.uleb128 0x11
	.ascii	"arr\000"
	.byte	0x1
	.byte	0x2
	.byte	0xf
	.4byte	0x371
	.uleb128 0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x11
	.ascii	"n\000"
	.byte	0x1
	.byte	0x2
	.byte	0x17
	.4byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x12
	.ascii	"S\000"
	.byte	0x1
	.byte	0x4
	.byte	0x9
	.4byte	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x1
	.byte	0x5
	.byte	0x9
	.4byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x12
	.ascii	"j\000"
	.byte	0x1
	.byte	0x5
	.byte	0xe
	.4byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x14
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x12
	.ascii	"i\000"
	.byte	0x1
	.byte	0x8
	.byte	0xd
	.4byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d
	.uleb128 0x15
	.4byte	0x5d
	.uleb128 0xd
	.4byte	0x31
	.byte	0x63
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF22:
	.ascii	"_IO_buf_end\000"
.LASF30:
	.ascii	"_old_offset\000"
.LASF53:
	.ascii	"GNU C17 9.3.0 -mfloat-abi=soft -mtls-dialect=gnu -m"
	.ascii	"arm -march=armv5t -g -fstack-protector-strong\000"
.LASF50:
	.ascii	"sys_nerr\000"
.LASF25:
	.ascii	"_IO_save_end\000"
.LASF52:
	.ascii	"temp\000"
.LASF5:
	.ascii	"short int\000"
.LASF6:
	.ascii	"size_t\000"
.LASF35:
	.ascii	"_offset\000"
.LASF19:
	.ascii	"_IO_write_ptr\000"
.LASF55:
	.ascii	"/home/sairam\000"
.LASF21:
	.ascii	"_IO_buf_base\000"
.LASF26:
	.ascii	"_markers\000"
.LASF16:
	.ascii	"_IO_read_end\000"
.LASF39:
	.ascii	"_freeres_buf\000"
.LASF49:
	.ascii	"stderr\000"
.LASF8:
	.ascii	"long long int\000"
.LASF34:
	.ascii	"_lock\000"
.LASF11:
	.ascii	"long int\000"
.LASF7:
	.ascii	"__int64_t\000"
.LASF31:
	.ascii	"_cur_column\000"
.LASF56:
	.ascii	"_IO_FILE\000"
.LASF54:
	.ascii	"term1.c\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF58:
	.ascii	"func\000"
.LASF4:
	.ascii	"signed char\000"
.LASF36:
	.ascii	"_codecvt\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF44:
	.ascii	"_IO_marker\000"
.LASF33:
	.ascii	"_shortbuf\000"
.LASF18:
	.ascii	"_IO_write_base\000"
.LASF42:
	.ascii	"_unused2\000"
.LASF15:
	.ascii	"_IO_read_ptr\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF13:
	.ascii	"char\000"
.LASF37:
	.ascii	"_wide_data\000"
.LASF38:
	.ascii	"_freeres_list\000"
.LASF40:
	.ascii	"__pad5\000"
.LASF45:
	.ascii	"_IO_codecvt\000"
.LASF3:
	.ascii	"long unsigned int\000"
.LASF20:
	.ascii	"_IO_write_end\000"
.LASF12:
	.ascii	"__off64_t\000"
.LASF10:
	.ascii	"__off_t\000"
.LASF27:
	.ascii	"_chain\000"
.LASF46:
	.ascii	"_IO_wide_data\000"
.LASF24:
	.ascii	"_IO_backup_base\000"
.LASF47:
	.ascii	"stdin\000"
.LASF29:
	.ascii	"_flags2\000"
.LASF41:
	.ascii	"_mode\000"
.LASF17:
	.ascii	"_IO_read_base\000"
.LASF32:
	.ascii	"_vtable_offset\000"
.LASF23:
	.ascii	"_IO_save_base\000"
.LASF51:
	.ascii	"sys_errlist\000"
.LASF28:
	.ascii	"_fileno\000"
.LASF43:
	.ascii	"FILE\000"
.LASF14:
	.ascii	"_flags\000"
.LASF48:
	.ascii	"stdout\000"
.LASF57:
	.ascii	"_IO_lock_t\000"
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
