	.file	"rigel.cxx"
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.weak	_ZNSt11char_traitsIcE6lengthEPKc
	.type	_ZNSt11char_traitsIcE6lengthEPKc, @function
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB238:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE238:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .-_ZNSt11char_traitsIcE6lengthEPKc
	.text
	.type	_ZL18__gthread_active_pv, @function
_ZL18__gthread_active_pv:
.LFB274:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %edx
	testq	%rdx, %rdx
	jne	.L4
	movl	$0, %eax
.L4:
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE274:
	.size	_ZL18__gthread_active_pv, .-_ZL18__gthread_active_pv
	.type	_ZN9__gnu_cxxL18__exchange_and_addEPVii, @function
_ZN9__gnu_cxxL18__exchange_and_addEPVii:
.LFB303:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE303:
	.size	_ZN9__gnu_cxxL18__exchange_and_addEPVii, .-_ZN9__gnu_cxxL18__exchange_and_addEPVii
	.type	_ZN9__gnu_cxxL25__exchange_and_add_singleEPii, @function
_ZN9__gnu_cxxL25__exchange_and_add_singleEPii:
.LFB305:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE305:
	.size	_ZN9__gnu_cxxL25__exchange_and_add_singleEPii, .-_ZN9__gnu_cxxL25__exchange_and_add_singleEPii
	.type	_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii, @function
_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii:
.LFB307:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	call	_ZL18__gthread_active_pv
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L11
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxL18__exchange_and_addEPVii
	jmp	.L12
.L11:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxL25__exchange_and_add_singleEPii
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE307:
	.size	_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii, .-_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii
	.section	.text._ZStorSt13_Ios_OpenmodeS_,"axG",@progbits,_ZStorSt13_Ios_OpenmodeS_,comdat
	.weak	_ZStorSt13_Ios_OpenmodeS_
	.type	_ZStorSt13_Ios_OpenmodeS_, @function
_ZStorSt13_Ios_OpenmodeS_:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	orl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	_ZStorSt13_Ios_OpenmodeS_, .-_ZStorSt13_Ios_OpenmodeS_
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZN2sf15ContextSettingsC2Ejjjjj,"axG",@progbits,_ZN2sf15ContextSettingsC5Ejjjjj,comdat
	.align 2
	.weak	_ZN2sf15ContextSettingsC2Ejjjjj
	.type	_ZN2sf15ContextSettingsC2Ejjjjj, @function
_ZN2sf15ContextSettingsC2Ejjjjj:
.LFB1479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 12(%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 16(%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1479:
	.size	_ZN2sf15ContextSettingsC2Ejjjjj, .-_ZN2sf15ContextSettingsC2Ejjjjj
	.weak	_ZN2sf15ContextSettingsC1Ejjjjj
	.set	_ZN2sf15ContextSettingsC1Ejjjjj,_ZN2sf15ContextSettingsC2Ejjjjj
	.section	.text._ZN2sf8DrawableD2Ev,"axG",@progbits,_ZN2sf8DrawableD5Ev,comdat
	.align 2
	.weak	_ZN2sf8DrawableD2Ev
	.type	_ZN2sf8DrawableD2Ev, @function
_ZN2sf8DrawableD2Ev:
.LFB1973:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$_ZTVN2sf8DrawableE+16, (%rax)
	movl	$0, %eax
	testl	%eax, %eax
	je	.L16
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1973:
	.size	_ZN2sf8DrawableD2Ev, .-_ZN2sf8DrawableD2Ev
	.weak	_ZN2sf8DrawableD1Ev
	.set	_ZN2sf8DrawableD1Ev,_ZN2sf8DrawableD2Ev
	.section	.text._ZN2sf8DrawableD0Ev,"axG",@progbits,_ZN2sf8DrawableD5Ev,comdat
	.align 2
	.weak	_ZN2sf8DrawableD0Ev
	.type	_ZN2sf8DrawableD0Ev, @function
_ZN2sf8DrawableD0Ev:
.LFB1975:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf8DrawableD1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1975:
	.size	_ZN2sf8DrawableD0Ev, .-_ZN2sf8DrawableD0Ev
	.globl	powerupCount
	.bss
	.align 4
	.type	powerupCount, @object
	.size	powerupCount, 4
powerupCount:
	.zero	4
	.globl	blockCount
	.align 4
	.type	blockCount, @object
	.size	blockCount, 4
blockCount:
	.zero	4
	.globl	gravity
	.data
	.align 4
	.type	gravity, @object
	.size	gravity, 4
gravity:
	.long	1137180672
	.globl	crashed
	.bss
	.type	crashed, @object
	.size	crashed, 1
crashed:
	.zero	1
	.globl	levelComplete
	.type	levelComplete, @object
	.size	levelComplete, 1
levelComplete:
	.zero	1
	.globl	distanceCovered
	.align 4
	.type	distanceCovered, @object
	.size	distanceCovered, 4
distanceCovered:
	.zero	4
	.globl	speedValue
	.data
	.align 4
	.type	speedValue, @object
	.size	speedValue, 4
speedValue:
	.long	25
	.globl	levelNum
	.bss
	.align 4
	.type	levelNum, @object
	.size	levelNum, 4
levelNum:
	.zero	4
	.globl	level
	.align 8
	.type	level, @object
	.size	level, 8
level:
	.zero	8
	.globl	levelNumber
	.align 8
	.type	levelNumber, @object
	.size	levelNumber, 8
levelNumber:
	.zero	8
	.globl	backgroundFile
	.align 8
	.type	backgroundFile, @object
	.size	backgroundFile, 8
backgroundFile:
	.zero	8
	.section	.text._ZN16objectAttirbutesC2Ev,"axG",@progbits,_ZN16objectAttirbutesC5Ev,comdat
	.align 2
	.weak	_ZN16objectAttirbutesC2Ev
	.type	_ZN16objectAttirbutesC2Ev, @function
_ZN16objectAttirbutesC2Ev:
.LFB2012:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2012:
	.size	_ZN16objectAttirbutesC2Ev, .-_ZN16objectAttirbutesC2Ev
	.weak	_ZN16objectAttirbutesC1Ev
	.set	_ZN16objectAttirbutesC1Ev,_ZN16objectAttirbutesC2Ev
	.section	.text._ZN16objectAttirbutes5shapeC2Ev,"axG",@progbits,_ZN16objectAttirbutes5shapeC5Ev,comdat
	.align 2
	.weak	_ZN16objectAttirbutes5shapeC2Ev
	.type	_ZN16objectAttirbutes5shapeC2Ev, @function
_ZN16objectAttirbutes5shapeC2Ev:
.LFB2015:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2015
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-32(%rbp), %rax
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	movq	%rax, %rdi
	call	_ZN2sf7Vector2IfEC1Eff
	movq	-40(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZN2sf14RectangleShapeC1ERKNS_7Vector2IfEE
.LEHE0:
	leaq	-32(%rbp), %rax
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	movq	%rax, %rdi
	call	_ZN2sf7Vector2IfEC1Eff
	movq	-40(%rbp), %rax
	leaq	344(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
.LEHB1:
	call	_ZN2sf14RectangleShapeC1ERKNS_7Vector2IfEE
.LEHE1:
	jmp	.L26
.L25:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf14RectangleShapeD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L26:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L24
	call	__stack_chk_fail
.L24:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2015:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN16objectAttirbutes5shapeC2Ev,"aG",@progbits,_ZN16objectAttirbutes5shapeC5Ev,comdat
.LLSDA2015:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2015-.LLSDACSB2015
.LLSDACSB2015:
	.uleb128 .LEHB0-.LFB2015
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2015
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L25-.LFB2015
	.uleb128 0
	.uleb128 .LEHB2-.LFB2015
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2015:
	.section	.text._ZN16objectAttirbutes5shapeC2Ev,"axG",@progbits,_ZN16objectAttirbutes5shapeC5Ev,comdat
	.size	_ZN16objectAttirbutes5shapeC2Ev, .-_ZN16objectAttirbutes5shapeC2Ev
	.weak	_ZN16objectAttirbutes5shapeC1Ev
	.set	_ZN16objectAttirbutes5shapeC1Ev,_ZN16objectAttirbutes5shapeC2Ev
	.section	.text._ZN16objectAttirbutes5shapeD2Ev,"axG",@progbits,_ZN16objectAttirbutes5shapeD5Ev,comdat
	.align 2
	.weak	_ZN16objectAttirbutes5shapeD2Ev
	.type	_ZN16objectAttirbutes5shapeD2Ev, @function
_ZN16objectAttirbutes5shapeD2Ev:
.LFB2018:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2018
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$344, %rax
	movq	%rax, %rdi
.LEHB3:
	call	_ZN2sf14RectangleShapeD1Ev
.LEHE3:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
.LEHB4:
	call	_ZN2sf14RectangleShapeD1Ev
.LEHE4:
	jmp	.L31
.L30:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf14RectangleShapeD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
.L31:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2018:
	.section	.gcc_except_table._ZN16objectAttirbutes5shapeD2Ev,"aG",@progbits,_ZN16objectAttirbutes5shapeD5Ev,comdat
.LLSDA2018:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2018-.LLSDACSB2018
.LLSDACSB2018:
	.uleb128 .LEHB3-.LFB2018
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L30-.LFB2018
	.uleb128 0
	.uleb128 .LEHB4-.LFB2018
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2018
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2018:
	.section	.text._ZN16objectAttirbutes5shapeD2Ev,"axG",@progbits,_ZN16objectAttirbutes5shapeD5Ev,comdat
	.size	_ZN16objectAttirbutes5shapeD2Ev, .-_ZN16objectAttirbutes5shapeD2Ev
	.weak	_ZN16objectAttirbutes5shapeD1Ev
	.set	_ZN16objectAttirbutes5shapeD1Ev,_ZN16objectAttirbutes5shapeD2Ev
	.section	.text._ZN6blocksC2Ev,"axG",@progbits,_ZN6blocksC5Ev,comdat
	.align 2
	.weak	_ZN6blocksC2Ev
	.type	_ZN6blocksC2Ev, @function
_ZN6blocksC2Ev:
.LFB2020:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN16objectAttirbutesC2Ev
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZN16objectAttirbutes5shapeC1Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2020:
	.size	_ZN6blocksC2Ev, .-_ZN6blocksC2Ev
	.weak	_ZN6blocksC1Ev
	.set	_ZN6blocksC1Ev,_ZN6blocksC2Ev
	.section	.text._ZN6blocksD2Ev,"axG",@progbits,_ZN6blocksD5Ev,comdat
	.align 2
	.weak	_ZN6blocksD2Ev
	.type	_ZN6blocksD2Ev, @function
_ZN6blocksD2Ev:
.LFB2023:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZN16objectAttirbutes5shapeD1Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2023:
	.size	_ZN6blocksD2Ev, .-_ZN6blocksD2Ev
	.weak	_ZN6blocksD1Ev
	.set	_ZN6blocksD1Ev,_ZN6blocksD2Ev
	.section	.rodata
.LC1:
	.string	".data"
	.section	.text._ZN6blocks13getBlockCountEv,"axG",@progbits,_ZN6blocks13getBlockCountEv,comdat
	.weak	_ZN6blocks13getBlockCountEv
	.type	_ZN6blocks13getBlockCountEv, @function
_ZN6blocks13getBlockCountEv:
.LFB2025:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2025
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$568, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-560(%rbp), %rax
	movl	$levelNumber, %edx
	movl	$level, %esi
	movq	%rax, %rdi
.LEHB6:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE6:
	leaq	-576(%rbp), %rax
	leaq	-560(%rbp), %rcx
	movl	$.LC1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE7:
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
.LEHB8:
	call	_ZNSsD1Ev
.LEHE8:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
.LEHB9:
	call	_ZNKSs5c_strEv
	movq	%rax, %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE9:
	leaq	-544(%rbp), %rax
	movl	$blockCount, %esi
	movq	%rax, %rdi
.LEHB10:
	call	_ZNSirsERi
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
.LEHE10:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
.LEHB11:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.LEHE11:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
.LEHB12:
	call	_ZNSsD1Ev
.LEHE12:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L40
	jmp	.L45
.L41:
	movq	%rax, %rbx
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB13:
	call	_Unwind_Resume
.LEHE13:
.L42:
	movq	%rax, %rbx
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB14:
	call	_Unwind_Resume
.LEHE14:
.L44:
	movq	%rax, %rbx
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	jmp	.L39
.L43:
	movq	%rax, %rbx
.L39:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB15:
	call	_Unwind_Resume
.LEHE15:
.L45:
	call	__stack_chk_fail
.L40:
	addq	$568, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2025:
	.section	.gcc_except_table._ZN6blocks13getBlockCountEv,"aG",@progbits,_ZN6blocks13getBlockCountEv,comdat
.LLSDA2025:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2025-.LLSDACSB2025
.LLSDACSB2025:
	.uleb128 .LEHB6-.LFB2025
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2025
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L41-.LFB2025
	.uleb128 0
	.uleb128 .LEHB8-.LFB2025
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L42-.LFB2025
	.uleb128 0
	.uleb128 .LEHB9-.LFB2025
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L43-.LFB2025
	.uleb128 0
	.uleb128 .LEHB10-.LFB2025
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L44-.LFB2025
	.uleb128 0
	.uleb128 .LEHB11-.LFB2025
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L43-.LFB2025
	.uleb128 0
	.uleb128 .LEHB12-.LFB2025
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB2025
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB2025
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB2025
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE2025:
	.section	.text._ZN6blocks13getBlockCountEv,"axG",@progbits,_ZN6blocks13getBlockCountEv,comdat
	.size	_ZN6blocks13getBlockCountEv, .-_ZN6blocks13getBlockCountEv
	.section	.rodata
.LC2:
	.string	".map"
	.section	.text._ZN6blocks8fileReadEPS_,"axG",@progbits,_ZN6blocks8fileReadEPS_,comdat
	.weak	_ZN6blocks8fileReadEPS_
	.type	_ZN6blocks8fileReadEPS_, @function
_ZN6blocks8fileReadEPS_:
.LFB2026:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2026
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$600, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -600(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-560(%rbp), %rax
	movl	$levelNumber, %edx
	movl	$level, %esi
	movq	%rax, %rdi
.LEHB16:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE16:
	leaq	-576(%rbp), %rax
	leaq	-560(%rbp), %rcx
	movl	$.LC2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB17:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE17:
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
.LEHB18:
	call	_ZNSsD1Ev
.LEHE18:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
.LEHB19:
	call	_ZNKSs5c_strEv
	movq	%rax, %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE19:
	movl	$0, -580(%rbp)
	jmp	.L47
.L48:
	movl	$32, %esi
	movl	-580(%rbp), %eax
	cltq
	imulq	$720, %rax, %rdx
	movq	-600(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rcx
	leaq	-544(%rbp), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB20:
	call	_ZNSi4readEPcl
	addl	$1, -580(%rbp)
.L47:
	movl	blockCount(%rip), %eax
	cmpl	%eax, -580(%rbp)
	jl	.L48
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
.LEHE20:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
.LEHB21:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.LEHE21:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
.LEHB22:
	call	_ZNSsD1Ev
.LEHE22:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L53
	jmp	.L58
.L54:
	movq	%rax, %rbx
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB23:
	call	_Unwind_Resume
.LEHE23:
.L55:
	movq	%rax, %rbx
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB24:
	call	_Unwind_Resume
.LEHE24:
.L57:
	movq	%rax, %rbx
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	jmp	.L52
.L56:
	movq	%rax, %rbx
.L52:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB25:
	call	_Unwind_Resume
.LEHE25:
.L58:
	call	__stack_chk_fail
.L53:
	addq	$600, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2026:
	.section	.gcc_except_table._ZN6blocks8fileReadEPS_,"aG",@progbits,_ZN6blocks8fileReadEPS_,comdat
.LLSDA2026:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2026-.LLSDACSB2026
.LLSDACSB2026:
	.uleb128 .LEHB16-.LFB2026
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB2026
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L54-.LFB2026
	.uleb128 0
	.uleb128 .LEHB18-.LFB2026
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L55-.LFB2026
	.uleb128 0
	.uleb128 .LEHB19-.LFB2026
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L56-.LFB2026
	.uleb128 0
	.uleb128 .LEHB20-.LFB2026
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L57-.LFB2026
	.uleb128 0
	.uleb128 .LEHB21-.LFB2026
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L56-.LFB2026
	.uleb128 0
	.uleb128 .LEHB22-.LFB2026
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB2026
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB2026
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB2026
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE2026:
	.section	.text._ZN6blocks8fileReadEPS_,"axG",@progbits,_ZN6blocks8fileReadEPS_,comdat
	.size	_ZN6blocks8fileReadEPS_, .-_ZN6blocks8fileReadEPS_
	.section	.rodata
.LC3:
	.string	"0"
.LC4:
	.string	"1"
.LC5:
	.string	"3"
.LC6:
	.string	"4"
.LC7:
	.string	"9"
.LC8:
	.string	"2"
	.section	.text._ZN6blocks9setValuesEi,"axG",@progbits,_ZN6blocks9setValuesEi,comdat
	.align 2
	.weak	_ZN6blocks9setValuesEi
	.type	_ZN6blocks9setValuesEi, @function
_ZN6blocks9setValuesEi:
.LFB2027:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$.LC3, %esi
	movl	$levelNumber, %edi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	jne	.L60
	movl	$.LC4, %esi
	movl	$levelNumber, %edi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	jne	.L60
	movl	$.LC5, %esi
	movl	$levelNumber, %edi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	jne	.L60
	movl	$.LC6, %esi
	movl	$levelNumber, %edi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	jne	.L60
	movl	$.LC7, %esi
	movl	$levelNumber, %edi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	je	.L61
.L60:
	movl	$1, %eax
	jmp	.L62
.L61:
	movl	$0, %eax
.L62:
	testb	%al, %al
	je	.L63
	leaq	-16(%rbp), %rax
	movl	$255, %r8d
	movl	$255, %ecx
	movl	$0, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	_ZN2sf5ColorC1Ehhhh
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN2sf5Shape12setFillColorERKNS_5ColorE
	leaq	-16(%rbp), %rax
	movl	$255, %r8d
	movl	$255, %ecx
	movl	$0, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	_ZN2sf5ColorC1Ehhhh
	movq	-24(%rbp), %rax
	leaq	376(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN2sf5Shape12setFillColorERKNS_5ColorE
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	$_ZN2sf5Color5BlackE, %esi
	movq	%rax, %rdi
	call	_ZN2sf5Shape15setOutlineColorERKNS_5ColorE
	movq	-24(%rbp), %rax
	addq	$376, %rax
	movl	$_ZN2sf5Color5BlackE, %esi
	movq	%rax, %rdi
	call	_ZN2sf5Shape15setOutlineColorERKNS_5ColorE
	jmp	.L64
.L63:
	movl	$.LC8, %esi
	movl	$levelNumber, %edi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	je	.L65
	leaq	-16(%rbp), %rax
	movl	$255, %r8d
	movl	$30, %ecx
	movl	$0, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	_ZN2sf5ColorC1Ehhhh
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN2sf5Shape12setFillColorERKNS_5ColorE
	leaq	-16(%rbp), %rax
	movl	$255, %r8d
	movl	$30, %ecx
	movl	$0, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	_ZN2sf5ColorC1Ehhhh
	movq	-24(%rbp), %rax
	leaq	376(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN2sf5Shape12setFillColorERKNS_5ColorE
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	$_ZN2sf5Color5BlackE, %esi
	movq	%rax, %rdi
	call	_ZN2sf5Shape15setOutlineColorERKNS_5ColorE
	movq	-24(%rbp), %rax
	addq	$376, %rax
	movl	$_ZN2sf5Color5BlackE, %esi
	movq	%rax, %rdi
	call	_ZN2sf5Shape15setOutlineColorERKNS_5ColorE
	jmp	.L64
.L65:
	leaq	-16(%rbp), %rax
	movl	$255, %r8d
	movl	$30, %ecx
	movl	$150, %edx
	movl	$30, %esi
	movq	%rax, %rdi
	call	_ZN2sf5ColorC1Ehhhh
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN2sf5Shape12setFillColorERKNS_5ColorE
	leaq	-16(%rbp), %rax
	movl	$255, %r8d
	movl	$30, %ecx
	movl	$150, %edx
	movl	$30, %esi
	movq	%rax, %rdi
	call	_ZN2sf5ColorC1Ehhhh
	movq	-24(%rbp), %rax
	leaq	376(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN2sf5Shape12setFillColorERKNS_5ColorE
	leaq	-16(%rbp), %rax
	movl	$255, %r8d
	movl	$30, %ecx
	movl	$30, %edx
	movl	$30, %esi
	movq	%rax, %rdi
	call	_ZN2sf5ColorC1Ehhhh
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN2sf5Shape15setOutlineColorERKNS_5ColorE
	leaq	-16(%rbp), %rax
	movl	$255, %r8d
	movl	$30, %ecx
	movl	$30, %edx
	movl	$30, %esi
	movq	%rax, %rdi
	call	_ZN2sf5ColorC1Ehhhh
	movq	-24(%rbp), %rax
	leaq	376(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN2sf5Shape15setOutlineColorERKNS_5ColorE
.L64:
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movss	.LC9(%rip), %xmm0
	movq	%rax, %rdi
	call	_ZN2sf5Shape19setOutlineThicknessEf
	movq	-24(%rbp), %rax
	addq	$376, %rax
	movss	.LC9(%rip), %xmm0
	movq	%rax, %rdi
	call	_ZN2sf5Shape19setOutlineThicknessEf
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 12(%rax)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 28(%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf7Vector2IfEC1Eff
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN2sf14RectangleShape7setSizeERKNS_7Vector2IfEE
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf7Vector2IfEC1Eff
	movq	-24(%rbp), %rax
	leaq	376(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN2sf14RectangleShape7setSizeERKNS_7Vector2IfEE
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN2sf13Transformable11setPositionEff
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movq	-24(%rbp), %rax
	addq	$384, %rax
	movq	%rax, %rdi
	call	_ZN2sf13Transformable11setPositionEff
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L66
	call	__stack_chk_fail
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2027:
	.size	_ZN6blocks9setValuesEi, .-_ZN6blocks9setValuesEi
	.section	.text._ZN6blocks10moveBlocksEPS_,"axG",@progbits,_ZN6blocks10moveBlocksEPS_,comdat
	.weak	_ZN6blocks10moveBlocksEPS_
	.type	_ZN6blocks10moveBlocksEPS_, @function
_ZN6blocks10moveBlocksEPS_:
.LFB2028:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	_ZN6blocks6offsetE(%rip), %edx
	movl	speedValue(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, _ZN6blocks6offsetE(%rip)
	movl	$0, -4(%rbp)
	jmp	.L68
.L69:
	movl	-4(%rbp), %eax
	cltq
	imulq	$720, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	imull	-4(%rbp), %eax
	movl	%eax, %edx
	movl	_ZN6blocks6offsetE(%rip), %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	imulq	$720, %rax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN6blocks9setValuesEi
	addl	$1, -4(%rbp)
.L68:
	movl	blockCount(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L69
	movl	distanceCovered(%rip), %edx
	movl	speedValue(%rip), %eax
	addl	%edx, %eax
	movl	%eax, distanceCovered(%rip)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2028:
	.size	_ZN6blocks10moveBlocksEPS_, .-_ZN6blocks10moveBlocksEPS_
	.section	.text._ZN6blocks10drawBlocksEPS_RN2sf12RenderWindowE,"axG",@progbits,_ZN6blocks10drawBlocksEPS_RN2sf12RenderWindowE,comdat
	.weak	_ZN6blocks10drawBlocksEPS_RN2sf12RenderWindowE
	.type	_ZN6blocks10drawBlocksEPS_RN2sf12RenderWindowE, @function
_ZN6blocks10drawBlocksEPS_RN2sf12RenderWindowE:
.LFB2029:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L71
.L72:
	movl	-4(%rbp), %eax
	cltq
	imulq	$720, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	32(%rax), %rcx
	movq	-32(%rbp), %rax
	addq	$48, %rax
	movl	$_ZN2sf12RenderStates7DefaultE, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE
	movl	-4(%rbp), %eax
	cltq
	imulq	$720, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	376(%rax), %rcx
	movq	-32(%rbp), %rax
	addq	$48, %rax
	movl	$_ZN2sf12RenderStates7DefaultE, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE
	addl	$1, -4(%rbp)
.L71:
	movl	blockCount(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L72
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2029:
	.size	_ZN6blocks10drawBlocksEPS_RN2sf12RenderWindowE, .-_ZN6blocks10drawBlocksEPS_RN2sf12RenderWindowE
	.globl	_ZN6blocks6offsetE
	.bss
	.align 4
	.type	_ZN6blocks6offsetE, @object
	.size	_ZN6blocks6offsetE, 4
_ZN6blocks6offsetE:
	.zero	4
	.section	.text._ZN8powerupsC2Ev,"axG",@progbits,_ZN8powerupsC5Ev,comdat
	.align 2
	.weak	_ZN8powerupsC2Ev
	.type	_ZN8powerupsC2Ev, @function
_ZN8powerupsC2Ev:
.LFB2031:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2031
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN16objectAttirbutesC2Ev
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
.LEHB26:
	call	_ZN2sf7TextureC1Ev
.LEHE26:
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movl	$30, %esi
	pxor	%xmm0, %xmm0
	movq	%rax, %rdi
.LEHB27:
	call	_ZN2sf11CircleShapeC1Efj
.LEHE27:
	jmp	.L76
.L75:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN2sf7TextureD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB28:
	call	_Unwind_Resume
.LEHE28:
.L76:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2031:
	.section	.gcc_except_table._ZN8powerupsC2Ev,"aG",@progbits,_ZN8powerupsC5Ev,comdat
.LLSDA2031:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2031-.LLSDACSB2031
.LLSDACSB2031:
	.uleb128 .LEHB26-.LFB2031
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB2031
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L75-.LFB2031
	.uleb128 0
	.uleb128 .LEHB28-.LFB2031
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE2031:
	.section	.text._ZN8powerupsC2Ev,"axG",@progbits,_ZN8powerupsC5Ev,comdat
	.size	_ZN8powerupsC2Ev, .-_ZN8powerupsC2Ev
	.weak	_ZN8powerupsC1Ev
	.set	_ZN8powerupsC1Ev,_ZN8powerupsC2Ev
	.section	.text._ZN8powerupsD2Ev,"axG",@progbits,_ZN8powerupsD5Ev,comdat
	.align 2
	.weak	_ZN8powerupsD2Ev
	.type	_ZN8powerupsD2Ev, @function
_ZN8powerupsD2Ev:
.LFB2034:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2034
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
.LEHB29:
	call	_ZN2sf11CircleShapeD1Ev
.LEHE29:
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
.LEHB30:
	call	_ZN2sf7TextureD1Ev
.LEHE30:
	jmp	.L81
.L80:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN2sf7TextureD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB31:
	call	_Unwind_Resume
.LEHE31:
.L81:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2034:
	.section	.gcc_except_table._ZN8powerupsD2Ev,"aG",@progbits,_ZN8powerupsD5Ev,comdat
.LLSDA2034:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2034-.LLSDACSB2034
.LLSDACSB2034:
	.uleb128 .LEHB29-.LFB2034
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L80-.LFB2034
	.uleb128 0
	.uleb128 .LEHB30-.LFB2034
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB2034
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSE2034:
	.section	.text._ZN8powerupsD2Ev,"axG",@progbits,_ZN8powerupsD5Ev,comdat
	.size	_ZN8powerupsD2Ev, .-_ZN8powerupsD2Ev
	.weak	_ZN8powerupsD1Ev
	.set	_ZN8powerupsD1Ev,_ZN8powerupsD2Ev
	.section	.rodata
.LC10:
	.string	".pow"
	.section	.text._ZN8powerups16fileReadPowerupsEPS_,"axG",@progbits,_ZN8powerups16fileReadPowerupsEPS_,comdat
	.weak	_ZN8powerups16fileReadPowerupsEPS_
	.type	_ZN8powerups16fileReadPowerupsEPS_, @function
_ZN8powerups16fileReadPowerupsEPS_:
.LFB2036:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2036
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$600, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -600(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-560(%rbp), %rax
	movl	$levelNumber, %edx
	movl	$level, %esi
	movq	%rax, %rdi
.LEHB32:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE32:
	leaq	-576(%rbp), %rax
	leaq	-560(%rbp), %rcx
	movl	$.LC10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB33:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE33:
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
.LEHB34:
	call	_ZNSsD1Ev
.LEHE34:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
.LEHB35:
	call	_ZNKSs5c_strEv
	movq	%rax, %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE35:
	movl	$0, -580(%rbp)
	jmp	.L83
.L84:
	movl	$16, %esi
	movl	-580(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-600(%rbp), %rax
	addq	%rdx, %rax
	leaq	40(%rax), %rcx
	leaq	-544(%rbp), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB36:
	call	_ZNSi4readEPcl
	addl	$1, -580(%rbp)
.L83:
	movl	powerupCount(%rip), %eax
	cmpl	%eax, -580(%rbp)
	jl	.L84
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
.LEHE36:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
.LEHB37:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.LEHE37:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
.LEHB38:
	call	_ZNSsD1Ev
.LEHE38:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L89
	jmp	.L94
.L90:
	movq	%rax, %rbx
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB39:
	call	_Unwind_Resume
.LEHE39:
.L91:
	movq	%rax, %rbx
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB40:
	call	_Unwind_Resume
.LEHE40:
.L93:
	movq	%rax, %rbx
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	jmp	.L88
.L92:
	movq	%rax, %rbx
.L88:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB41:
	call	_Unwind_Resume
.LEHE41:
.L94:
	call	__stack_chk_fail
.L89:
	addq	$600, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2036:
	.section	.gcc_except_table._ZN8powerups16fileReadPowerupsEPS_,"aG",@progbits,_ZN8powerups16fileReadPowerupsEPS_,comdat
.LLSDA2036:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2036-.LLSDACSB2036
.LLSDACSB2036:
	.uleb128 .LEHB32-.LFB2036
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB33-.LFB2036
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L90-.LFB2036
	.uleb128 0
	.uleb128 .LEHB34-.LFB2036
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L91-.LFB2036
	.uleb128 0
	.uleb128 .LEHB35-.LFB2036
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L92-.LFB2036
	.uleb128 0
	.uleb128 .LEHB36-.LFB2036
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L93-.LFB2036
	.uleb128 0
	.uleb128 .LEHB37-.LFB2036
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L92-.LFB2036
	.uleb128 0
	.uleb128 .LEHB38-.LFB2036
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB39-.LFB2036
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB40-.LFB2036
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB41-.LFB2036
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
.LLSDACSE2036:
	.section	.text._ZN8powerups16fileReadPowerupsEPS_,"axG",@progbits,_ZN8powerups16fileReadPowerupsEPS_,comdat
	.size	_ZN8powerups16fileReadPowerupsEPS_, .-_ZN8powerups16fileReadPowerupsEPS_
	.section	.text._ZN8powerups9setValuesEv,"axG",@progbits,_ZN8powerups9setValuesEv,comdat
	.align 2
	.weak	_ZN8powerups9setValuesEv
	.type	_ZN8powerups9setValuesEv, @function
_ZN8powerups9setValuesEv:
.LFB2037:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN2sf11CircleShape9setRadiusEf
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	_ZN2sf13Transformable11setPositionEff
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movl	$_ZN2sf5Color4BlueE, %esi
	movq	%rax, %rdi
	call	_ZN2sf5Shape12setFillColorERKNS_5ColorE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2037:
	.size	_ZN8powerups9setValuesEv, .-_ZN8powerups9setValuesEv
	.section	.text._ZN8powerups11drawPowerupERN2sf12RenderWindowE,"axG",@progbits,_ZN8powerups11drawPowerupERN2sf12RenderWindowE,comdat
	.align 2
	.weak	_ZN8powerups11drawPowerupERN2sf12RenderWindowE
	.type	_ZN8powerups11drawPowerupERN2sf12RenderWindowE, @function
_ZN8powerups11drawPowerupERN2sf12RenderWindowE:
.LFB2038:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movl	$_ZN2sf12RenderStates7DefaultE, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2038:
	.size	_ZN8powerups11drawPowerupERN2sf12RenderWindowE, .-_ZN8powerups11drawPowerupERN2sf12RenderWindowE
	.section	.text._ZN8powerups15getPowerupCountEv,"axG",@progbits,_ZN8powerups15getPowerupCountEv,comdat
	.weak	_ZN8powerups15getPowerupCountEv
	.type	_ZN8powerups15getPowerupCountEv, @function
_ZN8powerups15getPowerupCountEv:
.LFB2039:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2039
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$568, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-560(%rbp), %rax
	movl	$levelNumber, %edx
	movl	$level, %esi
	movq	%rax, %rdi
.LEHB42:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE42:
	leaq	-576(%rbp), %rax
	leaq	-560(%rbp), %rcx
	movl	$.LC1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB43:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE43:
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
.LEHB44:
	call	_ZNSsD1Ev
.LEHE44:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
.LEHB45:
	call	_ZNKSs5c_strEv
	movq	%rax, %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE45:
	leaq	-544(%rbp), %rax
	movl	$powerupCount, %esi
	movq	%rax, %rdi
.LEHB46:
	call	_ZNSirsERi
	leaq	-544(%rbp), %rax
	movl	$powerupCount, %esi
	movq	%rax, %rdi
	call	_ZNSirsERi
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
.LEHE46:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
.LEHB47:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.LEHE47:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
.LEHB48:
	call	_ZNSsD1Ev
.LEHE48:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L102
	jmp	.L107
.L103:
	movq	%rax, %rbx
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB49:
	call	_Unwind_Resume
.LEHE49:
.L104:
	movq	%rax, %rbx
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB50:
	call	_Unwind_Resume
.LEHE50:
.L106:
	movq	%rax, %rbx
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	jmp	.L101
.L105:
	movq	%rax, %rbx
.L101:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB51:
	call	_Unwind_Resume
.LEHE51:
.L107:
	call	__stack_chk_fail
.L102:
	addq	$568, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2039:
	.section	.gcc_except_table._ZN8powerups15getPowerupCountEv,"aG",@progbits,_ZN8powerups15getPowerupCountEv,comdat
.LLSDA2039:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2039-.LLSDACSB2039
.LLSDACSB2039:
	.uleb128 .LEHB42-.LFB2039
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB43-.LFB2039
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L103-.LFB2039
	.uleb128 0
	.uleb128 .LEHB44-.LFB2039
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L104-.LFB2039
	.uleb128 0
	.uleb128 .LEHB45-.LFB2039
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L105-.LFB2039
	.uleb128 0
	.uleb128 .LEHB46-.LFB2039
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L106-.LFB2039
	.uleb128 0
	.uleb128 .LEHB47-.LFB2039
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L105-.LFB2039
	.uleb128 0
	.uleb128 .LEHB48-.LFB2039
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB49-.LFB2039
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB50-.LFB2039
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB51-.LFB2039
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
.LLSDACSE2039:
	.section	.text._ZN8powerups15getPowerupCountEv,"axG",@progbits,_ZN8powerups15getPowerupCountEv,comdat
	.size	_ZN8powerups15getPowerupCountEv, .-_ZN8powerups15getPowerupCountEv
	.section	.text._ZN8powerups11movePowerupEv,"axG",@progbits,_ZN8powerups11movePowerupEv,comdat
	.align 2
	.weak	_ZN8powerups11movePowerupEv
	.type	_ZN8powerups11movePowerupEv, @function
_ZN8powerups11movePowerupEv:
.LFB2040:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %edx
	movl	speedValue(%rip), %eax
	subl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	_ZN2sf13Transformable11setPositionEff
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2040:
	.size	_ZN8powerups11movePowerupEv, .-_ZN8powerups11movePowerupEv
	.section	.text._ZN3flyC2Ev,"axG",@progbits,_ZN3flyC5Ev,comdat
	.align 2
	.weak	_ZN3flyC2Ev
	.type	_ZN3flyC2Ev, @function
_ZN3flyC2Ev:
.LFB2042:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2042
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
.LEHB52:
	call	_ZN2sf7TextureC1Ev
.LEHE52:
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
.LEHB53:
	call	_ZN2sf6SpriteC1Ev
.LEHE53:
	movq	-24(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L112
.L111:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN2sf7TextureD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB54:
	call	_Unwind_Resume
.LEHE54:
.L112:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2042:
	.section	.gcc_except_table._ZN3flyC2Ev,"aG",@progbits,_ZN3flyC5Ev,comdat
.LLSDA2042:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2042-.LLSDACSB2042
.LLSDACSB2042:
	.uleb128 .LEHB52-.LFB2042
	.uleb128 .LEHE52-.LEHB52
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB53-.LFB2042
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L111-.LFB2042
	.uleb128 0
	.uleb128 .LEHB54-.LFB2042
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
.LLSDACSE2042:
	.section	.text._ZN3flyC2Ev,"axG",@progbits,_ZN3flyC5Ev,comdat
	.size	_ZN3flyC2Ev, .-_ZN3flyC2Ev
	.weak	_ZN3flyC1Ev
	.set	_ZN3flyC1Ev,_ZN3flyC2Ev
	.section	.text._ZN3flyD2Ev,"axG",@progbits,_ZN3flyD5Ev,comdat
	.align 2
	.weak	_ZN3flyD2Ev
	.type	_ZN3flyD2Ev, @function
_ZN3flyD2Ev:
.LFB2048:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2048
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
.LEHB55:
	call	_ZN2sf6SpriteD1Ev
.LEHE55:
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
.LEHB56:
	call	_ZN2sf7TextureD1Ev
.LEHE56:
	jmp	.L117
.L116:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN2sf7TextureD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB57:
	call	_Unwind_Resume
.LEHE57:
.L117:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2048:
	.section	.gcc_except_table._ZN3flyD2Ev,"aG",@progbits,_ZN3flyD5Ev,comdat
.LLSDA2048:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2048-.LLSDACSB2048
.LLSDACSB2048:
	.uleb128 .LEHB55-.LFB2048
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L116-.LFB2048
	.uleb128 0
	.uleb128 .LEHB56-.LFB2048
	.uleb128 .LEHE56-.LEHB56
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB57-.LFB2048
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
.LLSDACSE2048:
	.section	.text._ZN3flyD2Ev,"axG",@progbits,_ZN3flyD5Ev,comdat
	.size	_ZN3flyD2Ev, .-_ZN3flyD2Ev
	.weak	_ZN3flyD1Ev
	.set	_ZN3flyD1Ev,_ZN3flyD2Ev
	.section	.rodata
.LC11:
	.string	"\nI/O Error"
	.section	.text._ZN3fly9setValuesEiiPKcP6blocksi,"axG",@progbits,_ZN3fly9setValuesEiiPKcP6blocksi,comdat
	.align 2
	.weak	_ZN3fly9setValuesEiiPKcP6blocksi
	.type	_ZN3fly9setValuesEiiPKcP6blocksi, @function
_ZN3fly9setValuesEiiPKcP6blocksi:
.LFB2050:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2050
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	%edx, -96(%rbp)
	movq	%rcx, -104(%rbp)
	movq	%r8, -112(%rbp)
	movl	%r9d, -116(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movl	-92(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-112(%rbp), %rax
	addq	$720, %rax
	movl	8(%rax), %edx
	movq	-112(%rbp), %rax
	addq	$720, %rax
	movl	24(%rax), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 8(%rax)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf4RectIiEC1Ev
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-65(%rbp), %rdx
	movq	-104(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB58:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE58:
	movq	-88(%rbp), %rax
	leaq	16(%rax), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
.LEHB59:
	call	_ZN2sf7Texture12loadFromFileERKSsRKNS_4RectIiEE
.LEHE59:
	xorl	$1, %eax
	movl	%eax, %ebx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB60:
	call	_ZNSsD1Ev
.LEHE60:
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	testb	%bl, %bl
	je	.L119
	movl	$.LC11, %esi
	movl	$_ZSt4cout, %edi
.LEHB61:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L119:
	movq	-88(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-88(%rbp), %rax
	addq	$56, %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf6Sprite10setTextureERKNS_7TextureEb
	movq	-88(%rbp), %rax
	movl	-116(%rbp), %edx
	movl	%edx, 48(%rax)
	movq	-88(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	jne	.L120
	movl	$25, speedValue(%rip)
	jmp	.L121
.L120:
	movq	-88(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jne	.L122
	movl	$15, speedValue(%rip)
	jmp	.L121
.L122:
	movq	-88(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$2, %eax
	jne	.L121
	movl	$10, speedValue(%rip)
	movl	.LC12(%rip), %eax
	movl	%eax, gravity(%rip)
.L121:
	leaq	-48(%rbp), %rax
	movl	$255, %r8d
	movl	$255, %ecx
	movl	$255, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	_ZN2sf5ColorC1Ehhhh
	movq	-88(%rbp), %rax
	leaq	56(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN2sf6Sprite8setColorERKNS_5ColorE
.LEHE61:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L125
	jmp	.L128
.L127:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L124
.L126:
	movq	%rax, %rbx
.L124:
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB62:
	call	_Unwind_Resume
.LEHE62:
.L128:
	call	__stack_chk_fail
.L125:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2050:
	.section	.gcc_except_table._ZN3fly9setValuesEiiPKcP6blocksi,"aG",@progbits,_ZN3fly9setValuesEiiPKcP6blocksi,comdat
.LLSDA2050:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2050-.LLSDACSB2050
.LLSDACSB2050:
	.uleb128 .LEHB58-.LFB2050
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L126-.LFB2050
	.uleb128 0
	.uleb128 .LEHB59-.LFB2050
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L127-.LFB2050
	.uleb128 0
	.uleb128 .LEHB60-.LFB2050
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L126-.LFB2050
	.uleb128 0
	.uleb128 .LEHB61-.LFB2050
	.uleb128 .LEHE61-.LEHB61
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB62-.LFB2050
	.uleb128 .LEHE62-.LEHB62
	.uleb128 0
	.uleb128 0
.LLSDACSE2050:
	.section	.text._ZN3fly9setValuesEiiPKcP6blocksi,"axG",@progbits,_ZN3fly9setValuesEiiPKcP6blocksi,comdat
	.size	_ZN3fly9setValuesEiiPKcP6blocksi, .-_ZN3fly9setValuesEiiPKcP6blocksi
	.section	.text._ZN3fly8movementEfi,"axG",@progbits,_ZN3fly8movementEfi,comdat
	.align 2
	.weak	_ZN3fly8movementEfi
	.type	_ZN3fly8movementEfi, @function
_ZN3fly8movementEfi:
.LFB2051:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	.L130
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jne	.L131
.L130:
	cmpl	$1, -16(%rbp)
	jne	.L132
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0
	movss	.LC13(%rip), %xmm1
	subss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
.L132:
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm1
	movss	gravity(%rip), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L145
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC14(%rip), %xmm0
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
	jmp	.L131
.L145:
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0
	movss	gravity(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L131
	movl	gravity(%rip), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
.L131:
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$2, %eax
	jne	.L136
	cmpl	$1, -16(%rbp)
	jne	.L137
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC15(%rip), %xmm0
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
.L137:
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm1
	movss	gravity(%rip), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L146
	movl	gravity(%rip), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
	jmp	.L136
.L146:
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0
	movss	gravity(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L136
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0
	movss	.LC14(%rip), %xmm1
	subss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
.L136:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	-12(%rbp), %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	_ZN2sf13Transformable11setPositionEff
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2051:
	.size	_ZN3fly8movementEfi, .-_ZN3fly8movementEfi
	.section	.text._ZN3fly4jumpEf,"axG",@progbits,_ZN3fly4jumpEf,comdat
	.align 2
	.weak	_ZN3fly4jumpEf
	.type	_ZN3fly4jumpEf, @function
_ZN3fly4jumpEf:
.LFB2052:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movl	%edx, -16(%rbp)
	movss	-16(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZN3fly8movementEfi
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2052:
	.size	_ZN3fly4jumpEf, .-_ZN3fly4jumpEf
	.section	.rodata
.LC16:
	.string	"sprites/explosion.png"
	.section	.text._ZN3fly14collisionCheckEP6blocks,"axG",@progbits,_ZN3fly14collisionCheckEP6blocks,comdat
	.align 2
	.weak	_ZN3fly14collisionCheckEP6blocks
	.type	_ZN3fly14collisionCheckEP6blocks, @function
_ZN3fly14collisionCheckEP6blocks:
.LFB2053:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2053
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movl	$0, -148(%rbp)
	jmp	.L149
.L158:
	movl	$0, %ebx
	movl	$0, %r12d
	movl	$0, %r13d
	movl	$0, %r14d
	movl	-148(%rbp), %eax
	cltq
	imulq	$720, %rax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	addq	$32, %rax
	movq	%rax, %rdi
.LEHB63:
	call	_ZNK2sf5Shape15getGlobalBoundsEv
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movl	$1, %ebx
	movq	-168(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZNK2sf6Sprite15getGlobalBoundsEv
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movl	$1, %r12d
	leaq	-112(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK2sf4RectIfE10intersectsERKS1_
	testb	%al, %al
	jne	.L150
	movl	-148(%rbp), %eax
	cltq
	imulq	$720, %rax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	addq	$376, %rax
	movq	%rax, %rdi
	call	_ZNK2sf5Shape15getGlobalBoundsEv
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movl	$1, %r13d
	movq	-168(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZNK2sf6Sprite15getGlobalBoundsEv
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$1, %r14d
	leaq	-80(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK2sf4RectIfE10intersectsERKS1_
.LEHE63:
	testb	%al, %al
	je	.L151
.L150:
	movl	$1, %eax
	jmp	.L152
.L151:
	movl	$0, %eax
.L152:
	testb	%r14b, %r14b
	testb	%r13b, %r13b
	testb	%r12b, %r12b
	testb	%bl, %bl
	testb	%al, %al
	je	.L157
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf4RectIiEC1Ev
	leaq	-149(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-149(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
.LEHB64:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE64:
	movq	-168(%rbp), %rax
	leaq	16(%rax), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
.LEHB65:
	call	_ZN2sf7Texture12loadFromFileERKSsRKNS_4RectIiEE
.LEHE65:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
.LEHB66:
	call	_ZNSsD1Ev
.LEHE66:
	leaq	-149(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	-168(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-168(%rbp), %rax
	addq	$56, %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB67:
	call	_ZN2sf6Sprite10setTextureERKNS_7TextureEb
	movb	$1, crashed(%rip)
.L157:
	addl	$1, -148(%rbp)
.L149:
	movl	blockCount(%rip), %eax
	cmpl	%eax, -148(%rbp)
	jl	.L158
	movq	-40(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L166
	jmp	.L170
.L167:
	testb	%r14b, %r14b
	testb	%r13b, %r13b
	testb	%r12b, %r12b
	testb	%bl, %bl
	nop
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE67:
.L169:
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L165
.L168:
	movq	%rax, %rbx
.L165:
	leaq	-149(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB68:
	call	_Unwind_Resume
.LEHE68:
.L170:
	call	__stack_chk_fail
.L166:
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2053:
	.section	.gcc_except_table._ZN3fly14collisionCheckEP6blocks,"aG",@progbits,_ZN3fly14collisionCheckEP6blocks,comdat
.LLSDA2053:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2053-.LLSDACSB2053
.LLSDACSB2053:
	.uleb128 .LEHB63-.LFB2053
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L167-.LFB2053
	.uleb128 0
	.uleb128 .LEHB64-.LFB2053
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L168-.LFB2053
	.uleb128 0
	.uleb128 .LEHB65-.LFB2053
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L169-.LFB2053
	.uleb128 0
	.uleb128 .LEHB66-.LFB2053
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L168-.LFB2053
	.uleb128 0
	.uleb128 .LEHB67-.LFB2053
	.uleb128 .LEHE67-.LEHB67
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB68-.LFB2053
	.uleb128 .LEHE68-.LEHB68
	.uleb128 0
	.uleb128 0
.LLSDACSE2053:
	.section	.text._ZN3fly14collisionCheckEP6blocks,"axG",@progbits,_ZN3fly14collisionCheckEP6blocks,comdat
	.size	_ZN3fly14collisionCheckEP6blocks, .-_ZN3fly14collisionCheckEP6blocks
	.section	.text._ZN3fly14collisionCheckEP8powerupsRb,"axG",@progbits,_ZN3fly14collisionCheckEP8powerupsRb,comdat
	.align 2
	.weak	_ZN3fly14collisionCheckEP8powerupsRb
	.type	_ZN3fly14collisionCheckEP8powerupsRb, @function
_ZN3fly14collisionCheckEP8powerupsRb:
.LFB2054:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -52(%rbp)
	jmp	.L172
.L174:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZNK2sf5Shape15getGlobalBoundsEv
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-72(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZNK2sf6Sprite15getGlobalBoundsEv
	movq	%xmm0, %rax
	movq	%xmm1, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK2sf4RectIfE10intersectsERKS1_
	testb	%al, %al
	je	.L173
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L173
	movq	-88(%rbp), %rax
	movb	$1, (%rax)
.L173:
	addl	$1, -52(%rbp)
.L172:
	movl	powerupCount(%rip), %eax
	cmpl	%eax, -52(%rbp)
	jl	.L174
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L175
	call	__stack_chk_fail
.L175:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2054:
	.size	_ZN3fly14collisionCheckEP8powerupsRb, .-_ZN3fly14collisionCheckEP8powerupsRb
	.section	.rodata
.LC17:
	.string	"sprites/airplane.png"
.LC18:
	.string	"sprites/bird.png"
.LC19:
	.string	"sprites/balloon.png"
	.section	.text._ZN3fly10typeNumberESs,"axG",@progbits,_ZN3fly10typeNumberESs,comdat
	.weak	_ZN3fly10typeNumberESs
	.type	_ZN3fly10typeNumberESs, @function
_ZN3fly10typeNumberESs:
.LFB2055:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	je	.L177
	movl	$0, %eax
	jmp	.L178
.L177:
	movq	-8(%rbp), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	je	.L179
	movl	$1, %eax
	jmp	.L178
.L179:
	movq	-8(%rbp), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	je	.L180
	movl	$2, %eax
	jmp	.L178
.L180:
	movl	$-1, %eax
.L178:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2055:
	.size	_ZN3fly10typeNumberESs, .-_ZN3fly10typeNumberESs
	.section	.text._ZN3fly7flyTypeEv,"axG",@progbits,_ZN3fly7flyTypeEv,comdat
	.align 2
	.weak	_ZN3fly7flyTypeEv
	.type	_ZN3fly7flyTypeEv, @function
_ZN3fly7flyTypeEv:
.LFB2056:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2056:
	.size	_ZN3fly7flyTypeEv, .-_ZN3fly7flyTypeEv
	.globl	top
	.bss
	.align 8
	.type	top, @object
	.size	top, 8
top:
	.zero	8
	.globl	temp
	.align 8
	.type	temp, @object
	.size	temp, 8
temp:
	.zero	8
	.globl	save
	.align 8
	.type	save, @object
	.size	save, 8
save:
	.zero	8
	.section	.text._ZN10scoresListC2Ev,"axG",@progbits,_ZN10scoresListC5Ev,comdat
	.align 2
	.weak	_ZN10scoresListC2Ev
	.type	_ZN10scoresListC2Ev, @function
_ZN10scoresListC2Ev:
.LFB2058:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2058:
	.size	_ZN10scoresListC2Ev, .-_ZN10scoresListC2Ev
	.weak	_ZN10scoresListC1Ev
	.set	_ZN10scoresListC1Ev,_ZN10scoresListC2Ev
	.section	.text._ZN10scoresListD2Ev,"axG",@progbits,_ZN10scoresListD5Ev,comdat
	.align 2
	.weak	_ZN10scoresListD2Ev
	.type	_ZN10scoresListD2Ev, @function
_ZN10scoresListD2Ev:
.LFB2061:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2061:
	.size	_ZN10scoresListD2Ev, .-_ZN10scoresListD2Ev
	.weak	_ZN10scoresListD1Ev
	.set	_ZN10scoresListD1Ev,_ZN10scoresListD2Ev
	.section	.rodata
.LC20:
	.string	"data/scores.txt"
.LC21:
	.string	"\n"
	.section	.text._ZN10scoresList11writeScoresEi,"axG",@progbits,_ZN10scoresList11writeScoresEi,comdat
	.align 2
	.weak	_ZN10scoresList11writeScoresEi
	.type	_ZN10scoresList11writeScoresEi, @function
_ZN10scoresList11writeScoresEi:
.LFB2063:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2063
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$552, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -552(%rbp)
	movl	%esi, -556(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$1, %esi
	movl	$4, %edi
	call	_ZStorSt13_Ios_OpenmodeS_
	movl	%eax, %edx
	leaq	-544(%rbp), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
.LEHB69:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE69:
	leaq	-544(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB70:
	call	_ZNSo5seekpElSt12_Ios_Seekdir
	movl	-556(%rbp), %edx
	leaq	-544(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
.LEHE70:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
.LEHB71:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.LEHE71:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L188
	jmp	.L190
.L189:
	movq	%rax, %rbx
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB72:
	call	_Unwind_Resume
.LEHE72:
.L190:
	call	__stack_chk_fail
.L188:
	addq	$552, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2063:
	.section	.gcc_except_table._ZN10scoresList11writeScoresEi,"aG",@progbits,_ZN10scoresList11writeScoresEi,comdat
.LLSDA2063:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2063-.LLSDACSB2063
.LLSDACSB2063:
	.uleb128 .LEHB69-.LFB2063
	.uleb128 .LEHE69-.LEHB69
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB70-.LFB2063
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L189-.LFB2063
	.uleb128 0
	.uleb128 .LEHB71-.LFB2063
	.uleb128 .LEHE71-.LEHB71
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB72-.LFB2063
	.uleb128 .LEHE72-.LEHB72
	.uleb128 0
	.uleb128 0
.LLSDACSE2063:
	.section	.text._ZN10scoresList11writeScoresEi,"axG",@progbits,_ZN10scoresList11writeScoresEi,comdat
	.size	_ZN10scoresList11writeScoresEi, .-_ZN10scoresList11writeScoresEi
	.section	.text._ZN10scoresList8getNodesEv,"axG",@progbits,_ZN10scoresList8getNodesEv,comdat
	.align 2
	.weak	_ZN10scoresList8getNodesEv
	.type	_ZN10scoresList8getNodesEv, @function
_ZN10scoresList8getNodesEv:
.LFB2064:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2064
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$568, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -568(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movl	$.LC20, %esi
	movq	%rax, %rdi
.LEHB73:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE73:
	jmp	.L192
.L193:
	leaq	-548(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB74:
	call	_ZNSirsERi
	movl	-548(%rbp), %edx
	movq	-568(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN10scoresList10createNodeEi
	movq	%rax, %rdx
	movq	-568(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10scoresList10insertNodeEP4node
.L192:
	leaq	-544(%rbp), %rax
	addq	$256, %rax
	movq	%rax, %rdi
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE3eofEv
	xorl	$1, %eax
	testb	%al, %al
	jne	.L193
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
.LEHE74:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
.LEHB75:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.LEHE75:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L195
	jmp	.L197
.L196:
	movq	%rax, %rbx
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB76:
	call	_Unwind_Resume
.LEHE76:
.L197:
	call	__stack_chk_fail
.L195:
	addq	$568, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2064:
	.section	.gcc_except_table._ZN10scoresList8getNodesEv,"aG",@progbits,_ZN10scoresList8getNodesEv,comdat
.LLSDA2064:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2064-.LLSDACSB2064
.LLSDACSB2064:
	.uleb128 .LEHB73-.LFB2064
	.uleb128 .LEHE73-.LEHB73
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB74-.LFB2064
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L196-.LFB2064
	.uleb128 0
	.uleb128 .LEHB75-.LFB2064
	.uleb128 .LEHE75-.LEHB75
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB76-.LFB2064
	.uleb128 .LEHE76-.LEHB76
	.uleb128 0
	.uleb128 0
.LLSDACSE2064:
	.section	.text._ZN10scoresList8getNodesEv,"axG",@progbits,_ZN10scoresList8getNodesEv,comdat
	.size	_ZN10scoresList8getNodesEv, .-_ZN10scoresList8getNodesEv
	.section	.text._ZN10scoresList10createNodeEi,"axG",@progbits,_ZN10scoresList10createNodeEi,comdat
	.align 2
	.weak	_ZN10scoresList10createNodeEi
	.type	_ZN10scoresList10createNodeEi, @function
_ZN10scoresList10createNodeEi:
.LFB2065:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$16, %edi
	call	_Znwm
	movq	%rax, temp(%rip)
	movq	temp(%rip), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	temp(%rip), %rax
	movq	$0, 8(%rax)
	movq	temp(%rip), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2065:
	.size	_ZN10scoresList10createNodeEi, .-_ZN10scoresList10createNodeEi
	.section	.text._ZN10scoresList10insertNodeEP4node,"axG",@progbits,_ZN10scoresList10insertNodeEP4node,comdat
	.align 2
	.weak	_ZN10scoresList10insertNodeEP4node
	.type	_ZN10scoresList10insertNodeEP4node, @function
_ZN10scoresList10insertNodeEP4node:
.LFB2066:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	top(%rip), %rax
	testq	%rax, %rax
	jne	.L201
	movq	-16(%rbp), %rax
	movq	%rax, top(%rip)
	jmp	.L200
.L201:
	movq	top(%rip), %rax
	movq	%rax, save(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, top(%rip)
	movq	save(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
.L200:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2066:
	.size	_ZN10scoresList10insertNodeEP4node, .-_ZN10scoresList10insertNodeEP4node
	.section	.rodata
	.align 8
.LC22:
	.string	"Highest score over last 10 plays: "
	.section	.text._ZN10scoresList15displayAllNodesEP4node,"axG",@progbits,_ZN10scoresList15displayAllNodesEP4node,comdat
	.align 2
	.weak	_ZN10scoresList15displayAllNodesEP4node
	.type	_ZN10scoresList15displayAllNodesEP4node, @function
_ZN10scoresList15displayAllNodesEP4node:
.LFB2067:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L204
.L207:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-4(%rbp), %eax
	jle	.L205
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
.L205:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	addl	$1, -8(%rbp)
.L204:
	cmpq	$0, -32(%rbp)
	je	.L206
	cmpl	$10, -8(%rbp)
	jle	.L207
.L206:
	movl	$.LC22, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2067:
	.size	_ZN10scoresList15displayAllNodesEP4node, .-_ZN10scoresList15displayAllNodesEP4node
	.text
	.globl	_Z18checkLevelCompleteiRb
	.type	_Z18checkLevelCompleteiRb, @function
_Z18checkLevelCompleteiRb:
.LFB2068:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2068
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	blockCount(%rip), %eax
	imull	$100, %eax, %eax
	cmpl	-36(%rbp), %eax
	jg	.L209
	movb	$1, levelComplete(%rip)
	movq	-48(%rbp), %rax
	movb	$1, (%rax)
	movl	levelNum(%rip), %eax
	addl	$1, %eax
	movl	%eax, levelNum(%rip)
	movl	levelNum(%rip), %edx
	leaq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
.LEHB77:
	call	_Z9to_stringIiESsT_
.LEHE77:
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$levelNumber, %edi
.LEHB78:
	call	_ZNSsaSERKSs
.LEHE78:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
.LEHB79:
	call	_ZNSsD1Ev
.LEHE79:
	movl	$1, %eax
	jmp	.L210
.L209:
	movl	$0, %eax
.L210:
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L212
	jmp	.L214
.L213:
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB80:
	call	_Unwind_Resume
.LEHE80:
.L214:
	call	__stack_chk_fail
.L212:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2068:
	.section	.gcc_except_table,"a",@progbits
.LLSDA2068:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2068-.LLSDACSB2068
.LLSDACSB2068:
	.uleb128 .LEHB77-.LFB2068
	.uleb128 .LEHE77-.LEHB77
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB78-.LFB2068
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L213-.LFB2068
	.uleb128 0
	.uleb128 .LEHB79-.LFB2068
	.uleb128 .LEHE79-.LEHB79
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB80-.LFB2068
	.uleb128 .LEHE80-.LEHB80
	.uleb128 0
	.uleb128 0
.LLSDACSE2068:
	.text
	.size	_Z18checkLevelCompleteiRb, .-_Z18checkLevelCompleteiRb
	.section	.rodata
	.align 8
.LC23:
	.string	"\t       *                  **#"
	.align 8
.LC24:
	.string	"\tm mm  mmm     mmmm   mmm     #"
	.align 8
.LC25:
	.string	"\t#*  *   #    #* *#  #*  #    #"
	.align 8
.LC26:
	.string	"\t#       #    #   #  #****    #"
	.align 8
.LC27:
	.string	"\t#     mm#mm  *#m*#  *#mm*    *mm"
.LC28:
	.string	"\t\t      m  #               "
.LC29:
	.string	"\t\t       **        \t\t\t"
	.align 8
.LC30:
	.string	"\nRIGEL! A cross platform videogame"
.LC31:
	.string	"\nProgrammed by Arnav Dhamija"
	.align 8
.LC32:
	.string	"\n--------------------------------------------\n"
	.text
	.globl	_Z9gameTitlev
	.type	_Z9gameTitlev, @function
_Z9gameTitlev:
.LFB2069:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC23, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC24, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC25, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC26, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC27, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC28, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC29, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC30, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC31, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC32, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2069:
	.size	_Z9gameTitlev, .-_Z9gameTitlev
	.section	.rodata
.LC33:
	.string	"scores.txt"
	.text
	.globl	_Z12deleteScoresv
	.type	_Z12deleteScoresv, @function
_Z12deleteScoresv:
.LFB2070:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2070
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$536, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-544(%rbp), %rax
	movl	$32, %edx
	movl	$.LC33, %esi
	movq	%rax, %rdi
.LEHB81:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE81:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
.LEHB82:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
.LEHE82:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
.LEHB83:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.LEHE83:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L218
	jmp	.L220
.L219:
	movq	%rax, %rbx
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB84:
	call	_Unwind_Resume
.LEHE84:
.L220:
	call	__stack_chk_fail
.L218:
	addq	$536, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2070:
	.section	.gcc_except_table
.LLSDA2070:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2070-.LLSDACSB2070
.LLSDACSB2070:
	.uleb128 .LEHB81-.LFB2070
	.uleb128 .LEHE81-.LEHB81
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB82-.LFB2070
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L219-.LFB2070
	.uleb128 0
	.uleb128 .LEHB83-.LFB2070
	.uleb128 .LEHE83-.LEHB83
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB84-.LFB2070
	.uleb128 .LEHE84-.LEHB84
	.uleb128 0
	.uleb128 0
.LLSDACSE2070:
	.text
	.size	_Z12deleteScoresv, .-_Z12deleteScoresv
	.section	.rodata
.LC34:
	.string	"\nSelect option:\n\n"
.LC35:
	.string	"1 - PLAY!\n"
.LC36:
	.string	"2 - Choose aircraft\n"
.LC37:
	.string	"3 - Scores\n"
.LC38:
	.string	"4 - Clear score history\n"
.LC39:
	.string	"5 - Controls\n"
.LC40:
	.string	"6 - Select Level\n"
.LC41:
	.string	"7 - About\n"
.LC42:
	.string	"8 - Exit\n"
	.align 8
.LC43:
	.string	"a - Airplane (default): The Airplane is faster than the other two and provides a decent multiplier.\n"
	.align 8
.LC44:
	.string	"b - Twitter Bird: For new players; the Twitter Bird is slower than an Airplane.\n"
	.align 8
.LC45:
	.string	"c - Helium Balloon: For experienced players; the Helium Balloon inverts controls!\n"
.LC46:
	.string	"sprites/airplane"
.LC47:
	.string	"sprites/bird"
.LC48:
	.string	"sprites/balloon"
.LC49:
	.string	"Previous 10 scores:\n"
.LC50:
	.string	"Previous scores deleted.\n"
	.align 8
.LC51:
	.string	"Press <SPACE> to jump, P to pause.\n"
.LC52:
	.string	"Select level (0 -> 9)\n"
.LC53:
	.string	"\nLevel "
.LC54:
	.string	" selected\n"
	.align 8
.LC55:
	.string	"No such level! Please try again!\n"
	.text
	.globl	_Z4menuRbRSs10scoresList
	.type	_Z4menuRbRSs10scoresList, @function
_Z4menuRbRSs10scoresList:
.LFB2071:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2071
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$.LC34, %esi
	movl	$_ZSt4cout, %edi
.LEHB85:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC35, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC36, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC37, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC38, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC39, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC40, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC41, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC42, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSirsERi
	movl	-40(%rbp), %eax
	cmpl	$8, %eax
	ja	.L222
	movl	%eax, %eax
	movq	.L224(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L224:
	.quad	.L222
	.quad	.L223
	.quad	.L225
	.quad	.L226
	.quad	.L227
	.quad	.L228
	.quad	.L229
	.quad	.L230
	.quad	.L231
	.text
.L223:
	movq	-56(%rbp), %rax
	movb	$1, (%rax)
	jmp	.L222
.L225:
	movl	$.LC43, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC44, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC45, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt3cin, %edi
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_
	movzbl	-32(%rbp), %eax
	movsbl	%al, %eax
	cmpl	$98, %eax
	je	.L233
	cmpl	$99, %eax
	je	.L234
	cmpl	$97, %eax
	je	.L235
	jmp	.L222
.L235:
	movq	-64(%rbp), %rax
	movl	$.LC46, %esi
	movq	%rax, %rdi
	call	_ZNSsaSEPKc
	jmp	.L232
.L233:
	movq	-64(%rbp), %rax
	movl	$.LC47, %esi
	movq	%rax, %rdi
	call	_ZNSsaSEPKc
	jmp	.L232
.L234:
	movq	-64(%rbp), %rax
	movl	$.LC48, %esi
	movq	%rax, %rdi
	call	_ZNSsaSEPKc
	nop
.L232:
	jmp	.L222
.L226:
	movl	$.LC49, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10scoresList8getNodesEv
	movq	top(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10scoresList15displayAllNodesEP4node
	movq	$0, top(%rip)
	jmp	.L222
.L227:
	call	_Z12deleteScoresv
	movl	$.LC50, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L222
.L228:
	movl	$.LC51, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L222
.L229:
	movl	$.LC52, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-36(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSirsERi
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	js	.L236
	movl	-36(%rbp), %eax
	cmpl	$9, %eax
	jg	.L236
	movl	-36(%rbp), %eax
	movl	%eax, levelNum(%rip)
	movl	-36(%rbp), %edx
	leaq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z9to_stringIiESsT_
.LEHE85:
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$levelNumber, %edi
.LEHB86:
	call	_ZNSsaSERKSs
.LEHE86:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
.LEHB87:
	call	_ZNSsD1Ev
	movl	-36(%rbp), %ebx
	movl	$.LC53, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC54, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L222
.L236:
	movl	$.LC55, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L222
.L230:
	call	_Z9gameTitlev
.LEHE87:
	jmp	.L222
.L231:
	movl	$1, %eax
	jmp	.L239
.L222:
	movl	$0, %eax
.L239:
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L241
	jmp	.L243
.L242:
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB88:
	call	_Unwind_Resume
.LEHE88:
.L243:
	call	__stack_chk_fail
.L241:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2071:
	.section	.gcc_except_table
.LLSDA2071:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2071-.LLSDACSB2071
.LLSDACSB2071:
	.uleb128 .LEHB85-.LFB2071
	.uleb128 .LEHE85-.LEHB85
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB86-.LFB2071
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L242-.LFB2071
	.uleb128 0
	.uleb128 .LEHB87-.LFB2071
	.uleb128 .LEHE87-.LEHB87
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB88-.LFB2071
	.uleb128 .LEHE88-.LEHB88
	.uleb128 0
	.uleb128 0
.LLSDACSE2071:
	.text
	.size	_Z4menuRbRSs10scoresList, .-_Z4menuRbRSs10scoresList
	.section	.rodata
.LC56:
	.string	"data/level"
.LC57:
	.string	"images/background"
.LC58:
	.string	"data/font.ttf"
	.text
	.globl	_Z10checkFilesv
	.type	_Z10checkFilesv, @function
_Z10checkFilesv:
.LFB2072:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2072
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1256, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-1248(%rbp), %rax
	movq	%rax, %rdi
.LEHB89:
	call	_ZNSsC1Ev
.LEHE89:
	leaq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-1072(%rbp), %rdx
	leaq	-1232(%rbp), %rax
	movl	$.LC56, %esi
	movq	%rax, %rdi
.LEHB90:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE90:
	leaq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-1072(%rbp), %rdx
	leaq	-1216(%rbp), %rax
	movl	$.LC57, %esi
	movq	%rax, %rdi
.LEHB91:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE91:
	leaq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
.LEHB92:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev
.LEHE92:
	leaq	-1056(%rbp), %rax
	movq	%rax, %rdi
.LEHB93:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev
.LEHE93:
	movl	$0, -1252(%rbp)
	jmp	.L245
.L250:
	leaq	-1200(%rbp), %rax
	movl	-1252(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
.LEHB94:
	call	_Z9to_stringIiESsT_
.LEHE94:
	leaq	-1184(%rbp), %rax
	leaq	-1200(%rbp), %rdx
	leaq	-1232(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB95:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE95:
	leaq	-1168(%rbp), %rax
	leaq	-1184(%rbp), %rcx
	movl	$.LC1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB96:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE96:
	leaq	-1168(%rbp), %rdx
	leaq	-1248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB97:
	call	_ZNSsaSERKSs
.LEHE97:
	leaq	-1168(%rbp), %rax
	movq	%rax, %rdi
.LEHB98:
	call	_ZNSsD1Ev
.LEHE98:
	leaq	-1184(%rbp), %rax
	movq	%rax, %rdi
.LEHB99:
	call	_ZNSsD1Ev
.LEHE99:
	leaq	-1200(%rbp), %rax
	movq	%rax, %rdi
.LEHB100:
	call	_ZNSsD1Ev
	leaq	-1248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSs5c_strEv
	movq	%rax, %rcx
	leaq	-544(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	leaq	-544(%rbp), %rax
	addq	$256, %rax
	movq	%rax, %rdi
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L246
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
	movl	$0, %ebx
	jmp	.L247
.L246:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
	leaq	-1152(%rbp), %rax
	movl	-1252(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z9to_stringIiESsT_
.LEHE100:
	leaq	-1136(%rbp), %rax
	leaq	-1152(%rbp), %rdx
	leaq	-1232(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB101:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE101:
	leaq	-1120(%rbp), %rax
	leaq	-1136(%rbp), %rcx
	movl	$.LC2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB102:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE102:
	leaq	-1120(%rbp), %rdx
	leaq	-1248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB103:
	call	_ZNSsaSERKSs
.LEHE103:
	leaq	-1120(%rbp), %rax
	movq	%rax, %rdi
.LEHB104:
	call	_ZNSsD1Ev
.LEHE104:
	leaq	-1136(%rbp), %rax
	movq	%rax, %rdi
.LEHB105:
	call	_ZNSsD1Ev
.LEHE105:
	leaq	-1152(%rbp), %rax
	movq	%rax, %rdi
.LEHB106:
	call	_ZNSsD1Ev
	leaq	-1248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSs5c_strEv
	movq	%rax, %rcx
	leaq	-544(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	leaq	-544(%rbp), %rax
	addq	$256, %rax
	movq	%rax, %rdi
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L248
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
	movl	$0, %ebx
	jmp	.L247
.L248:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
	leaq	-1104(%rbp), %rax
	movl	-1252(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z9to_stringIiESsT_
.LEHE106:
	leaq	-1088(%rbp), %rax
	leaq	-1104(%rbp), %rdx
	leaq	-1232(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB107:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
.LEHE107:
	leaq	-1072(%rbp), %rax
	leaq	-1088(%rbp), %rcx
	movl	$.LC10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB108:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE108:
	leaq	-1072(%rbp), %rdx
	leaq	-1248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB109:
	call	_ZNSsaSERKSs
.LEHE109:
	leaq	-1072(%rbp), %rax
	movq	%rax, %rdi
.LEHB110:
	call	_ZNSsD1Ev
.LEHE110:
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
.LEHB111:
	call	_ZNSsD1Ev
.LEHE111:
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
.LEHB112:
	call	_ZNSsD1Ev
	leaq	-1248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSs5c_strEv
	movq	%rax, %rcx
	leaq	-544(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	leaq	-544(%rbp), %rax
	addq	$256, %rax
	movq	%rax, %rdi
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L249
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
	movl	$0, %ebx
	jmp	.L247
.L249:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
	addl	$1, -1252(%rbp)
.L245:
	cmpl	$9, -1252(%rbp)
	jle	.L250
	leaq	-1248(%rbp), %rax
	movl	$.LC58, %esi
	movq	%rax, %rdi
	call	_ZNSsaSEPKc
	leaq	-1248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSs5c_strEv
	movq	%rax, %rcx
	leaq	-544(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	leaq	-544(%rbp), %rax
	addq	$256, %rax
	movq	%rax, %rdi
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L251
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
	movl	$0, %ebx
	jmp	.L247
.L251:
	leaq	-1248(%rbp), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	_ZNSsaSEPKc
	leaq	-1248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSs5c_strEv
	movq	%rax, %rcx
	leaq	-544(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	leaq	-544(%rbp), %rax
	addq	$256, %rax
	movq	%rax, %rdi
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L252
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
	movl	$32, %esi
	movl	$4, %edi
	call	_ZStorSt13_Ios_OpenmodeS_
	movl	%eax, %ebx
	leaq	-1248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSs5c_strEv
	movq	%rax, %rcx
	leaq	-1056(%rbp), %rax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	leaq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
.LEHE112:
.L252:
	movl	$1, %ebx
.L247:
	leaq	-1056(%rbp), %rax
	movq	%rax, %rdi
.LEHB113:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.LEHE113:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
.LEHB114:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.LEHE114:
	leaq	-1216(%rbp), %rax
	movq	%rax, %rdi
.LEHB115:
	call	_ZNSsD1Ev
.LEHE115:
	leaq	-1232(%rbp), %rax
	movq	%rax, %rdi
.LEHB116:
	call	_ZNSsD1Ev
.LEHE116:
	leaq	-1248(%rbp), %rax
	movq	%rax, %rdi
.LEHB117:
	call	_ZNSsD1Ev
.LEHE117:
	movl	%ebx, %eax
	movq	-24(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L270
	jmp	.L287
.L271:
	movq	%rax, %rbx
	leaq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L255
.L273:
	movq	%rax, %rbx
	leaq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L257
.L280:
	movq	%rax, %rbx
	leaq	-1168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L259
.L279:
	movq	%rax, %rbx
.L259:
	leaq	-1184(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L260
.L278:
	movq	%rax, %rbx
.L260:
	leaq	-1200(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L261
.L283:
	movq	%rax, %rbx
	leaq	-1120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L263
.L282:
	movq	%rax, %rbx
.L263:
	leaq	-1136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L264
.L281:
	movq	%rax, %rbx
.L264:
	leaq	-1152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L261
.L286:
	movq	%rax, %rbx
	leaq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L266
.L285:
	movq	%rax, %rbx
.L266:
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L267
.L284:
	movq	%rax, %rbx
.L267:
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L261
.L277:
	movq	%rax, %rbx
.L261:
	leaq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.L268
.L276:
	movq	%rax, %rbx
.L268:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	jmp	.L269
.L275:
	movq	%rax, %rbx
.L269:
	leaq	-1216(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L257
.L274:
	movq	%rax, %rbx
.L257:
	leaq	-1232(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L255
.L272:
	movq	%rax, %rbx
.L255:
	leaq	-1248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB118:
	call	_Unwind_Resume
.LEHE118:
.L287:
	call	__stack_chk_fail
.L270:
	addq	$1256, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2072:
	.section	.gcc_except_table
.LLSDA2072:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2072-.LLSDACSB2072
.LLSDACSB2072:
	.uleb128 .LEHB89-.LFB2072
	.uleb128 .LEHE89-.LEHB89
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB90-.LFB2072
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L271-.LFB2072
	.uleb128 0
	.uleb128 .LEHB91-.LFB2072
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L273-.LFB2072
	.uleb128 0
	.uleb128 .LEHB92-.LFB2072
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L275-.LFB2072
	.uleb128 0
	.uleb128 .LEHB93-.LFB2072
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L276-.LFB2072
	.uleb128 0
	.uleb128 .LEHB94-.LFB2072
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L277-.LFB2072
	.uleb128 0
	.uleb128 .LEHB95-.LFB2072
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L278-.LFB2072
	.uleb128 0
	.uleb128 .LEHB96-.LFB2072
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L279-.LFB2072
	.uleb128 0
	.uleb128 .LEHB97-.LFB2072
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L280-.LFB2072
	.uleb128 0
	.uleb128 .LEHB98-.LFB2072
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L279-.LFB2072
	.uleb128 0
	.uleb128 .LEHB99-.LFB2072
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L278-.LFB2072
	.uleb128 0
	.uleb128 .LEHB100-.LFB2072
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L277-.LFB2072
	.uleb128 0
	.uleb128 .LEHB101-.LFB2072
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L281-.LFB2072
	.uleb128 0
	.uleb128 .LEHB102-.LFB2072
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L282-.LFB2072
	.uleb128 0
	.uleb128 .LEHB103-.LFB2072
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L283-.LFB2072
	.uleb128 0
	.uleb128 .LEHB104-.LFB2072
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L282-.LFB2072
	.uleb128 0
	.uleb128 .LEHB105-.LFB2072
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L281-.LFB2072
	.uleb128 0
	.uleb128 .LEHB106-.LFB2072
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L277-.LFB2072
	.uleb128 0
	.uleb128 .LEHB107-.LFB2072
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L284-.LFB2072
	.uleb128 0
	.uleb128 .LEHB108-.LFB2072
	.uleb128 .LEHE108-.LEHB108
	.uleb128 .L285-.LFB2072
	.uleb128 0
	.uleb128 .LEHB109-.LFB2072
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L286-.LFB2072
	.uleb128 0
	.uleb128 .LEHB110-.LFB2072
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L285-.LFB2072
	.uleb128 0
	.uleb128 .LEHB111-.LFB2072
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L284-.LFB2072
	.uleb128 0
	.uleb128 .LEHB112-.LFB2072
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L277-.LFB2072
	.uleb128 0
	.uleb128 .LEHB113-.LFB2072
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L276-.LFB2072
	.uleb128 0
	.uleb128 .LEHB114-.LFB2072
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L275-.LFB2072
	.uleb128 0
	.uleb128 .LEHB115-.LFB2072
	.uleb128 .LEHE115-.LEHB115
	.uleb128 .L274-.LFB2072
	.uleb128 0
	.uleb128 .LEHB116-.LFB2072
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L272-.LFB2072
	.uleb128 0
	.uleb128 .LEHB117-.LFB2072
	.uleb128 .LEHE117-.LEHB117
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB118-.LFB2072
	.uleb128 .LEHE118-.LEHB118
	.uleb128 0
	.uleb128 0
.LLSDACSE2072:
	.text
	.size	_Z10checkFilesv, .-_Z10checkFilesv
	.section	.text._ZN2sf6StringD2Ev,"axG",@progbits,_ZN2sf6StringD5Ev,comdat
	.align 2
	.weak	_ZN2sf6StringD2Ev
	.type	_ZN2sf6StringD2Ev, @function
_ZN2sf6StringD2Ev:
.LFB2075:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSbIjSt11char_traitsIjESaIjEED1Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2075:
	.size	_ZN2sf6StringD2Ev, .-_ZN2sf6StringD2Ev
	.weak	_ZN2sf6StringD1Ev
	.set	_ZN2sf6StringD1Ev,_ZN2sf6StringD2Ev
	.section	.rodata
	.align 8
.LC59:
	.string	"\nI/O Error. It looks like there are some missing files. Check whether all the folders are present. Running the levelRNG program again might fix this."
.LC60:
	.string	".png"
.LC61:
	.string	"rigel"
.LC62:
	.string	".jpg"
.LC63:
	.string	"SCORE: "
.LC65:
	.string	"LEVEL COMPLETE!"
.LC68:
	.string	"CRASHED!"
.LC69:
	.string	"DOUBLE SCORE!"
.LC71:
	.string	"MULTIPLIER: "
.LC75:
	.string	"GAME PAUSED"
.LC77:
	.string	"Score: "
	.align 8
.LC78:
	.string	"\nCongratulations on finishing! :)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2073:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2073
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$3960, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -3988(%rbp)
	movq	%rsi, -4000(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	leaq	-3936(%rbp), %rax
	movq	%rax, %rdi
.LEHB119:
	call	_ZN2sf5ClockC1Ev
	leaq	-3520(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf7TextureC1Ev
.LEHE119:
	leaq	-1200(%rbp), %rax
	movq	%rax, %rdi
.LEHB120:
	call	_ZN2sf6SpriteC1Ev
.LEHE120:
	leaq	-3920(%rbp), %rax
	movq	%rax, %rdi
.LEHB121:
	call	_ZNSsC1Ev
.LEHE121:
	leaq	-3904(%rbp), %rax
	movq	%rax, %rdi
.LEHB122:
	call	_ZNSsC1Ev
.LEHE122:
	leaq	-3974(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10scoresListC1Ev
	movb	$1, -3973(%rbp)
	movb	$0, -3972(%rbp)
	movb	$1, -3969(%rbp)
	movb	$0, -3971(%rbp)
	movb	$0, -3970(%rbp)
	movl	$0, -3948(%rbp)
	movl	$0, -3952(%rbp)
	movb	$1, -3973(%rbp)
	movb	$0, -3972(%rbp)
	movl	$0, -3948(%rbp)
	leaq	-3488(%rbp), %rax
	movq	%rax, %rdi
.LEHB123:
	call	_ZN2sf4FontC1Ev
.LEHE123:
	leaq	-3376(%rbp), %rax
	movq	%rax, %rdi
.LEHB124:
	call	_ZN2sf4TextC1Ev
.LEHE124:
	leaq	-3104(%rbp), %rax
	movq	%rax, %rdi
.LEHB125:
	call	_ZN2sf4TextC1Ev
.LEHE125:
	leaq	-2832(%rbp), %rax
	movq	%rax, %rdi
.LEHB126:
	call	_ZN2sf4TextC1Ev
.LEHE126:
	leaq	-2560(%rbp), %rax
	movq	%rax, %rdi
.LEHB127:
	call	_ZN2sf4TextC1Ev
.LEHE127:
	leaq	-2288(%rbp), %rax
	movq	%rax, %rdi
.LEHB128:
	call	_ZN2sf4TextC1Ev
.LEHE128:
	leaq	-2016(%rbp), %rax
	movq	%rax, %rdi
.LEHB129:
	call	_ZN2sf4TextC1Ev
.LEHE129:
	leaq	-1744(%rbp), %rax
	movq	%rax, %rdi
.LEHB130:
	call	_ZN2sf4TextC1Ev
.LEHE130:
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
.LEHB131:
	call	_ZN2sf4TextC1Ev
.LEHE131:
	movl	_ZN2sf5Color5WhiteE(%rip), %eax
	movl	%eax, -3968(%rbp)
	leaq	-912(%rbp), %rax
	movq	%rax, %rdi
.LEHB132:
	call	_ZN3flyC1Ev
.LEHE132:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-3552(%rbp), %rdx
	leaq	-3888(%rbp), %rax
	movl	$.LC46, %esi
	movq	%rax, %rdi
.LEHB133:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE133:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
.LEHB134:
	call	_Z9gameTitlev
	movl	$.LC3, %esi
	movl	$levelNumber, %edi
	call	_ZNSsaSEPKc
	movl	$0, levelNum(%rip)
	call	_Z10checkFilesv
	xorl	$1, %eax
	testb	%al, %al
	je	.L291
	movl	$.LC59, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE134:
	movl	$1, %ebx
	jmp	.L292
.L291:
	jmp	.L293
.L294:
	leaq	-3552(%rbp), %rdx
	leaq	-3888(%rbp), %rcx
	leaq	-3971(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB135:
	call	_Z4menuRbRSs10scoresList
.LEHE135:
	cmpl	$1, %eax
	sete	%bl
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10scoresListD1Ev
	testb	%bl, %bl
	je	.L293
	movl	$0, %ebx
	jmp	.L292
.L293:
	movzbl	-3971(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L294
	leaq	-3888(%rbp), %rax
	movl	$.LC60, %esi
	movq	%rax, %rdi
.LEHB136:
	call	_ZNSspLEPKc
.LEHE136:
	leaq	-3552(%rbp), %rax
	movl	$0, %r9d
	movl	$2, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN2sf15ContextSettingsC1Ejjjjj
	leaq	-3600(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeC1Ev
	leaq	-3600(%rbp), %rdx
	leaq	-3872(%rbp), %rax
	movl	$.LC61, %esi
	movq	%rax, %rdi
.LEHB137:
	call	_ZN2sf6StringC1EPKcRKSt6locale
.LEHE137:
	leaq	-3568(%rbp), %rax
	movl	$32, %ecx
	movl	$720, %edx
	movl	$1280, %esi
	movq	%rax, %rdi
.LEHB138:
	call	_ZN2sf9VideoModeC1Ejjj
	leaq	-3552(%rbp), %rdi
	leaq	-3872(%rbp), %rcx
	movq	-3568(%rbp), %rsi
	movl	-3560(%rbp), %edx
	leaq	-560(%rbp), %rax
	movq	%rdi, %r9
	movl	$7, %r8d
	movq	%rax, %rdi
	call	_ZN2sf12RenderWindowC1ENS_9VideoModeERKNS_6StringEjRKNS_15ContextSettingsE
.LEHE138:
	leaq	-3872(%rbp), %rax
	movq	%rax, %rdi
.LEHB139:
	call	_ZN2sf6StringD1Ev
.LEHE139:
	leaq	-3600(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	leaq	-560(%rbp), %rax
	movl	$60, %esi
	movq	%rax, %rdi
.LEHB140:
	call	_ZN2sf6Window17setFramerateLimitEj
	jmp	.L295
.L332:
	movl	$.LC4, %esi
	movl	$levelNumber, %edi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	jne	.L296
	movl	$.LC5, %esi
	movl	$levelNumber, %edi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	je	.L297
.L296:
	movl	$1, %eax
	jmp	.L298
.L297:
	movl	$0, %eax
.L298:
	testb	%al, %al
	je	.L299
	movl	_ZN2sf5Color5BlackE(%rip), %eax
	movl	%eax, -3968(%rbp)
	jmp	.L300
.L299:
	movl	_ZN2sf5Color5WhiteE(%rip), %eax
	movl	%eax, -3968(%rbp)
.L300:
	leaq	-3856(%rbp), %rax
	movl	$levelNumber, %edx
	movl	$.LC57, %esi
	movq	%rax, %rdi
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_
.LEHE140:
	leaq	-3840(%rbp), %rax
	leaq	-3856(%rbp), %rcx
	movl	$.LC62, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB141:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE141:
	leaq	-3840(%rbp), %rax
	movq	%rax, %rsi
	movl	$backgroundFile, %edi
.LEHB142:
	call	_ZNSsaSERKSs
.LEHE142:
	leaq	-3840(%rbp), %rax
	movq	%rax, %rdi
.LEHB143:
	call	_ZNSsD1Ev
.LEHE143:
	leaq	-3856(%rbp), %rax
	movq	%rax, %rdi
.LEHB144:
	call	_ZNSsD1Ev
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf4RectIiEC1Ev
	leaq	-3552(%rbp), %rdx
	leaq	-3520(%rbp), %rax
	movl	$backgroundFile, %esi
	movq	%rax, %rdi
	call	_ZN2sf7Texture12loadFromFileERKSsRKNS_4RectIiEE
	leaq	-3520(%rbp), %rcx
	leaq	-1200(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf6Sprite10setTextureERKNS_7TextureEb
	call	_ZN6blocks13getBlockCountEv
	movl	blockCount(%rip), %eax
	movslq	%eax, %rbx
	movabsq	$12807111440334848, %rax
	cmpq	%rax, %rbx
	ja	.L301
	imulq	$720, %rbx, %rax
	addq	$8, %rax
	jmp	.L302
.L301:
	movq	$-1, %rax
.L302:
	movq	%rax, %rdi
	call	_Znam
.LEHE144:
	movq	%rax, %r13
	movq	%rbx, 0(%r13)
	leaq	8(%r13), %r12
	leaq	-1(%rbx), %rax
	movq	%rax, %r14
	movq	%r12, %r15
	jmp	.L303
.L304:
	movq	%r15, %rdi
.LEHB145:
	call	_ZN6blocksC1Ev
.LEHE145:
	addq	$720, %r15
	subq	$1, %r14
.L303:
	cmpq	$-1, %r14
	jne	.L304
	leaq	8(%r13), %rax
	movq	%rax, -3584(%rbp)
	movq	-3584(%rbp), %rax
	movq	%rax, %rdi
.LEHB146:
	call	_ZN6blocks8fileReadEPS_
	movq	-3584(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6blocks10moveBlocksEPS_
	leaq	-3888(%rbp), %rdx
	leaq	-3824(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSsC1ERKSs
.LEHE146:
	leaq	-3824(%rbp), %rax
	movq	%rax, %rdi
.LEHB147:
	call	_ZN3fly10typeNumberESs
	movl	%eax, %ebx
	leaq	-3888(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSs5c_strEv
	movq	%rax, %rcx
	movq	-3584(%rbp), %rdx
	leaq	-912(%rbp), %rax
	movl	%ebx, %r9d
	movq	%rdx, %r8
	movl	$300, %edx
	movl	$190, %esi
	movq	%rax, %rdi
	call	_ZN3fly9setValuesEiiPKcP6blocksi
.LEHE147:
	leaq	-3824(%rbp), %rax
	movq	%rax, %rdi
.LEHB148:
	call	_ZNSsD1Ev
.LEHE148:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-3552(%rbp), %rdx
	leaq	-3808(%rbp), %rax
	movl	$.LC58, %esi
	movq	%rax, %rdi
.LEHB149:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE149:
	leaq	-3808(%rbp), %rdx
	leaq	-3488(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB150:
	call	_ZN2sf4Font12loadFromFileERKSs
.LEHE150:
	leaq	-3808(%rbp), %rax
	movq	%rax, %rdi
.LEHB151:
	call	_ZNSsD1Ev
.LEHE151:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-3488(%rbp), %rdx
	leaq	-3376(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB152:
	call	_ZN2sf4Text7setFontERKNS_4FontE
	leaq	-3376(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	_ZN2sf4Text16setCharacterSizeEj
	leaq	-3968(%rbp), %rdx
	leaq	-3376(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf4Text8setColorERKNS_5ColorE
.LEHE152:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeC1Ev
	leaq	-3552(%rbp), %rdx
	leaq	-3792(%rbp), %rax
	movl	$.LC63, %esi
	movq	%rax, %rdi
.LEHB153:
	call	_ZN2sf6StringC1EPKcRKSt6locale
.LEHE153:
	leaq	-3792(%rbp), %rdx
	leaq	-3376(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB154:
	call	_ZN2sf4Text9setStringERKNS_6StringE
.LEHE154:
	leaq	-3792(%rbp), %rax
	movq	%rax, %rdi
.LEHB155:
	call	_ZN2sf6StringD1Ev
.LEHE155:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	leaq	-3376(%rbp), %rax
	addq	$8, %rax
	movss	.LC13(%rip), %xmm1
	pxor	%xmm0, %xmm0
	movq	%rax, %rdi
.LEHB156:
	call	_ZN2sf13Transformable11setPositionEff
	leaq	-3488(%rbp), %rdx
	leaq	-3104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf4Text7setFontERKNS_4FontE
	leaq	-3104(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	_ZN2sf4Text16setCharacterSizeEj
	leaq	-3968(%rbp), %rdx
	leaq	-3104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf4Text8setColorERKNS_5ColorE
	leaq	-3104(%rbp), %rax
	addq	$8, %rax
	movss	.LC13(%rip), %xmm1
	movss	.LC64(%rip), %xmm0
	movq	%rax, %rdi
	call	_ZN2sf13Transformable11setPositionEff
	leaq	-3488(%rbp), %rdx
	leaq	-2832(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf4Text7setFontERKNS_4FontE
	leaq	-2832(%rbp), %rax
	movl	$70, %esi
	movq	%rax, %rdi
	call	_ZN2sf4Text16setCharacterSizeEj
	leaq	-2832(%rbp), %rax
	movl	$_ZN2sf5Color5WhiteE, %esi
	movq	%rax, %rdi
	call	_ZN2sf4Text8setColorERKNS_5ColorE
.LEHE156:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeC1Ev
	leaq	-3552(%rbp), %rdx
	leaq	-3776(%rbp), %rax
	movl	$.LC65, %esi
	movq	%rax, %rdi
.LEHB157:
	call	_ZN2sf6StringC1EPKcRKSt6locale
.LEHE157:
	leaq	-3776(%rbp), %rdx
	leaq	-2832(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB158:
	call	_ZN2sf4Text9setStringERKNS_6StringE
.LEHE158:
	leaq	-3776(%rbp), %rax
	movq	%rax, %rdi
.LEHB159:
	call	_ZN2sf6StringD1Ev
.LEHE159:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	leaq	-2832(%rbp), %rax
	addq	$8, %rax
	movss	.LC66(%rip), %xmm1
	movss	.LC67(%rip), %xmm0
	movq	%rax, %rdi
.LEHB160:
	call	_ZN2sf13Transformable11setPositionEff
	leaq	-3488(%rbp), %rdx
	leaq	-2560(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf4Text7setFontERKNS_4FontE
	leaq	-2560(%rbp), %rax
	movl	$70, %esi
	movq	%rax, %rdi
	call	_ZN2sf4Text16setCharacterSizeEj
	leaq	-2560(%rbp), %rax
	movl	$_ZN2sf5Color3RedE, %esi
	movq	%rax, %rdi
	call	_ZN2sf4Text8setColorERKNS_5ColorE
.LEHE160:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeC1Ev
	leaq	-3552(%rbp), %rdx
	leaq	-3760(%rbp), %rax
	movl	$.LC68, %esi
	movq	%rax, %rdi
.LEHB161:
	call	_ZN2sf6StringC1EPKcRKSt6locale
.LEHE161:
	leaq	-3760(%rbp), %rdx
	leaq	-2560(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB162:
	call	_ZN2sf4Text9setStringERKNS_6StringE
.LEHE162:
	leaq	-3760(%rbp), %rax
	movq	%rax, %rdi
.LEHB163:
	call	_ZN2sf6StringD1Ev
.LEHE163:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	leaq	-2560(%rbp), %rax
	addq	$8, %rax
	movss	.LC66(%rip), %xmm1
	movss	.LC67(%rip), %xmm0
	movq	%rax, %rdi
.LEHB164:
	call	_ZN2sf13Transformable11setPositionEff
	leaq	-3488(%rbp), %rdx
	leaq	-2288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf4Text7setFontERKNS_4FontE
	leaq	-2288(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	_ZN2sf4Text16setCharacterSizeEj
	leaq	-2288(%rbp), %rax
	movl	$_ZN2sf5Color3RedE, %esi
	movq	%rax, %rdi
	call	_ZN2sf4Text8setColorERKNS_5ColorE
.LEHE164:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeC1Ev
	leaq	-3552(%rbp), %rdx
	leaq	-3744(%rbp), %rax
	movl	$.LC69, %esi
	movq	%rax, %rdi
.LEHB165:
	call	_ZN2sf6StringC1EPKcRKSt6locale
.LEHE165:
	leaq	-3744(%rbp), %rdx
	leaq	-2288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB166:
	call	_ZN2sf4Text9setStringERKNS_6StringE
.LEHE166:
	leaq	-3744(%rbp), %rax
	movq	%rax, %rdi
.LEHB167:
	call	_ZN2sf6StringD1Ev
.LEHE167:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	leaq	-2288(%rbp), %rax
	addq	$8, %rax
	movss	.LC13(%rip), %xmm1
	movss	.LC70(%rip), %xmm0
	movq	%rax, %rdi
.LEHB168:
	call	_ZN2sf13Transformable11setPositionEff
	leaq	-3488(%rbp), %rdx
	leaq	-2016(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf4Text7setFontERKNS_4FontE
	leaq	-2016(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	_ZN2sf4Text16setCharacterSizeEj
	leaq	-2016(%rbp), %rax
	movl	$_ZN2sf5Color5WhiteE, %esi
	movq	%rax, %rdi
	call	_ZN2sf4Text8setColorERKNS_5ColorE
.LEHE168:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeC1Ev
	leaq	-3552(%rbp), %rdx
	leaq	-3728(%rbp), %rax
	movl	$.LC71, %esi
	movq	%rax, %rdi
.LEHB169:
	call	_ZN2sf6StringC1EPKcRKSt6locale
.LEHE169:
	leaq	-3728(%rbp), %rdx
	leaq	-2016(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB170:
	call	_ZN2sf4Text9setStringERKNS_6StringE
.LEHE170:
	leaq	-3728(%rbp), %rax
	movq	%rax, %rdi
.LEHB171:
	call	_ZN2sf6StringD1Ev
.LEHE171:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	leaq	-2016(%rbp), %rax
	addq	$8, %rax
	movss	.LC72(%rip), %xmm1
	pxor	%xmm0, %xmm0
	movq	%rax, %rdi
.LEHB172:
	call	_ZN2sf13Transformable11setPositionEff
	leaq	-3488(%rbp), %rdx
	leaq	-1744(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf4Text7setFontERKNS_4FontE
	leaq	-1744(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	_ZN2sf4Text16setCharacterSizeEj
	leaq	-1744(%rbp), %rax
	movl	$_ZN2sf5Color5WhiteE, %esi
	movq	%rax, %rdi
	call	_ZN2sf4Text8setColorERKNS_5ColorE
.LEHE172:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeC1Ev
	movl	speedValue(%rip), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	.LC73(%rip), %xmm1
	divsd	%xmm1, %xmm0
	leaq	-3712(%rbp), %rax
	movq	%rax, %rdi
.LEHB173:
	call	_Z9to_stringIdESsT_
.LEHE173:
	leaq	-3552(%rbp), %rdx
	leaq	-3712(%rbp), %rcx
	leaq	-3696(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB174:
	call	_ZN2sf6StringC1ERKSsRKSt6locale
.LEHE174:
	leaq	-3696(%rbp), %rdx
	leaq	-1744(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB175:
	call	_ZN2sf4Text9setStringERKNS_6StringE
.LEHE175:
	leaq	-3696(%rbp), %rax
	movq	%rax, %rdi
.LEHB176:
	call	_ZN2sf6StringD1Ev
.LEHE176:
	leaq	-3712(%rbp), %rax
	movq	%rax, %rdi
.LEHB177:
	call	_ZNSsD1Ev
.LEHE177:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	leaq	-1744(%rbp), %rax
	addq	$8, %rax
	movss	.LC72(%rip), %xmm1
	movss	.LC74(%rip), %xmm0
	movq	%rax, %rdi
.LEHB178:
	call	_ZN2sf13Transformable11setPositionEff
	leaq	-3488(%rbp), %rdx
	leaq	-1472(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf4Text7setFontERKNS_4FontE
	leaq	-1472(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	_ZN2sf4Text16setCharacterSizeEj
	leaq	-1472(%rbp), %rax
	movl	$_ZN2sf5Color5WhiteE, %esi
	movq	%rax, %rdi
	call	_ZN2sf4Text8setColorERKNS_5ColorE
.LEHE178:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeC1Ev
	leaq	-3552(%rbp), %rdx
	leaq	-3680(%rbp), %rax
	movl	$.LC75, %esi
	movq	%rax, %rdi
.LEHB179:
	call	_ZN2sf6StringC1EPKcRKSt6locale
.LEHE179:
	leaq	-3680(%rbp), %rdx
	leaq	-1472(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB180:
	call	_ZN2sf4Text9setStringERKNS_6StringE
.LEHE180:
	leaq	-3680(%rbp), %rax
	movq	%rax, %rdi
.LEHB181:
	call	_ZN2sf6StringD1Ev
.LEHE181:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	leaq	-1472(%rbp), %rax
	addq	$8, %rax
	movss	.LC76(%rip), %xmm1
	movss	.LC74(%rip), %xmm0
	movq	%rax, %rdi
.LEHB182:
	call	_ZN2sf13Transformable11setPositionEff
	call	_ZN8powerups15getPowerupCountEv
	movl	powerupCount(%rip), %eax
	movslq	%eax, %rbx
	movabsq	$22799473113563136, %rax
	cmpq	%rax, %rbx
	ja	.L305
	movq	%rbx, %rax
	salq	$2, %rax
	addq	%rbx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$4, %rax
	addq	$8, %rax
	jmp	.L306
.L305:
	movq	$-1, %rax
.L306:
	movq	%rax, %rdi
	call	_Znam
.LEHE182:
	movq	%rax, %r13
	movq	%rbx, 0(%r13)
	leaq	8(%r13), %r12
	leaq	-1(%rbx), %rax
	movq	%rax, %r14
	movq	%r12, %r15
	jmp	.L307
.L308:
	movq	%r15, %rdi
.LEHB183:
	call	_ZN8powerupsC1Ev
.LEHE183:
	addq	$400, %r15
	subq	$1, %r14
.L307:
	cmpq	$-1, %r14
	jne	.L308
	leaq	8(%r13), %rax
	movq	%rax, -3576(%rbp)
	movq	-3576(%rbp), %rax
	movq	%rax, %rdi
.LEHB184:
	call	_ZN8powerups16fileReadPowerupsEPS_
	movl	$0, -3944(%rbp)
	jmp	.L309
.L310:
	movl	-3944(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-3576(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	_ZN8powerups9setValuesEv
	addl	$1, -3944(%rbp)
.L309:
	movl	powerupCount(%rip), %eax
	cmpl	%eax, -3944(%rbp)
	jl	.L310
	jmp	.L311
.L330:
	leaq	-3936(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf5Clock7restartEv
	movq	%rax, -3552(%rbp)
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2sf4Time9asSecondsEv
	movd	%xmm0, %eax
	movl	%eax, -3940(%rbp)
	jmp	.L312
.L319:
	movl	-3568(%rbp), %eax
	testl	%eax, %eax
	jne	.L313
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf6Window5closeEv
.L313:
	movl	-3568(%rbp), %eax
	cmpl	$5, %eax
	jne	.L314
	movl	-3564(%rbp), %eax
	cmpl	$57, %eax
	jne	.L315
	movzbl	crashed(%rip), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L315
	movl	-3940(%rbp), %edx
	leaq	-912(%rbp), %rax
	movl	%edx, -3992(%rbp)
	movss	-3992(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZN3fly4jumpEf
.L315:
	movl	-3564(%rbp), %eax
	cmpl	$15, %eax
	jne	.L316
	movzbl	-3973(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L316
	movzbl	crashed(%rip), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L316
	leaq	-1472(%rbp), %rax
	leaq	-560(%rbp), %rdx
	leaq	48(%rdx), %rcx
	movl	$_ZN2sf12RenderStates7DefaultE, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE
	movb	$1, -3973(%rbp)
	jmp	.L314
.L316:
	movb	$0, -3973(%rbp)
.L314:
	movl	-3568(%rbp), %eax
	cmpl	$5, %eax
	jne	.L312
	movzbl	crashed(%rip), %eax
	testb	%al, %al
	je	.L312
	movl	$0, %ebx
	jmp	.L318
.L312:
	leaq	-3568(%rbp), %rdx
	leaq	-560(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf6Window9pollEventERNS_5EventE
	testb	%al, %al
	jne	.L319
	movzbl	crashed(%rip), %eax
	testb	%al, %al
	je	.L320
	leaq	-3664(%rbp), %rax
	movl	-3952(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z9to_stringIiESsT_
.LEHE184:
	leaq	-3664(%rbp), %rdx
	leaq	-3920(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB185:
	call	_ZNSsaSERKSs
.LEHE185:
	leaq	-3664(%rbp), %rax
	movq	%rax, %rdi
.LEHB186:
	call	_ZNSsD1Ev
.LEHE186:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeC1Ev
	leaq	-3552(%rbp), %rdx
	leaq	-3920(%rbp), %rcx
	leaq	-3648(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB187:
	call	_ZN2sf6StringC1ERKSsRKSt6locale
.LEHE187:
	leaq	-3648(%rbp), %rdx
	leaq	-3104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB188:
	call	_ZN2sf4Text9setStringERKNS_6StringE
.LEHE188:
	leaq	-3648(%rbp), %rax
	movq	%rax, %rdi
.LEHB189:
	call	_ZN2sf6StringD1Ev
.LEHE189:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	leaq	-2560(%rbp), %rax
	leaq	-560(%rbp), %rdx
	leaq	48(%rdx), %rcx
	movl	$_ZN2sf12RenderStates7DefaultE, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
.LEHB190:
	call	_ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE
	leaq	-3376(%rbp), %rax
	leaq	-560(%rbp), %rdx
	leaq	48(%rdx), %rcx
	movl	$_ZN2sf12RenderStates7DefaultE, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE
	leaq	-3104(%rbp), %rax
	leaq	-560(%rbp), %rdx
	leaq	48(%rdx), %rcx
	movl	$_ZN2sf12RenderStates7DefaultE, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf6Window7displayEv
	movb	$1, -3973(%rbp)
	movzbl	-3970(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L320
	movl	$.LC77, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movl	-3952(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-3952(%rbp), %edx
	leaq	-3974(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN10scoresList11writeScoresEi
	movb	$1, -3970(%rbp)
.L320:
	movl	distanceCovered(%rip), %eax
	leaq	-3973(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_Z18checkLevelCompleteiRb
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L321
	leaq	-912(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3fly7flyTypeEv
	cmpl	$2, %eax
	sete	%al
	testb	%al, %al
	je	.L322
	subl	$5, -3952(%rbp)
	sall	$2, -3952(%rbp)
.L322:
	movl	speedValue(%rip), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-3952(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -3952(%rbp)
	leaq	-3632(%rbp), %rax
	movl	-3952(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z9to_stringIiESsT_
.LEHE190:
	leaq	-3632(%rbp), %rdx
	leaq	-3920(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB191:
	call	_ZNSsaSERKSs
.LEHE191:
	leaq	-3632(%rbp), %rax
	movq	%rax, %rdi
.LEHB192:
	call	_ZNSsD1Ev
.LEHE192:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeC1Ev
	leaq	-3552(%rbp), %rdx
	leaq	-3920(%rbp), %rcx
	leaq	-3616(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB193:
	call	_ZN2sf6StringC1ERKSsRKSt6locale
.LEHE193:
	leaq	-3616(%rbp), %rdx
	leaq	-3104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB194:
	call	_ZN2sf4Text9setStringERKNS_6StringE
.LEHE194:
	leaq	-3616(%rbp), %rax
	movq	%rax, %rdi
.LEHB195:
	call	_ZN2sf6StringD1Ev
.LEHE195:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	leaq	-560(%rbp), %rax
	addq	$48, %rax
	movl	$_ZN2sf5Color5BlackE, %esi
	movq	%rax, %rdi
.LEHB196:
	call	_ZN2sf12RenderTarget5clearERKNS_5ColorE
	leaq	-2832(%rbp), %rax
	leaq	-560(%rbp), %rdx
	leaq	48(%rdx), %rcx
	movl	$_ZN2sf12RenderStates7DefaultE, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE
	leaq	-2016(%rbp), %rax
	leaq	-560(%rbp), %rdx
	leaq	48(%rdx), %rcx
	movl	$_ZN2sf12RenderStates7DefaultE, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE
	leaq	-1744(%rbp), %rax
	leaq	-560(%rbp), %rdx
	leaq	48(%rdx), %rcx
	movl	$_ZN2sf12RenderStates7DefaultE, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE
	leaq	-3376(%rbp), %rax
	leaq	-560(%rbp), %rdx
	leaq	48(%rdx), %rcx
	movl	$_ZN2sf12RenderStates7DefaultE, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE
	leaq	-3104(%rbp), %rax
	leaq	-560(%rbp), %rdx
	leaq	48(%rdx), %rcx
	movl	$_ZN2sf12RenderStates7DefaultE, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf6Window7displayEv
	jmp	.L323
.L321:
	movzbl	-3973(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L311
	movl	-3940(%rbp), %edx
	leaq	-912(%rbp), %rax
	movl	$0, %esi
	movl	%edx, -3992(%rbp)
	movss	-3992(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZN3fly8movementEfi
	leaq	-560(%rbp), %rax
	addq	$48, %rax
	movl	$_ZN2sf5Color5BlackE, %esi
	movq	%rax, %rdi
	call	_ZN2sf12RenderTarget5clearERKNS_5ColorE
	movq	-3584(%rbp), %rdx
	leaq	-912(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3fly14collisionCheckEP6blocks
	leaq	-3972(%rbp), %rdx
	movq	-3576(%rbp), %rcx
	leaq	-912(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN3fly14collisionCheckEP8powerupsRb
	leaq	-1200(%rbp), %rax
	leaq	-560(%rbp), %rdx
	leaq	48(%rdx), %rcx
	movl	$_ZN2sf12RenderStates7DefaultE, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE
	movl	$0, -3944(%rbp)
	jmp	.L324
.L325:
	movl	-3944(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-3576(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	_ZN8powerups11movePowerupEv
	movl	-3944(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-3576(%rbp), %rax
	addq	%rax, %rdx
	leaq	-560(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN8powerups11drawPowerupERN2sf12RenderWindowE
	addl	$1, -3944(%rbp)
.L324:
	movl	powerupCount(%rip), %eax
	cmpl	%eax, -3944(%rbp)
	jl	.L325
	movzbl	crashed(%rip), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L326
	movq	-3584(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6blocks10moveBlocksEPS_
.L326:
	leaq	-560(%rbp), %rdx
	movq	-3584(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6blocks10drawBlocksEPS_RN2sf12RenderWindowE
	leaq	-912(%rbp), %rax
	leaq	56(%rax), %rcx
	leaq	-560(%rbp), %rax
	addq	$48, %rax
	movl	$_ZN2sf12RenderStates7DefaultE, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE
	movzbl	-3972(%rbp), %eax
	testb	%al, %al
	je	.L327
	cmpl	$29, -3948(%rbp)
	jg	.L327
	movl	speedValue(%rip), %eax
	addl	%eax, %eax
	addl	%eax, -3952(%rbp)
	addl	$1, -3948(%rbp)
	leaq	-2288(%rbp), %rax
	leaq	-560(%rbp), %rdx
	leaq	48(%rdx), %rcx
	movl	$_ZN2sf12RenderStates7DefaultE, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE
	jmp	.L328
.L327:
	cmpl	$30, -3948(%rbp)
	jne	.L329
	movl	speedValue(%rip), %eax
	addl	%eax, -3952(%rbp)
	movb	$0, -3972(%rbp)
	movl	$0, -3948(%rbp)
	jmp	.L328
.L329:
	movb	$0, -3972(%rbp)
	movl	speedValue(%rip), %eax
	addl	%eax, -3952(%rbp)
.L328:
	leaq	-3600(%rbp), %rax
	movl	-3952(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z9to_stringIiESsT_
.LEHE196:
	leaq	-3600(%rbp), %rdx
	leaq	-3920(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB197:
	call	_ZNSsaSERKSs
.LEHE197:
	leaq	-3600(%rbp), %rax
	movq	%rax, %rdi
.LEHB198:
	call	_ZNSsD1Ev
.LEHE198:
	leaq	-3600(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeC1Ev
	leaq	-3600(%rbp), %rdx
	leaq	-3920(%rbp), %rcx
	leaq	-3552(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB199:
	call	_ZN2sf6StringC1ERKSsRKSt6locale
.LEHE199:
	leaq	-3552(%rbp), %rdx
	leaq	-3104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB200:
	call	_ZN2sf4Text9setStringERKNS_6StringE
.LEHE200:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
.LEHB201:
	call	_ZN2sf6StringD1Ev
.LEHE201:
	leaq	-3600(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	leaq	-3376(%rbp), %rax
	leaq	-560(%rbp), %rdx
	leaq	48(%rdx), %rcx
	movl	$_ZN2sf12RenderStates7DefaultE, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
.LEHB202:
	call	_ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE
	leaq	-3104(%rbp), %rax
	leaq	-560(%rbp), %rdx
	leaq	48(%rdx), %rcx
	movl	$_ZN2sf12RenderStates7DefaultE, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf6Window7displayEv
.L311:
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2sf6Window6isOpenEv
	testb	%al, %al
	jne	.L330
.L323:
	movl	levelNum(%rip), %eax
	cmpl	$9, %eax
	jle	.L331
	movl	-3952(%rbp), %edx
	leaq	-3974(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN10scoresList11writeScoresEi
	movl	$.LC77, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movl	-3952(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC78, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, %ebx
	jmp	.L318
.L331:
	movl	$0, distanceCovered(%rip)
	movl	$0, _ZN6blocks6offsetE(%rip)
.L295:
	cmpb	$0, -3969(%rbp)
	jne	.L332
	cmpq	$0, -3584(%rbp)
	je	.L333
	movq	-3584(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	imulq	$720, %rax, %rdx
	movq	-3584(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
.L335:
	cmpq	-3584(%rbp), %rbx
	je	.L334
	subq	$720, %rbx
	movq	%rbx, %rdi
	call	_ZN6blocksD1Ev
	jmp	.L335
.L334:
	movq	-3584(%rbp), %rax
	subq	$8, %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L333:
	cmpq	$0, -3576(%rbp)
	je	.L336
	movq	-3576(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-3576(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
.L338:
	cmpq	-3576(%rbp), %rbx
	je	.L337
	subq	$400, %rbx
	movq	%rbx, %rdi
	call	_ZN8powerupsD1Ev
.LEHE202:
	jmp	.L338
.L337:
	movq	-3576(%rbp), %rax
	subq	$8, %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L336:
	movl	$0, %ebx
.L318:
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
.LEHB203:
	call	_ZN2sf12RenderWindowD1Ev
.LEHE203:
.L292:
	leaq	-3888(%rbp), %rax
	movq	%rax, %rdi
.LEHB204:
	call	_ZNSsD1Ev
.LEHE204:
	leaq	-912(%rbp), %rax
	movq	%rax, %rdi
.LEHB205:
	call	_ZN3flyD1Ev
.LEHE205:
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
.LEHB206:
	call	_ZN2sf4TextD1Ev
.LEHE206:
	leaq	-1744(%rbp), %rax
	movq	%rax, %rdi
.LEHB207:
	call	_ZN2sf4TextD1Ev
.LEHE207:
	leaq	-2016(%rbp), %rax
	movq	%rax, %rdi
.LEHB208:
	call	_ZN2sf4TextD1Ev
.LEHE208:
	leaq	-2288(%rbp), %rax
	movq	%rax, %rdi
.LEHB209:
	call	_ZN2sf4TextD1Ev
.LEHE209:
	leaq	-2560(%rbp), %rax
	movq	%rax, %rdi
.LEHB210:
	call	_ZN2sf4TextD1Ev
.LEHE210:
	leaq	-2832(%rbp), %rax
	movq	%rax, %rdi
.LEHB211:
	call	_ZN2sf4TextD1Ev
.LEHE211:
	leaq	-3104(%rbp), %rax
	movq	%rax, %rdi
.LEHB212:
	call	_ZN2sf4TextD1Ev
.LEHE212:
	leaq	-3376(%rbp), %rax
	movq	%rax, %rdi
.LEHB213:
	call	_ZN2sf4TextD1Ev
.LEHE213:
	leaq	-3488(%rbp), %rax
	movq	%rax, %rdi
.LEHB214:
	call	_ZN2sf4FontD1Ev
.LEHE214:
	leaq	-3974(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10scoresListD1Ev
	leaq	-3904(%rbp), %rax
	movq	%rax, %rdi
.LEHB215:
	call	_ZNSsD1Ev
.LEHE215:
	leaq	-3920(%rbp), %rax
	movq	%rax, %rdi
.LEHB216:
	call	_ZNSsD1Ev
.LEHE216:
	leaq	-1200(%rbp), %rax
	movq	%rax, %rdi
.LEHB217:
	call	_ZN2sf6SpriteD1Ev
.LEHE217:
	leaq	-3520(%rbp), %rax
	movq	%rax, %rdi
.LEHB218:
	call	_ZN2sf7TextureD1Ev
.LEHE218:
	movl	%ebx, %eax
	movq	-56(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L396
	jmp	.L449
.L410:
	movq	%rax, %rbx
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L341
.L413:
	movq	%rax, %rbx
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10scoresListD1Ev
	jmp	.L343
.L415:
	movq	%rax, %rbx
	leaq	-3872(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf6StringD1Ev
	jmp	.L345
.L416:
	movq	%rax, %rbx
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf12RenderWindowD1Ev
	jmp	.L345
.L414:
	movq	%rax, %rbx
.L345:
	leaq	-3600(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	jmp	.L343
.L419:
	movq	%rax, %rbx
	leaq	-3840(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L348
.L418:
	movq	%rax, %rbx
.L348:
	leaq	-3856(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L349
.L420:
	movq	%rax, %r15
	testq	%r12, %r12
	je	.L351
	movq	%r14, %rax
	subq	%rax, %rbx
	movq	%rbx, %rax
	imulq	$720, %rax, %rax
	subq	$720, %rax
	leaq	(%r12,%rax), %rbx
.L352:
	cmpq	%r12, %rbx
	je	.L351
	subq	$720, %rbx
	movq	%rbx, %rdi
	call	_ZN6blocksD1Ev
	jmp	.L352
.L351:
	movq	%r15, %rbx
	movq	%r13, %rdi
	call	_ZdaPv
	jmp	.L349
.L421:
	movq	%rax, %rbx
	leaq	-3824(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L349
.L423:
	movq	%rax, %rbx
	leaq	-3808(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L355
.L422:
	movq	%rax, %rbx
.L355:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L349
.L425:
	movq	%rax, %rbx
	leaq	-3792(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf6StringD1Ev
	jmp	.L357
.L424:
	movq	%rax, %rbx
.L357:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	jmp	.L349
.L427:
	movq	%rax, %rbx
	leaq	-3776(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf6StringD1Ev
	jmp	.L359
.L426:
	movq	%rax, %rbx
.L359:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	jmp	.L349
.L429:
	movq	%rax, %rbx
	leaq	-3760(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf6StringD1Ev
	jmp	.L361
.L428:
	movq	%rax, %rbx
.L361:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	jmp	.L349
.L431:
	movq	%rax, %rbx
	leaq	-3744(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf6StringD1Ev
	jmp	.L363
.L430:
	movq	%rax, %rbx
.L363:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	jmp	.L349
.L433:
	movq	%rax, %rbx
	leaq	-3728(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf6StringD1Ev
	jmp	.L365
.L432:
	movq	%rax, %rbx
.L365:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	jmp	.L349
.L436:
	movq	%rax, %rbx
	leaq	-3696(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf6StringD1Ev
	jmp	.L367
.L435:
	movq	%rax, %rbx
.L367:
	leaq	-3712(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L368
.L434:
	movq	%rax, %rbx
.L368:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	jmp	.L349
.L438:
	movq	%rax, %rbx
	leaq	-3680(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf6StringD1Ev
	jmp	.L370
.L437:
	movq	%rax, %rbx
.L370:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	jmp	.L349
.L439:
	movq	%rax, %r15
	testq	%r12, %r12
	je	.L372
	movq	%r14, %rax
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$400, %rax
	leaq	(%r12,%rax), %rbx
.L373:
	cmpq	%r12, %rbx
	je	.L372
	subq	$400, %rbx
	movq	%rbx, %rdi
	call	_ZN8powerupsD1Ev
	jmp	.L373
.L372:
	movq	%r15, %rbx
	movq	%r13, %rdi
	call	_ZdaPv
	jmp	.L349
.L440:
	movq	%rax, %rbx
	leaq	-3664(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L349
.L442:
	movq	%rax, %rbx
	leaq	-3648(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf6StringD1Ev
	jmp	.L376
.L441:
	movq	%rax, %rbx
.L376:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	jmp	.L349
.L443:
	movq	%rax, %rbx
	leaq	-3632(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L349
.L445:
	movq	%rax, %rbx
	leaq	-3616(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf6StringD1Ev
	jmp	.L379
.L444:
	movq	%rax, %rbx
.L379:
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	jmp	.L349
.L446:
	movq	%rax, %rbx
	leaq	-3600(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L349
.L448:
	movq	%rax, %rbx
	leaq	-3552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf6StringD1Ev
	jmp	.L382
.L447:
	movq	%rax, %rbx
.L382:
	leaq	-3600(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	jmp	.L349
.L417:
	movq	%rax, %rbx
.L349:
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf12RenderWindowD1Ev
	jmp	.L343
.L412:
	movq	%rax, %rbx
.L343:
	leaq	-3888(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L341
.L411:
	movq	%rax, %rbx
.L341:
	leaq	-912(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3flyD1Ev
	jmp	.L383
.L409:
	movq	%rax, %rbx
.L383:
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf4TextD1Ev
	jmp	.L384
.L408:
	movq	%rax, %rbx
.L384:
	leaq	-1744(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf4TextD1Ev
	jmp	.L385
.L407:
	movq	%rax, %rbx
.L385:
	leaq	-2016(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf4TextD1Ev
	jmp	.L386
.L406:
	movq	%rax, %rbx
.L386:
	leaq	-2288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf4TextD1Ev
	jmp	.L387
.L405:
	movq	%rax, %rbx
.L387:
	leaq	-2560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf4TextD1Ev
	jmp	.L388
.L404:
	movq	%rax, %rbx
.L388:
	leaq	-2832(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf4TextD1Ev
	jmp	.L389
.L403:
	movq	%rax, %rbx
.L389:
	leaq	-3104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf4TextD1Ev
	jmp	.L390
.L402:
	movq	%rax, %rbx
.L390:
	leaq	-3376(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf4TextD1Ev
	jmp	.L391
.L401:
	movq	%rax, %rbx
.L391:
	leaq	-3488(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf4FontD1Ev
	jmp	.L392
.L400:
	movq	%rax, %rbx
.L392:
	leaq	-3974(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10scoresListD1Ev
	leaq	-3904(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L393
.L399:
	movq	%rax, %rbx
.L393:
	leaq	-3920(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L394
.L398:
	movq	%rax, %rbx
.L394:
	leaq	-1200(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf6SpriteD1Ev
	jmp	.L395
.L397:
	movq	%rax, %rbx
.L395:
	leaq	-3520(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf7TextureD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB219:
	call	_Unwind_Resume
.LEHE219:
.L449:
	call	__stack_chk_fail
.L396:
	addq	$3960, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2073:
	.section	.gcc_except_table
.LLSDA2073:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2073-.LLSDACSB2073
.LLSDACSB2073:
	.uleb128 .LEHB119-.LFB2073
	.uleb128 .LEHE119-.LEHB119
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB120-.LFB2073
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L397-.LFB2073
	.uleb128 0
	.uleb128 .LEHB121-.LFB2073
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L398-.LFB2073
	.uleb128 0
	.uleb128 .LEHB122-.LFB2073
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L399-.LFB2073
	.uleb128 0
	.uleb128 .LEHB123-.LFB2073
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L400-.LFB2073
	.uleb128 0
	.uleb128 .LEHB124-.LFB2073
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L401-.LFB2073
	.uleb128 0
	.uleb128 .LEHB125-.LFB2073
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L402-.LFB2073
	.uleb128 0
	.uleb128 .LEHB126-.LFB2073
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L403-.LFB2073
	.uleb128 0
	.uleb128 .LEHB127-.LFB2073
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L404-.LFB2073
	.uleb128 0
	.uleb128 .LEHB128-.LFB2073
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L405-.LFB2073
	.uleb128 0
	.uleb128 .LEHB129-.LFB2073
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L406-.LFB2073
	.uleb128 0
	.uleb128 .LEHB130-.LFB2073
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L407-.LFB2073
	.uleb128 0
	.uleb128 .LEHB131-.LFB2073
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L408-.LFB2073
	.uleb128 0
	.uleb128 .LEHB132-.LFB2073
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L409-.LFB2073
	.uleb128 0
	.uleb128 .LEHB133-.LFB2073
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L410-.LFB2073
	.uleb128 0
	.uleb128 .LEHB134-.LFB2073
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L412-.LFB2073
	.uleb128 0
	.uleb128 .LEHB135-.LFB2073
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L413-.LFB2073
	.uleb128 0
	.uleb128 .LEHB136-.LFB2073
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L412-.LFB2073
	.uleb128 0
	.uleb128 .LEHB137-.LFB2073
	.uleb128 .LEHE137-.LEHB137
	.uleb128 .L414-.LFB2073
	.uleb128 0
	.uleb128 .LEHB138-.LFB2073
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L415-.LFB2073
	.uleb128 0
	.uleb128 .LEHB139-.LFB2073
	.uleb128 .LEHE139-.LEHB139
	.uleb128 .L416-.LFB2073
	.uleb128 0
	.uleb128 .LEHB140-.LFB2073
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB141-.LFB2073
	.uleb128 .LEHE141-.LEHB141
	.uleb128 .L418-.LFB2073
	.uleb128 0
	.uleb128 .LEHB142-.LFB2073
	.uleb128 .LEHE142-.LEHB142
	.uleb128 .L419-.LFB2073
	.uleb128 0
	.uleb128 .LEHB143-.LFB2073
	.uleb128 .LEHE143-.LEHB143
	.uleb128 .L418-.LFB2073
	.uleb128 0
	.uleb128 .LEHB144-.LFB2073
	.uleb128 .LEHE144-.LEHB144
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB145-.LFB2073
	.uleb128 .LEHE145-.LEHB145
	.uleb128 .L420-.LFB2073
	.uleb128 0
	.uleb128 .LEHB146-.LFB2073
	.uleb128 .LEHE146-.LEHB146
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB147-.LFB2073
	.uleb128 .LEHE147-.LEHB147
	.uleb128 .L421-.LFB2073
	.uleb128 0
	.uleb128 .LEHB148-.LFB2073
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB149-.LFB2073
	.uleb128 .LEHE149-.LEHB149
	.uleb128 .L422-.LFB2073
	.uleb128 0
	.uleb128 .LEHB150-.LFB2073
	.uleb128 .LEHE150-.LEHB150
	.uleb128 .L423-.LFB2073
	.uleb128 0
	.uleb128 .LEHB151-.LFB2073
	.uleb128 .LEHE151-.LEHB151
	.uleb128 .L422-.LFB2073
	.uleb128 0
	.uleb128 .LEHB152-.LFB2073
	.uleb128 .LEHE152-.LEHB152
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB153-.LFB2073
	.uleb128 .LEHE153-.LEHB153
	.uleb128 .L424-.LFB2073
	.uleb128 0
	.uleb128 .LEHB154-.LFB2073
	.uleb128 .LEHE154-.LEHB154
	.uleb128 .L425-.LFB2073
	.uleb128 0
	.uleb128 .LEHB155-.LFB2073
	.uleb128 .LEHE155-.LEHB155
	.uleb128 .L424-.LFB2073
	.uleb128 0
	.uleb128 .LEHB156-.LFB2073
	.uleb128 .LEHE156-.LEHB156
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB157-.LFB2073
	.uleb128 .LEHE157-.LEHB157
	.uleb128 .L426-.LFB2073
	.uleb128 0
	.uleb128 .LEHB158-.LFB2073
	.uleb128 .LEHE158-.LEHB158
	.uleb128 .L427-.LFB2073
	.uleb128 0
	.uleb128 .LEHB159-.LFB2073
	.uleb128 .LEHE159-.LEHB159
	.uleb128 .L426-.LFB2073
	.uleb128 0
	.uleb128 .LEHB160-.LFB2073
	.uleb128 .LEHE160-.LEHB160
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB161-.LFB2073
	.uleb128 .LEHE161-.LEHB161
	.uleb128 .L428-.LFB2073
	.uleb128 0
	.uleb128 .LEHB162-.LFB2073
	.uleb128 .LEHE162-.LEHB162
	.uleb128 .L429-.LFB2073
	.uleb128 0
	.uleb128 .LEHB163-.LFB2073
	.uleb128 .LEHE163-.LEHB163
	.uleb128 .L428-.LFB2073
	.uleb128 0
	.uleb128 .LEHB164-.LFB2073
	.uleb128 .LEHE164-.LEHB164
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB165-.LFB2073
	.uleb128 .LEHE165-.LEHB165
	.uleb128 .L430-.LFB2073
	.uleb128 0
	.uleb128 .LEHB166-.LFB2073
	.uleb128 .LEHE166-.LEHB166
	.uleb128 .L431-.LFB2073
	.uleb128 0
	.uleb128 .LEHB167-.LFB2073
	.uleb128 .LEHE167-.LEHB167
	.uleb128 .L430-.LFB2073
	.uleb128 0
	.uleb128 .LEHB168-.LFB2073
	.uleb128 .LEHE168-.LEHB168
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB169-.LFB2073
	.uleb128 .LEHE169-.LEHB169
	.uleb128 .L432-.LFB2073
	.uleb128 0
	.uleb128 .LEHB170-.LFB2073
	.uleb128 .LEHE170-.LEHB170
	.uleb128 .L433-.LFB2073
	.uleb128 0
	.uleb128 .LEHB171-.LFB2073
	.uleb128 .LEHE171-.LEHB171
	.uleb128 .L432-.LFB2073
	.uleb128 0
	.uleb128 .LEHB172-.LFB2073
	.uleb128 .LEHE172-.LEHB172
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB173-.LFB2073
	.uleb128 .LEHE173-.LEHB173
	.uleb128 .L434-.LFB2073
	.uleb128 0
	.uleb128 .LEHB174-.LFB2073
	.uleb128 .LEHE174-.LEHB174
	.uleb128 .L435-.LFB2073
	.uleb128 0
	.uleb128 .LEHB175-.LFB2073
	.uleb128 .LEHE175-.LEHB175
	.uleb128 .L436-.LFB2073
	.uleb128 0
	.uleb128 .LEHB176-.LFB2073
	.uleb128 .LEHE176-.LEHB176
	.uleb128 .L435-.LFB2073
	.uleb128 0
	.uleb128 .LEHB177-.LFB2073
	.uleb128 .LEHE177-.LEHB177
	.uleb128 .L434-.LFB2073
	.uleb128 0
	.uleb128 .LEHB178-.LFB2073
	.uleb128 .LEHE178-.LEHB178
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB179-.LFB2073
	.uleb128 .LEHE179-.LEHB179
	.uleb128 .L437-.LFB2073
	.uleb128 0
	.uleb128 .LEHB180-.LFB2073
	.uleb128 .LEHE180-.LEHB180
	.uleb128 .L438-.LFB2073
	.uleb128 0
	.uleb128 .LEHB181-.LFB2073
	.uleb128 .LEHE181-.LEHB181
	.uleb128 .L437-.LFB2073
	.uleb128 0
	.uleb128 .LEHB182-.LFB2073
	.uleb128 .LEHE182-.LEHB182
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB183-.LFB2073
	.uleb128 .LEHE183-.LEHB183
	.uleb128 .L439-.LFB2073
	.uleb128 0
	.uleb128 .LEHB184-.LFB2073
	.uleb128 .LEHE184-.LEHB184
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB185-.LFB2073
	.uleb128 .LEHE185-.LEHB185
	.uleb128 .L440-.LFB2073
	.uleb128 0
	.uleb128 .LEHB186-.LFB2073
	.uleb128 .LEHE186-.LEHB186
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB187-.LFB2073
	.uleb128 .LEHE187-.LEHB187
	.uleb128 .L441-.LFB2073
	.uleb128 0
	.uleb128 .LEHB188-.LFB2073
	.uleb128 .LEHE188-.LEHB188
	.uleb128 .L442-.LFB2073
	.uleb128 0
	.uleb128 .LEHB189-.LFB2073
	.uleb128 .LEHE189-.LEHB189
	.uleb128 .L441-.LFB2073
	.uleb128 0
	.uleb128 .LEHB190-.LFB2073
	.uleb128 .LEHE190-.LEHB190
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB191-.LFB2073
	.uleb128 .LEHE191-.LEHB191
	.uleb128 .L443-.LFB2073
	.uleb128 0
	.uleb128 .LEHB192-.LFB2073
	.uleb128 .LEHE192-.LEHB192
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB193-.LFB2073
	.uleb128 .LEHE193-.LEHB193
	.uleb128 .L444-.LFB2073
	.uleb128 0
	.uleb128 .LEHB194-.LFB2073
	.uleb128 .LEHE194-.LEHB194
	.uleb128 .L445-.LFB2073
	.uleb128 0
	.uleb128 .LEHB195-.LFB2073
	.uleb128 .LEHE195-.LEHB195
	.uleb128 .L444-.LFB2073
	.uleb128 0
	.uleb128 .LEHB196-.LFB2073
	.uleb128 .LEHE196-.LEHB196
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB197-.LFB2073
	.uleb128 .LEHE197-.LEHB197
	.uleb128 .L446-.LFB2073
	.uleb128 0
	.uleb128 .LEHB198-.LFB2073
	.uleb128 .LEHE198-.LEHB198
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB199-.LFB2073
	.uleb128 .LEHE199-.LEHB199
	.uleb128 .L447-.LFB2073
	.uleb128 0
	.uleb128 .LEHB200-.LFB2073
	.uleb128 .LEHE200-.LEHB200
	.uleb128 .L448-.LFB2073
	.uleb128 0
	.uleb128 .LEHB201-.LFB2073
	.uleb128 .LEHE201-.LEHB201
	.uleb128 .L447-.LFB2073
	.uleb128 0
	.uleb128 .LEHB202-.LFB2073
	.uleb128 .LEHE202-.LEHB202
	.uleb128 .L417-.LFB2073
	.uleb128 0
	.uleb128 .LEHB203-.LFB2073
	.uleb128 .LEHE203-.LEHB203
	.uleb128 .L412-.LFB2073
	.uleb128 0
	.uleb128 .LEHB204-.LFB2073
	.uleb128 .LEHE204-.LEHB204
	.uleb128 .L411-.LFB2073
	.uleb128 0
	.uleb128 .LEHB205-.LFB2073
	.uleb128 .LEHE205-.LEHB205
	.uleb128 .L409-.LFB2073
	.uleb128 0
	.uleb128 .LEHB206-.LFB2073
	.uleb128 .LEHE206-.LEHB206
	.uleb128 .L408-.LFB2073
	.uleb128 0
	.uleb128 .LEHB207-.LFB2073
	.uleb128 .LEHE207-.LEHB207
	.uleb128 .L407-.LFB2073
	.uleb128 0
	.uleb128 .LEHB208-.LFB2073
	.uleb128 .LEHE208-.LEHB208
	.uleb128 .L406-.LFB2073
	.uleb128 0
	.uleb128 .LEHB209-.LFB2073
	.uleb128 .LEHE209-.LEHB209
	.uleb128 .L405-.LFB2073
	.uleb128 0
	.uleb128 .LEHB210-.LFB2073
	.uleb128 .LEHE210-.LEHB210
	.uleb128 .L404-.LFB2073
	.uleb128 0
	.uleb128 .LEHB211-.LFB2073
	.uleb128 .LEHE211-.LEHB211
	.uleb128 .L403-.LFB2073
	.uleb128 0
	.uleb128 .LEHB212-.LFB2073
	.uleb128 .LEHE212-.LEHB212
	.uleb128 .L402-.LFB2073
	.uleb128 0
	.uleb128 .LEHB213-.LFB2073
	.uleb128 .LEHE213-.LEHB213
	.uleb128 .L401-.LFB2073
	.uleb128 0
	.uleb128 .LEHB214-.LFB2073
	.uleb128 .LEHE214-.LEHB214
	.uleb128 .L400-.LFB2073
	.uleb128 0
	.uleb128 .LEHB215-.LFB2073
	.uleb128 .LEHE215-.LEHB215
	.uleb128 .L399-.LFB2073
	.uleb128 0
	.uleb128 .LEHB216-.LFB2073
	.uleb128 .LEHE216-.LEHB216
	.uleb128 .L398-.LFB2073
	.uleb128 0
	.uleb128 .LEHB217-.LFB2073
	.uleb128 .LEHE217-.LEHB217
	.uleb128 .L397-.LFB2073
	.uleb128 0
	.uleb128 .LEHB218-.LFB2073
	.uleb128 .LEHE218-.LEHB218
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB219-.LFB2073
	.uleb128 .LEHE219-.LEHB219
	.uleb128 0
	.uleb128 0
.LLSDACSE2073:
	.text
	.size	main, .-main
	.section	.text._ZN2sf4RectIiEC2Ev,"axG",@progbits,_ZN2sf4RectIiEC5Ev,comdat
	.align 2
	.weak	_ZN2sf4RectIiEC2Ev
	.type	_ZN2sf4RectIiEC2Ev, @function
_ZN2sf4RectIiEC2Ev:
.LFB2079:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2079:
	.size	_ZN2sf4RectIiEC2Ev, .-_ZN2sf4RectIiEC2Ev
	.weak	_ZN2sf4RectIiEC1Ev
	.set	_ZN2sf4RectIiEC1Ev,_ZN2sf4RectIiEC2Ev
	.section	.text._ZN2sf7Vector2IfEC2Eff,"axG",@progbits,_ZN2sf7Vector2IfEC5Eff,comdat
	.align 2
	.weak	_ZN2sf7Vector2IfEC2Eff
	.type	_ZN2sf7Vector2IfEC2Eff, @function
_ZN2sf7Vector2IfEC2Eff:
.LFB2085:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rdx
	movl	-16(%rbp), %eax
	movl	%eax, 4(%rdx)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2085:
	.size	_ZN2sf7Vector2IfEC2Eff, .-_ZN2sf7Vector2IfEC2Eff
	.weak	_ZN2sf7Vector2IfEC1Eff
	.set	_ZN2sf7Vector2IfEC1Eff,_ZN2sf7Vector2IfEC2Eff
	.section	.text._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
	.type	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_, @function
_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_:
.LFB2102:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2102
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB220:
	call	_ZNSsC1ERKSs
.LEHE220:
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB221:
	call	_ZNSs6appendERKSs
.LEHE221:
	jmp	.L457
.L456:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB222:
	call	_Unwind_Resume
.LEHE222:
.L457:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L455
	call	__stack_chk_fail
.L455:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2102:
	.section	.gcc_except_table
.LLSDA2102:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2102-.LLSDACSB2102
.LLSDACSB2102:
	.uleb128 .LEHB220-.LFB2102
	.uleb128 .LEHE220-.LEHB220
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB221-.LFB2102
	.uleb128 .LEHE221-.LEHB221
	.uleb128 .L456-.LFB2102
	.uleb128 0
	.uleb128 .LEHB222-.LFB2102
	.uleb128 .LEHE222-.LEHB222
	.uleb128 0
	.uleb128 0
.LLSDACSE2102:
	.section	.text._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_,comdat
	.size	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_, .-_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_
	.section	.text._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
	.type	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_, @function
_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_:
.LFB2103:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2103
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB223:
	call	_ZNSsC1ERKSs
.LEHE223:
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB224:
	call	_ZNSs6appendEPKc
.LEHE224:
	jmp	.L463
.L462:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB225:
	call	_Unwind_Resume
.LEHE225:
.L463:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L461
	call	__stack_chk_fail
.L461:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2103:
	.section	.gcc_except_table
.LLSDA2103:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2103-.LLSDACSB2103
.LLSDACSB2103:
	.uleb128 .LEHB223-.LFB2103
	.uleb128 .LEHE223-.LEHB223
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB224-.LFB2103
	.uleb128 .LEHE224-.LEHB224
	.uleb128 .L462-.LFB2103
	.uleb128 0
	.uleb128 .LEHB225-.LFB2103
	.uleb128 .LEHE225-.LEHB225
	.uleb128 0
	.uleb128 0
.LLSDACSE2103:
	.section	.text._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_,comdat
	.size	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_, .-_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
	.section	.text._ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_,"axG",@progbits,_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_,comdat
	.weak	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	.type	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_, @function
_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_:
.LFB2113:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSs7compareEPKc
	testl	%eax, %eax
	sete	%al
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2113:
	.size	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_, .-_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	.section	.text._ZNK2sf4RectIfE10intersectsERKS1_,"axG",@progbits,_ZNK2sf4RectIfE10intersectsERKS1_,comdat
	.align 2
	.weak	_ZNK2sf4RectIfE10intersectsERKS1_
	.type	_ZNK2sf4RectIfE10intersectsERKS1_, @function
_ZNK2sf4RectIfE10intersectsERKS1_:
.LFB2115:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf4RectIfEC1Ev
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNK2sf4RectIfE10intersectsERKS1_RS1_
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L468
	call	__stack_chk_fail
.L468:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2115:
	.size	_ZNK2sf4RectIfE10intersectsERKS1_, .-_ZNK2sf4RectIfE10intersectsERKS1_
	.section	.text._Z9to_stringIiESsT_,"axG",@progbits,_Z9to_stringIiESsT_,comdat
	.weak	_Z9to_stringIiESsT_
	.type	_Z9to_stringIiESsT_, @function
_Z9to_stringIiESsT_:
.LFB2125:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2125
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$392, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -392(%rbp)
	movl	%esi, -396(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-384(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
.LEHB226:
	call	_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode
.LEHE226:
	movl	-396(%rbp), %edx
	leaq	-384(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
.LEHB227:
	call	_ZNSolsEi
	movq	-392(%rbp), %rax
	leaq	-384(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv
.LEHE227:
	nop
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
.LEHB228:
	call	_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
.LEHE228:
	movq	-392(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L472
	jmp	.L474
.L473:
	movq	%rax, %rbx
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB229:
	call	_Unwind_Resume
.LEHE229:
.L474:
	call	__stack_chk_fail
.L472:
	addq	$392, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2125:
	.section	.gcc_except_table
.LLSDA2125:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2125-.LLSDACSB2125
.LLSDACSB2125:
	.uleb128 .LEHB226-.LFB2125
	.uleb128 .LEHE226-.LEHB226
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB227-.LFB2125
	.uleb128 .LEHE227-.LEHB227
	.uleb128 .L473-.LFB2125
	.uleb128 0
	.uleb128 .LEHB228-.LFB2125
	.uleb128 .LEHE228-.LEHB228
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB229-.LFB2125
	.uleb128 .LEHE229-.LEHB229
	.uleb128 0
	.uleb128 0
.LLSDACSE2125:
	.section	.text._Z9to_stringIiESsT_,"axG",@progbits,_Z9to_stringIiESsT_,comdat
	.size	_Z9to_stringIiESsT_, .-_Z9to_stringIiESsT_
	.section	.text._ZNSbIjSt11char_traitsIjESaIjEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSbIjSt11char_traitsIjESaIjEE12_Alloc_hiderD5Ev,comdat
	.align 2
	.weak	_ZNSbIjSt11char_traitsIjESaIjEE12_Alloc_hiderD2Ev
	.type	_ZNSbIjSt11char_traitsIjESaIjEE12_Alloc_hiderD2Ev, @function
_ZNSbIjSt11char_traitsIjESaIjEE12_Alloc_hiderD2Ev:
.LFB2140:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIjED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2140:
	.size	_ZNSbIjSt11char_traitsIjESaIjEE12_Alloc_hiderD2Ev, .-_ZNSbIjSt11char_traitsIjESaIjEE12_Alloc_hiderD2Ev
	.weak	_ZNSbIjSt11char_traitsIjESaIjEE12_Alloc_hiderD1Ev
	.set	_ZNSbIjSt11char_traitsIjESaIjEE12_Alloc_hiderD1Ev,_ZNSbIjSt11char_traitsIjESaIjEE12_Alloc_hiderD2Ev
	.section	.text._ZNSbIjSt11char_traitsIjESaIjEED2Ev,"axG",@progbits,_ZNSbIjSt11char_traitsIjESaIjEED5Ev,comdat
	.align 2
	.weak	_ZNSbIjSt11char_traitsIjESaIjEED2Ev
	.type	_ZNSbIjSt11char_traitsIjESaIjEED2Ev, @function
_ZNSbIjSt11char_traitsIjESaIjEED2Ev:
.LFB2142:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2142
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-25(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSbIjSt11char_traitsIjESaIjEE13get_allocatorEv
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB230:
	call	_ZNKSbIjSt11char_traitsIjESaIjEE6_M_repEv
	movq	%rax, %rdx
	leaq	-25(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSbIjSt11char_traitsIjESaIjEE4_Rep10_M_disposeERKS1_
.LEHE230:
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIjED1Ev
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSbIjSt11char_traitsIjESaIjEE12_Alloc_hiderD1Ev
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L480
	jmp	.L482
.L481:
	movq	%rax, %rbx
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIjED1Ev
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSbIjSt11char_traitsIjESaIjEE12_Alloc_hiderD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB231:
	call	_Unwind_Resume
.LEHE231:
.L482:
	call	__stack_chk_fail
.L480:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2142:
	.section	.gcc_except_table
.LLSDA2142:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2142-.LLSDACSB2142
.LLSDACSB2142:
	.uleb128 .LEHB230-.LFB2142
	.uleb128 .LEHE230-.LEHB230
	.uleb128 .L481-.LFB2142
	.uleb128 0
	.uleb128 .LEHB231-.LFB2142
	.uleb128 .LEHE231-.LEHB231
	.uleb128 0
	.uleb128 0
.LLSDACSE2142:
	.section	.text._ZNSbIjSt11char_traitsIjESaIjEED2Ev,"axG",@progbits,_ZNSbIjSt11char_traitsIjESaIjEED5Ev,comdat
	.size	_ZNSbIjSt11char_traitsIjESaIjEED2Ev, .-_ZNSbIjSt11char_traitsIjESaIjEED2Ev
	.weak	_ZNSbIjSt11char_traitsIjESaIjEED1Ev
	.set	_ZNSbIjSt11char_traitsIjESaIjEED1Ev,_ZNSbIjSt11char_traitsIjESaIjEED2Ev
	.section	.text._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_
	.type	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_, @function
_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_:
.LFB2144:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2144
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE6lengthEPKc
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB232:
	call	_ZNSsC1Ev
.LEHE232:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
.LEHB233:
	call	_ZNKSs4sizeEv
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSs7reserveEm
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSs6appendEPKcm
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSs6appendERKSs
.LEHE233:
	jmp	.L488
.L487:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB234:
	call	_Unwind_Resume
.LEHE234:
.L488:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L486
	call	__stack_chk_fail
.L486:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2144:
	.section	.gcc_except_table
.LLSDA2144:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2144-.LLSDACSB2144
.LLSDACSB2144:
	.uleb128 .LEHB232-.LFB2144
	.uleb128 .LEHE232-.LEHB232
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB233-.LFB2144
	.uleb128 .LEHE233-.LEHB233
	.uleb128 .L487-.LFB2144
	.uleb128 0
	.uleb128 .LEHB234-.LFB2144
	.uleb128 .LEHE234-.LEHB234
	.uleb128 0
	.uleb128 0
.LLSDACSE2144:
	.section	.text._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_,comdat
	.size	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_, .-_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_
	.section	.text._Z9to_stringIdESsT_,"axG",@progbits,_Z9to_stringIdESsT_,comdat
	.weak	_Z9to_stringIdESsT_
	.type	_Z9to_stringIdESsT_, @function
_Z9to_stringIdESsT_:
.LFB2145:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2145
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$408, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -392(%rbp)
	movsd	%xmm0, -400(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-384(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
.LEHB235:
	call	_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode
.LEHE235:
	movq	-400(%rbp), %rdx
	leaq	-384(%rbp), %rax
	movq	%rdx, -408(%rbp)
	movsd	-408(%rbp), %xmm0
	movq	%rax, %rdi
.LEHB236:
	call	_ZNSolsEd
	movq	-392(%rbp), %rax
	leaq	-384(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv
.LEHE236:
	nop
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
.LEHB237:
	call	_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
.LEHE237:
	movq	-392(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L492
	jmp	.L494
.L493:
	movq	%rax, %rbx
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB238:
	call	_Unwind_Resume
.LEHE238:
.L494:
	call	__stack_chk_fail
.L492:
	addq	$408, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2145:
	.section	.gcc_except_table
.LLSDA2145:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2145-.LLSDACSB2145
.LLSDACSB2145:
	.uleb128 .LEHB235-.LFB2145
	.uleb128 .LEHE235-.LEHB235
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB236-.LFB2145
	.uleb128 .LEHE236-.LEHB236
	.uleb128 .L493-.LFB2145
	.uleb128 0
	.uleb128 .LEHB237-.LFB2145
	.uleb128 .LEHE237-.LEHB237
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB238-.LFB2145
	.uleb128 .LEHE238-.LEHB238
	.uleb128 0
	.uleb128 0
.LLSDACSE2145:
	.section	.text._Z9to_stringIdESsT_,"axG",@progbits,_Z9to_stringIdESsT_,comdat
	.size	_Z9to_stringIdESsT_, .-_Z9to_stringIdESsT_
	.section	.text._ZN9__gnu_cxx13new_allocatorIcEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIcEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIcEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIcEC2Ev:
.LFB2149:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2149:
	.size	_ZN9__gnu_cxx13new_allocatorIcEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIcEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIcEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIcEC1Ev,_ZN9__gnu_cxx13new_allocatorIcEC2Ev
	.section	.text._ZN2sf4RectIfEC2Ev,"axG",@progbits,_ZN2sf4RectIfEC5Ev,comdat
	.align 2
	.weak	_ZN2sf4RectIfEC2Ev
	.type	_ZN2sf4RectIfEC2Ev, @function
_ZN2sf4RectIfEC2Ev:
.LFB2184:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdx
	movl	.LC0(%rip), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rdx
	movl	.LC0(%rip), %eax
	movl	%eax, 4(%rdx)
	movq	-8(%rbp), %rdx
	movl	.LC0(%rip), %eax
	movl	%eax, 8(%rdx)
	movq	-8(%rbp), %rdx
	movl	.LC0(%rip), %eax
	movl	%eax, 12(%rdx)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2184:
	.size	_ZN2sf4RectIfEC2Ev, .-_ZN2sf4RectIfEC2Ev
	.weak	_ZN2sf4RectIfEC1Ev
	.set	_ZN2sf4RectIfEC1Ev,_ZN2sf4RectIfEC2Ev
	.section	.text._ZNK2sf4RectIfE10intersectsERKS1_RS1_,"axG",@progbits,_ZNK2sf4RectIfE10intersectsERKS1_RS1_,comdat
	.align 2
	.weak	_ZNK2sf4RectIfE10intersectsERKS1_RS1_
	.type	_ZNK2sf4RectIfE10intersectsERKS1_RS1_, @function
_ZNK2sf4RectIfE10intersectsERKS1_RS1_:
.LFB2186:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movss	(%rax), %xmm1
	movq	-88(%rbp), %rax
	movss	8(%rax), %xmm0
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movl	%eax, -32(%rbp)
	movq	-88(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minIfERKT_S2_S2_
	movl	(%rax), %eax
	movl	%eax, -80(%rbp)
	movq	-88(%rbp), %rax
	movss	(%rax), %xmm1
	movq	-88(%rbp), %rax
	movss	8(%rax), %xmm0
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movl	%eax, -32(%rbp)
	movq	-88(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxIfERKT_S2_S2_
	movl	(%rax), %eax
	movl	%eax, -76(%rbp)
	movq	-88(%rbp), %rax
	movss	4(%rax), %xmm1
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm0
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movl	%eax, -32(%rbp)
	movq	-88(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZSt3minIfERKT_S2_S2_
	movl	(%rax), %eax
	movl	%eax, -72(%rbp)
	movq	-88(%rbp), %rax
	movss	4(%rax), %xmm1
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm0
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movl	%eax, -32(%rbp)
	movq	-88(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZSt3maxIfERKT_S2_S2_
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm1
	movq	-96(%rbp), %rax
	movss	8(%rax), %xmm0
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movl	%eax, -32(%rbp)
	movq	-96(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minIfERKT_S2_S2_
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm1
	movq	-96(%rbp), %rax
	movss	8(%rax), %xmm0
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movl	%eax, -32(%rbp)
	movq	-96(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxIfERKT_S2_S2_
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
	movq	-96(%rbp), %rax
	movss	4(%rax), %xmm1
	movq	-96(%rbp), %rax
	movss	12(%rax), %xmm0
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movl	%eax, -32(%rbp)
	movq	-96(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZSt3minIfERKT_S2_S2_
	movl	(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	-96(%rbp), %rax
	movss	4(%rax), %xmm1
	movq	-96(%rbp), %rax
	movss	12(%rax), %xmm0
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movl	%eax, -32(%rbp)
	movq	-96(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZSt3maxIfERKT_S2_S2_
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxIfERKT_S2_S2_
	movl	(%rax), %eax
	movl	%eax, -48(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxIfERKT_S2_S2_
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	leaq	-60(%rbp), %rdx
	leaq	-76(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minIfERKT_S2_S2_
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	leaq	-52(%rbp), %rdx
	leaq	-68(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minIfERKT_S2_S2_
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movss	-40(%rbp), %xmm0
	ucomiss	-48(%rbp), %xmm0
	jbe	.L498
	movss	-36(%rbp), %xmm0
	ucomiss	-44(%rbp), %xmm0
	jbe	.L498
	movss	-36(%rbp), %xmm0
	subss	-44(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movss	-40(%rbp), %xmm0
	subss	-48(%rbp), %xmm0
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %edx
	leaq	-32(%rbp), %rax
	movaps	%xmm1, %xmm3
	movaps	%xmm0, %xmm2
	movl	%ecx, -108(%rbp)
	movss	-108(%rbp), %xmm1
	movl	%edx, -108(%rbp)
	movss	-108(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZN2sf4RectIfEC1Effff
	movq	-104(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movl	$1, %eax
	jmp	.L502
.L498:
	leaq	-32(%rbp), %rax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	movq	%rax, %rdi
	call	_ZN2sf4RectIfEC1Effff
	movq	-104(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movl	$0, %eax
.L502:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L503
	call	__stack_chk_fail
.L503:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2186:
	.size	_ZNK2sf4RectIfE10intersectsERKS1_RS1_, .-_ZNK2sf4RectIfE10intersectsERKS1_RS1_
	.section	.text._ZNSaIjED2Ev,"axG",@progbits,_ZNSaIjED5Ev,comdat
	.align 2
	.weak	_ZNSaIjED2Ev
	.type	_ZNSaIjED2Ev, @function
_ZNSaIjED2Ev:
.LFB2209:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIjED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2209:
	.size	_ZNSaIjED2Ev, .-_ZNSaIjED2Ev
	.weak	_ZNSaIjED1Ev
	.set	_ZNSaIjED1Ev,_ZNSaIjED2Ev
	.section	.text._ZNKSbIjSt11char_traitsIjESaIjEE6_M_repEv,"axG",@progbits,_ZNKSbIjSt11char_traitsIjESaIjEE6_M_repEv,comdat
	.align 2
	.weak	_ZNKSbIjSt11char_traitsIjESaIjEE6_M_repEv
	.type	_ZNKSbIjSt11char_traitsIjESaIjEE6_M_repEv, @function
_ZNKSbIjSt11char_traitsIjESaIjEE6_M_repEv:
.LFB2211:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSbIjSt11char_traitsIjESaIjEE7_M_dataEv
	subq	$24, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2211:
	.size	_ZNKSbIjSt11char_traitsIjESaIjEE6_M_repEv, .-_ZNKSbIjSt11char_traitsIjESaIjEE6_M_repEv
	.section	.text._ZNKSbIjSt11char_traitsIjESaIjEE13get_allocatorEv,"axG",@progbits,_ZNKSbIjSt11char_traitsIjESaIjEE13get_allocatorEv,comdat
	.align 2
	.weak	_ZNKSbIjSt11char_traitsIjESaIjEE13get_allocatorEv
	.type	_ZNKSbIjSt11char_traitsIjESaIjEE13get_allocatorEv, @function
_ZNKSbIjSt11char_traitsIjESaIjEE13get_allocatorEv:
.LFB2212:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIjEC1ERKS_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2212:
	.size	_ZNKSbIjSt11char_traitsIjESaIjEE13get_allocatorEv, .-_ZNKSbIjSt11char_traitsIjESaIjEE13get_allocatorEv
	.section	.text._ZNSbIjSt11char_traitsIjESaIjEE4_Rep10_M_disposeERKS1_,"axG",@progbits,_ZNSbIjSt11char_traitsIjESaIjEE4_Rep10_M_disposeERKS1_,comdat
	.align 2
	.weak	_ZNSbIjSt11char_traitsIjESaIjEE4_Rep10_M_disposeERKS1_
	.type	_ZNSbIjSt11char_traitsIjESaIjEE4_Rep10_M_disposeERKS1_, @function
_ZNSbIjSt11char_traitsIjESaIjEE4_Rep10_M_disposeERKS1_:
.LFB2213:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	_ZNSbIjSt11char_traitsIjESaIjEE4_Rep12_S_empty_repEv
	cmpq	-8(%rbp), %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L512
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii
	testl	%eax, %eax
	setle	%al
	testb	%al, %al
	je	.L512
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSbIjSt11char_traitsIjESaIjEE4_Rep10_M_destroyERKS1_
.L512:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2213:
	.size	_ZNSbIjSt11char_traitsIjESaIjEE4_Rep10_M_disposeERKS1_, .-_ZNSbIjSt11char_traitsIjESaIjEE4_Rep10_M_disposeERKS1_
	.section	.text._ZSt3minIfERKT_S2_S2_,"axG",@progbits,_ZSt3minIfERKT_S2_S2_,comdat
	.weak	_ZSt3minIfERKT_S2_S2_
	.type	_ZSt3minIfERKT_S2_S2_, @function
_ZSt3minIfERKT_S2_S2_:
.LFB2225:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm1
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L519
	movq	-16(%rbp), %rax
	jmp	.L517
.L519:
	movq	-8(%rbp), %rax
.L517:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2225:
	.size	_ZSt3minIfERKT_S2_S2_, .-_ZSt3minIfERKT_S2_S2_
	.section	.text._ZSt3maxIfERKT_S2_S2_,"axG",@progbits,_ZSt3maxIfERKT_S2_S2_,comdat
	.weak	_ZSt3maxIfERKT_S2_S2_
	.type	_ZSt3maxIfERKT_S2_S2_, @function
_ZSt3maxIfERKT_S2_S2_:
.LFB2226:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm1
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L525
	movq	-16(%rbp), %rax
	jmp	.L523
.L525:
	movq	-8(%rbp), %rax
.L523:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2226:
	.size	_ZSt3maxIfERKT_S2_S2_, .-_ZSt3maxIfERKT_S2_S2_
	.section	.text._ZN2sf4RectIfEC2Effff,"axG",@progbits,_ZN2sf4RectIfEC5Effff,comdat
	.align 2
	.weak	_ZN2sf4RectIfEC2Effff
	.type	_ZN2sf4RectIfEC2Effff, @function
_ZN2sf4RectIfEC2Effff:
.LFB2228:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movss	%xmm2, -20(%rbp)
	movss	%xmm3, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rdx
	movl	-16(%rbp), %eax
	movl	%eax, 4(%rdx)
	movq	-8(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, 8(%rdx)
	movq	-8(%rbp), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, 12(%rdx)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2228:
	.size	_ZN2sf4RectIfEC2Effff, .-_ZN2sf4RectIfEC2Effff
	.weak	_ZN2sf4RectIfEC1Effff
	.set	_ZN2sf4RectIfEC1Effff,_ZN2sf4RectIfEC2Effff
	.section	.text._ZN9__gnu_cxx13new_allocatorIjED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIjED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIjED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIjED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIjED2Ev:
.LFB2235:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2235:
	.size	_ZN9__gnu_cxx13new_allocatorIjED2Ev, .-_ZN9__gnu_cxx13new_allocatorIjED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIjED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIjED1Ev,_ZN9__gnu_cxx13new_allocatorIjED2Ev
	.section	.text._ZNKSbIjSt11char_traitsIjESaIjEE7_M_dataEv,"axG",@progbits,_ZNKSbIjSt11char_traitsIjESaIjEE7_M_dataEv,comdat
	.align 2
	.weak	_ZNKSbIjSt11char_traitsIjESaIjEE7_M_dataEv
	.type	_ZNKSbIjSt11char_traitsIjESaIjEE7_M_dataEv, @function
_ZNKSbIjSt11char_traitsIjESaIjEE7_M_dataEv:
.LFB2237:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2237:
	.size	_ZNKSbIjSt11char_traitsIjESaIjEE7_M_dataEv, .-_ZNKSbIjSt11char_traitsIjESaIjEE7_M_dataEv
	.section	.text._ZNSaIjEC2ERKS_,"axG",@progbits,_ZNSaIjEC5ERKS_,comdat
	.align 2
	.weak	_ZNSaIjEC2ERKS_
	.type	_ZNSaIjEC2ERKS_, @function
_ZNSaIjEC2ERKS_:
.LFB2239:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2239:
	.size	_ZNSaIjEC2ERKS_, .-_ZNSaIjEC2ERKS_
	.weak	_ZNSaIjEC1ERKS_
	.set	_ZNSaIjEC1ERKS_,_ZNSaIjEC2ERKS_
	.section	.text._ZNSbIjSt11char_traitsIjESaIjEE4_Rep12_S_empty_repEv,"axG",@progbits,_ZNSbIjSt11char_traitsIjESaIjEE4_Rep12_S_empty_repEv,comdat
	.weak	_ZNSbIjSt11char_traitsIjESaIjEE4_Rep12_S_empty_repEv
	.type	_ZNSbIjSt11char_traitsIjESaIjEE4_Rep12_S_empty_repEv, @function
_ZNSbIjSt11char_traitsIjESaIjEE4_Rep12_S_empty_repEv:
.LFB2241:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$_ZNSbIjSt11char_traitsIjESaIjEE4_Rep20_S_empty_rep_storageE, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2241:
	.size	_ZNSbIjSt11char_traitsIjESaIjEE4_Rep12_S_empty_repEv, .-_ZNSbIjSt11char_traitsIjESaIjEE4_Rep12_S_empty_repEv
	.section	.text._ZNSbIjSt11char_traitsIjESaIjEE4_Rep10_M_destroyERKS1_,"axG",@progbits,_ZNSbIjSt11char_traitsIjESaIjEE4_Rep10_M_destroyERKS1_,comdat
	.align 2
	.weak	_ZNSbIjSt11char_traitsIjESaIjEE4_Rep10_M_destroyERKS1_
	.type	_ZNSbIjSt11char_traitsIjESaIjEE4_Rep10_M_destroyERKS1_, @function
_ZNSbIjSt11char_traitsIjESaIjEE4_Rep10_M_destroyERKS1_:
.LFB2242:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	salq	$2, %rax
	addq	$24, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rdx
	leaq	-17(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIcEC1IjEERKSaIT_E
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	leaq	-17(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	leaq	-17(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L535
	call	__stack_chk_fail
.L535:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2242:
	.size	_ZNSbIjSt11char_traitsIjESaIjEE4_Rep10_M_destroyERKS1_, .-_ZNSbIjSt11char_traitsIjESaIjEE4_Rep10_M_destroyERKS1_
	.section	.text._ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIjEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_
	.type	_ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_, @function
_ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_:
.LFB2256:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2256:
	.size	_ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_, .-_ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_
	.weak	_ZN9__gnu_cxx13new_allocatorIjEC1ERKS1_
	.set	_ZN9__gnu_cxx13new_allocatorIjEC1ERKS1_,_ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_
	.section	.text._ZNSaIcEC2IjEERKSaIT_E,"axG",@progbits,_ZNSaIcEC5IjEERKSaIT_E,comdat
	.align 2
	.weak	_ZNSaIcEC2IjEERKSaIT_E
	.type	_ZNSaIcEC2IjEERKSaIT_E, @function
_ZNSaIcEC2IjEERKSaIT_E:
.LFB2259:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIcEC2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2259:
	.size	_ZNSaIcEC2IjEERKSaIT_E, .-_ZNSaIcEC2IjEERKSaIT_E
	.weak	_ZNSaIcEC1IjEERKSaIT_E
	.set	_ZNSaIcEC1IjEERKSaIT_E,_ZNSaIcEC2IjEERKSaIT_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	.type	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm, @function
_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm:
.LFB2261:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2261:
	.size	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm, .-_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	.weak	_ZTVN2sf8DrawableE
	.section	.rodata._ZTVN2sf8DrawableE,"aG",@progbits,_ZTVN2sf8DrawableE,comdat
	.align 32
	.type	_ZTVN2sf8DrawableE, @object
	.size	_ZTVN2sf8DrawableE, 40
_ZTVN2sf8DrawableE:
	.quad	0
	.quad	_ZTIN2sf8DrawableE
	.quad	0
	.quad	0
	.quad	__cxa_pure_virtual
	.weak	_ZTSN2sf8DrawableE
	.section	.rodata._ZTSN2sf8DrawableE,"aG",@progbits,_ZTSN2sf8DrawableE,comdat
	.type	_ZTSN2sf8DrawableE, @object
	.size	_ZTSN2sf8DrawableE, 15
_ZTSN2sf8DrawableE:
	.string	"N2sf8DrawableE"
	.weak	_ZTIN2sf8DrawableE
	.section	.rodata._ZTIN2sf8DrawableE,"aG",@progbits,_ZTIN2sf8DrawableE,comdat
	.align 16
	.type	_ZTIN2sf8DrawableE, @object
	.size	_ZTIN2sf8DrawableE, 16
_ZTIN2sf8DrawableE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN2sf8DrawableE
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2274:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2274
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpl	$1, -36(%rbp)
	jne	.L540
	cmpl	$65535, -40(%rbp)
	jne	.L540
	movl	$_ZStL8__ioinit, %edi
.LEHB239:
	call	_ZNSt8ios_base4InitC1Ev
.LEHE239:
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-25(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC56, %esi
	movl	$level, %edi
.LEHB240:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE240:
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movl	$__dso_handle, %edx
	movl	$level, %esi
	movl	$_ZNSsD1Ev, %edi
	call	__cxa_atexit
	movl	$levelNumber, %edi
.LEHB241:
	call	_ZNSsC1Ev
	movl	$__dso_handle, %edx
	movl	$levelNumber, %esi
	movl	$_ZNSsD1Ev, %edi
	call	__cxa_atexit
	movl	$backgroundFile, %edi
	call	_ZNSsC1Ev
	movl	$__dso_handle, %edx
	movl	$backgroundFile, %esi
	movl	$_ZNSsD1Ev, %edi
	call	__cxa_atexit
.L540:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L542
	jmp	.L544
.L543:
	movq	%rax, %rbx
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE241:
.L544:
	call	__stack_chk_fail
.L542:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2274:
	.section	.gcc_except_table
.LLSDA2274:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2274-.LLSDACSB2274
.LLSDACSB2274:
	.uleb128 .LEHB239-.LFB2274
	.uleb128 .LEHE239-.LEHB239
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB240-.LFB2274
	.uleb128 .LEHE240-.LEHB240
	.uleb128 .L543-.LFB2274
	.uleb128 0
	.uleb128 .LEHB241-.LFB2274
	.uleb128 .LEHE241-.LEHB241
	.uleb128 0
	.uleb128 0
.LLSDACSE2274:
	.text
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZN2sf14RectangleShapeD2Ev,"axG",@progbits,_ZN2sf14RectangleShapeD5Ev,comdat
	.align 2
	.weak	_ZN2sf14RectangleShapeD2Ev
	.type	_ZN2sf14RectangleShapeD2Ev, @function
_ZN2sf14RectangleShapeD2Ev:
.LFB2276:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$_ZTVN2sf14RectangleShapeE+16, (%rax)
	movq	-8(%rbp), %rax
	movq	$_ZTVN2sf14RectangleShapeE+72, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf5ShapeD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	.L545
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
.L545:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2276:
	.size	_ZN2sf14RectangleShapeD2Ev, .-_ZN2sf14RectangleShapeD2Ev
	.weak	_ZN2sf14RectangleShapeD1Ev
	.set	_ZN2sf14RectangleShapeD1Ev,_ZN2sf14RectangleShapeD2Ev
	.set	.LTHUNK0,_ZN2sf14RectangleShapeD1Ev
	.section	.text._ZN2sf14RectangleShapeD1Ev,"axG",@progbits,_ZN2sf14RectangleShapeD5Ev,comdat
	.weak	_ZThn8_N2sf14RectangleShapeD1Ev
	.type	_ZThn8_N2sf14RectangleShapeD1Ev, @function
_ZThn8_N2sf14RectangleShapeD1Ev:
.LFB2318:
	.cfi_startproc
	subq	$8, %rdi
	jmp	.LTHUNK0
	.cfi_endproc
.LFE2318:
	.size	_ZThn8_N2sf14RectangleShapeD1Ev, .-_ZThn8_N2sf14RectangleShapeD1Ev
	.section	.text._ZN2sf14RectangleShapeD0Ev,"axG",@progbits,_ZN2sf14RectangleShapeD5Ev,comdat
	.align 2
	.weak	_ZN2sf14RectangleShapeD0Ev
	.type	_ZN2sf14RectangleShapeD0Ev, @function
_ZN2sf14RectangleShapeD0Ev:
.LFB2278:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf14RectangleShapeD1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2278:
	.size	_ZN2sf14RectangleShapeD0Ev, .-_ZN2sf14RectangleShapeD0Ev
	.set	.LTHUNK1,_ZN2sf14RectangleShapeD0Ev
	.weak	_ZThn8_N2sf14RectangleShapeD0Ev
	.type	_ZThn8_N2sf14RectangleShapeD0Ev, @function
_ZThn8_N2sf14RectangleShapeD0Ev:
.LFB2319:
	.cfi_startproc
	subq	$8, %rdi
	jmp	.LTHUNK1
	.cfi_endproc
.LFE2319:
	.size	_ZThn8_N2sf14RectangleShapeD0Ev, .-_ZThn8_N2sf14RectangleShapeD0Ev
	.section	.text._ZN2sf11CircleShapeD2Ev,"axG",@progbits,_ZN2sf11CircleShapeD5Ev,comdat
	.align 2
	.weak	_ZN2sf11CircleShapeD2Ev
	.type	_ZN2sf11CircleShapeD2Ev, @function
_ZN2sf11CircleShapeD2Ev:
.LFB2280:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$_ZTVN2sf11CircleShapeE+16, (%rax)
	movq	-8(%rbp), %rax
	movq	$_ZTVN2sf11CircleShapeE+72, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf5ShapeD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	.L550
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
.L550:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2280:
	.size	_ZN2sf11CircleShapeD2Ev, .-_ZN2sf11CircleShapeD2Ev
	.weak	_ZN2sf11CircleShapeD1Ev
	.set	_ZN2sf11CircleShapeD1Ev,_ZN2sf11CircleShapeD2Ev
	.set	.LTHUNK2,_ZN2sf11CircleShapeD1Ev
	.section	.text._ZN2sf11CircleShapeD1Ev,"axG",@progbits,_ZN2sf11CircleShapeD5Ev,comdat
	.weak	_ZThn8_N2sf11CircleShapeD1Ev
	.type	_ZThn8_N2sf11CircleShapeD1Ev, @function
_ZThn8_N2sf11CircleShapeD1Ev:
.LFB2320:
	.cfi_startproc
	subq	$8, %rdi
	jmp	.LTHUNK2
	.cfi_endproc
.LFE2320:
	.size	_ZThn8_N2sf11CircleShapeD1Ev, .-_ZThn8_N2sf11CircleShapeD1Ev
	.section	.text._ZN2sf11CircleShapeD0Ev,"axG",@progbits,_ZN2sf11CircleShapeD5Ev,comdat
	.align 2
	.weak	_ZN2sf11CircleShapeD0Ev
	.type	_ZN2sf11CircleShapeD0Ev, @function
_ZN2sf11CircleShapeD0Ev:
.LFB2282:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf11CircleShapeD1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2282:
	.size	_ZN2sf11CircleShapeD0Ev, .-_ZN2sf11CircleShapeD0Ev
	.set	.LTHUNK3,_ZN2sf11CircleShapeD0Ev
	.weak	_ZThn8_N2sf11CircleShapeD0Ev
	.type	_ZThn8_N2sf11CircleShapeD0Ev, @function
_ZThn8_N2sf11CircleShapeD0Ev:
.LFB2321:
	.cfi_startproc
	subq	$8, %rdi
	jmp	.LTHUNK3
	.cfi_endproc
.LFE2321:
	.size	_ZThn8_N2sf11CircleShapeD0Ev, .-_ZThn8_N2sf11CircleShapeD0Ev
	.section	.text._ZN2sf6SpriteD2Ev,"axG",@progbits,_ZN2sf6SpriteD5Ev,comdat
	.align 2
	.weak	_ZN2sf6SpriteD2Ev
	.type	_ZN2sf6SpriteD2Ev, @function
_ZN2sf6SpriteD2Ev:
.LFB2284:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2284
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	$_ZTVN2sf6SpriteE+16, (%rax)
	movq	-24(%rbp), %rax
	movq	$_ZTVN2sf6SpriteE+56, 8(%rax)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
.LEHB242:
	call	_ZN2sf13TransformableD2Ev
.LEHE242:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf8DrawableD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	.L560
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	jmp	.L560
.L559:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf8DrawableD2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB243:
	call	_Unwind_Resume
.LEHE243:
.L560:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2284:
	.section	.gcc_except_table
.LLSDA2284:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2284-.LLSDACSB2284
.LLSDACSB2284:
	.uleb128 .LEHB242-.LFB2284
	.uleb128 .LEHE242-.LEHB242
	.uleb128 .L559-.LFB2284
	.uleb128 0
	.uleb128 .LEHB243-.LFB2284
	.uleb128 .LEHE243-.LEHB243
	.uleb128 0
	.uleb128 0
.LLSDACSE2284:
	.section	.text._ZN2sf6SpriteD2Ev,"axG",@progbits,_ZN2sf6SpriteD5Ev,comdat
	.size	_ZN2sf6SpriteD2Ev, .-_ZN2sf6SpriteD2Ev
	.weak	_ZN2sf6SpriteD1Ev
	.set	_ZN2sf6SpriteD1Ev,_ZN2sf6SpriteD2Ev
	.set	.LTHUNK4,_ZN2sf6SpriteD1Ev
	.section	.text._ZN2sf6SpriteD1Ev,"axG",@progbits,_ZN2sf6SpriteD5Ev,comdat
	.weak	_ZThn8_N2sf6SpriteD1Ev
	.type	_ZThn8_N2sf6SpriteD1Ev, @function
_ZThn8_N2sf6SpriteD1Ev:
.LFB2322:
	.cfi_startproc
	subq	$8, %rdi
	jmp	.LTHUNK4
	.cfi_endproc
.LFE2322:
	.size	_ZThn8_N2sf6SpriteD1Ev, .-_ZThn8_N2sf6SpriteD1Ev
	.section	.text._ZN2sf6SpriteD0Ev,"axG",@progbits,_ZN2sf6SpriteD5Ev,comdat
	.align 2
	.weak	_ZN2sf6SpriteD0Ev
	.type	_ZN2sf6SpriteD0Ev, @function
_ZN2sf6SpriteD0Ev:
.LFB2286:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf6SpriteD1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2286:
	.size	_ZN2sf6SpriteD0Ev, .-_ZN2sf6SpriteD0Ev
	.set	.LTHUNK5,_ZN2sf6SpriteD0Ev
	.weak	_ZThn8_N2sf6SpriteD0Ev
	.type	_ZThn8_N2sf6SpriteD0Ev, @function
_ZThn8_N2sf6SpriteD0Ev:
.LFB2323:
	.cfi_startproc
	subq	$8, %rdi
	jmp	.LTHUNK5
	.cfi_endproc
.LFE2323:
	.size	_ZThn8_N2sf6SpriteD0Ev, .-_ZThn8_N2sf6SpriteD0Ev
	.section	.text._ZN2sf11VertexArrayD2Ev,"axG",@progbits,_ZN2sf11VertexArrayD5Ev,comdat
	.align 2
	.weak	_ZN2sf11VertexArrayD2Ev
	.type	_ZN2sf11VertexArrayD2Ev, @function
_ZN2sf11VertexArrayD2Ev:
.LFB2289:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2289
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	$_ZTVN2sf11VertexArrayE+16, (%rax)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
.LEHB244:
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EED1Ev
.LEHE244:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf8DrawableD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	.L568
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	jmp	.L568
.L567:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf8DrawableD2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB245:
	call	_Unwind_Resume
.LEHE245:
.L568:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2289:
	.section	.gcc_except_table
.LLSDA2289:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2289-.LLSDACSB2289
.LLSDACSB2289:
	.uleb128 .LEHB244-.LFB2289
	.uleb128 .LEHE244-.LEHB244
	.uleb128 .L567-.LFB2289
	.uleb128 0
	.uleb128 .LEHB245-.LFB2289
	.uleb128 .LEHE245-.LEHB245
	.uleb128 0
	.uleb128 0
.LLSDACSE2289:
	.section	.text._ZN2sf11VertexArrayD2Ev,"axG",@progbits,_ZN2sf11VertexArrayD5Ev,comdat
	.size	_ZN2sf11VertexArrayD2Ev, .-_ZN2sf11VertexArrayD2Ev
	.weak	_ZN2sf11VertexArrayD1Ev
	.set	_ZN2sf11VertexArrayD1Ev,_ZN2sf11VertexArrayD2Ev
	.section	.text._ZN2sf11VertexArrayD0Ev,"axG",@progbits,_ZN2sf11VertexArrayD5Ev,comdat
	.align 2
	.weak	_ZN2sf11VertexArrayD0Ev
	.type	_ZN2sf11VertexArrayD0Ev, @function
_ZN2sf11VertexArrayD0Ev:
.LFB2291:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf11VertexArrayD1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2291:
	.size	_ZN2sf11VertexArrayD0Ev, .-_ZN2sf11VertexArrayD0Ev
	.section	.text._ZN2sf4TextD2Ev,"axG",@progbits,_ZN2sf4TextD5Ev,comdat
	.align 2
	.weak	_ZN2sf4TextD2Ev
	.type	_ZN2sf4TextD2Ev, @function
_ZN2sf4TextD2Ev:
.LFB2292:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2292
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	$_ZTVN2sf4TextE+16, (%rax)
	movq	-24(%rbp), %rax
	movq	$_ZTVN2sf4TextE+56, 8(%rax)
	movq	-24(%rbp), %rax
	addq	$216, %rax
	movq	%rax, %rdi
.LEHB246:
	call	_ZN2sf11VertexArrayD1Ev
.LEHE246:
	movq	-24(%rbp), %rax
	addq	$184, %rax
	movq	%rax, %rdi
.LEHB247:
	call	_ZN2sf6StringD1Ev
.LEHE247:
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
.LEHB248:
	call	_ZN2sf13TransformableD2Ev
.LEHE248:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf8DrawableD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	.L580
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	jmp	.L580
.L577:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	addq	$184, %rax
	movq	%rax, %rdi
	call	_ZN2sf6StringD1Ev
	jmp	.L575
.L578:
	movq	%rax, %rbx
.L575:
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN2sf13TransformableD2Ev
	jmp	.L576
.L579:
	movq	%rax, %rbx
.L576:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf8DrawableD2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB249:
	call	_Unwind_Resume
.LEHE249:
.L580:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2292:
	.section	.gcc_except_table
.LLSDA2292:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2292-.LLSDACSB2292
.LLSDACSB2292:
	.uleb128 .LEHB246-.LFB2292
	.uleb128 .LEHE246-.LEHB246
	.uleb128 .L577-.LFB2292
	.uleb128 0
	.uleb128 .LEHB247-.LFB2292
	.uleb128 .LEHE247-.LEHB247
	.uleb128 .L578-.LFB2292
	.uleb128 0
	.uleb128 .LEHB248-.LFB2292
	.uleb128 .LEHE248-.LEHB248
	.uleb128 .L579-.LFB2292
	.uleb128 0
	.uleb128 .LEHB249-.LFB2292
	.uleb128 .LEHE249-.LEHB249
	.uleb128 0
	.uleb128 0
.LLSDACSE2292:
	.section	.text._ZN2sf4TextD2Ev,"axG",@progbits,_ZN2sf4TextD5Ev,comdat
	.size	_ZN2sf4TextD2Ev, .-_ZN2sf4TextD2Ev
	.weak	_ZN2sf4TextD1Ev
	.set	_ZN2sf4TextD1Ev,_ZN2sf4TextD2Ev
	.set	.LTHUNK6,_ZN2sf4TextD1Ev
	.section	.text._ZN2sf4TextD1Ev,"axG",@progbits,_ZN2sf4TextD5Ev,comdat
	.weak	_ZThn8_N2sf4TextD1Ev
	.type	_ZThn8_N2sf4TextD1Ev, @function
_ZThn8_N2sf4TextD1Ev:
.LFB2324:
	.cfi_startproc
	subq	$8, %rdi
	jmp	.LTHUNK6
	.cfi_endproc
.LFE2324:
	.size	_ZThn8_N2sf4TextD1Ev, .-_ZThn8_N2sf4TextD1Ev
	.section	.text._ZN2sf4TextD0Ev,"axG",@progbits,_ZN2sf4TextD5Ev,comdat
	.align 2
	.weak	_ZN2sf4TextD0Ev
	.type	_ZN2sf4TextD0Ev, @function
_ZN2sf4TextD0Ev:
.LFB2294:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf4TextD1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2294:
	.size	_ZN2sf4TextD0Ev, .-_ZN2sf4TextD0Ev
	.set	.LTHUNK7,_ZN2sf4TextD0Ev
	.weak	_ZThn8_N2sf4TextD0Ev
	.type	_ZThn8_N2sf4TextD0Ev, @function
_ZThn8_N2sf4TextD0Ev:
.LFB2325:
	.cfi_startproc
	subq	$8, %rdi
	jmp	.LTHUNK7
	.cfi_endproc
.LFE2325:
	.size	_ZThn8_N2sf4TextD0Ev, .-_ZThn8_N2sf4TextD0Ev
	.section	.rodata
	.align 4
	.type	_ZL14numberOfLevels, @object
	.size	_ZL14numberOfLevels, 4
_ZL14numberOfLevels:
	.long	9
	.weak	_ZNSbIjSt11char_traitsIjESaIjEE4_Rep20_S_empty_rep_storageE
	.section	.bss._ZNSbIjSt11char_traitsIjESaIjEE4_Rep20_S_empty_rep_storageE,"awG",@nobits,_ZNSbIjSt11char_traitsIjESaIjEE4_Rep20_S_empty_rep_storageE,comdat
	.align 32
	.type	_ZNSbIjSt11char_traitsIjESaIjEE4_Rep20_S_empty_rep_storageE, @gnu_unique_object
	.size	_ZNSbIjSt11char_traitsIjESaIjEE4_Rep20_S_empty_rep_storageE, 32
_ZNSbIjSt11char_traitsIjESaIjEE4_Rep20_S_empty_rep_storageE:
	.zero	32
	.section	.text._ZNSt6vectorIN2sf6VertexESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIN2sf6VertexESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIN2sf6VertexESaIS1_EED2Ev
	.type	_ZNSt6vectorIN2sf6VertexESaIS1_EED2Ev, @function
_ZNSt6vectorIN2sf6VertexESaIS1_EED2Ev:
.LFB2296:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2296
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB250:
	call	_ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E
.LEHE250:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
.LEHB251:
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev
.LEHE251:
	jmp	.L587
.L586:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB252:
	call	_Unwind_Resume
.LEHE252:
.L587:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2296:
	.section	.gcc_except_table
.LLSDA2296:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2296-.LLSDACSB2296
.LLSDACSB2296:
	.uleb128 .LEHB250-.LFB2296
	.uleb128 .LEHE250-.LEHB250
	.uleb128 .L586-.LFB2296
	.uleb128 0
	.uleb128 .LEHB251-.LFB2296
	.uleb128 .LEHE251-.LEHB251
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB252-.LFB2296
	.uleb128 .LEHE252-.LEHB252
	.uleb128 0
	.uleb128 0
.LLSDACSE2296:
	.section	.text._ZNSt6vectorIN2sf6VertexESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIN2sf6VertexESaIS1_EED5Ev,comdat
	.size	_ZNSt6vectorIN2sf6VertexESaIS1_EED2Ev, .-_ZNSt6vectorIN2sf6VertexESaIS1_EED2Ev
	.weak	_ZNSt6vectorIN2sf6VertexESaIS1_EED1Ev
	.set	_ZNSt6vectorIN2sf6VertexESaIS1_EED1Ev,_ZNSt6vectorIN2sf6VertexESaIS1_EED2Ev
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD2Ev:
.LFB2300:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIN2sf6VertexEED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2300:
	.size	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev
	.type	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev, @function
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev:
.LFB2302:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2302
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB253:
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_m
.LEHE253:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD1Ev
	jmp	.L594
.L593:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB254:
	call	_Unwind_Resume
.LEHE254:
.L594:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2302:
	.section	.gcc_except_table
.LLSDA2302:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2302-.LLSDACSB2302
.LLSDACSB2302:
	.uleb128 .LEHB253-.LFB2302
	.uleb128 .LEHE253-.LEHB253
	.uleb128 .L593-.LFB2302
	.uleb128 0
	.uleb128 .LEHB254-.LFB2302
	.uleb128 .LEHE254-.LEHB254
	.uleb128 0
	.uleb128 0
.LLSDACSE2302:
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev, .-_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED1Ev
	.set	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED1Ev,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB2304:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2304:
	.size	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E
	.type	_ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E, @function
_ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E:
.LFB2305:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPN2sf6VertexEEvT_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2305:
	.size	_ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E, .-_ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E
	.section	.text._ZNSaIN2sf6VertexEED2Ev,"axG",@progbits,_ZNSaIN2sf6VertexEED5Ev,comdat
	.align 2
	.weak	_ZNSaIN2sf6VertexEED2Ev
	.type	_ZNSaIN2sf6VertexEED2Ev, @function
_ZNSaIN2sf6VertexEED2Ev:
.LFB2307:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2307:
	.size	_ZNSaIN2sf6VertexEED2Ev, .-_ZNSaIN2sf6VertexEED2Ev
	.weak	_ZNSaIN2sf6VertexEED1Ev
	.set	_ZNSaIN2sf6VertexEED1Ev,_ZNSaIN2sf6VertexEED2Ev
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_m,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_m
	.type	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_m, @function
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_m:
.LFB2309:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L600
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx14__alloc_traitsISaIN2sf6VertexEEE10deallocateERS3_PS2_m
.L600:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2309:
	.size	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_m, .-_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_m
	.section	.text._ZSt8_DestroyIPN2sf6VertexEEvT_S3_,"axG",@progbits,_ZSt8_DestroyIPN2sf6VertexEEvT_S3_,comdat
	.weak	_ZSt8_DestroyIPN2sf6VertexEEvT_S3_
	.type	_ZSt8_DestroyIPN2sf6VertexEEvT_S3_, @function
_ZSt8_DestroyIPN2sf6VertexEEvT_S3_:
.LFB2310:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2310:
	.size	_ZSt8_DestroyIPN2sf6VertexEEvT_S3_, .-_ZSt8_DestroyIPN2sf6VertexEEvT_S3_
	.section	.text._ZN9__gnu_cxx13new_allocatorIN2sf6VertexEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEED2Ev:
.LFB2312:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2312:
	.size	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEED2Ev, .-_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEED1Ev,_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEED2Ev
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIN2sf6VertexEEE10deallocateERS3_PS2_m,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIN2sf6VertexEEE10deallocateERS3_PS2_m,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIN2sf6VertexEEE10deallocateERS3_PS2_m
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIN2sf6VertexEEE10deallocateERS3_PS2_m, @function
_ZN9__gnu_cxx14__alloc_traitsISaIN2sf6VertexEEE10deallocateERS3_PS2_m:
.LFB2314:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE10deallocateEPS2_m
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2314:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIN2sf6VertexEEE10deallocateERS3_PS2_m, .-_ZN9__gnu_cxx14__alloc_traitsISaIN2sf6VertexEEE10deallocateERS3_PS2_m
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_:
.LFB2315:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2315:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_
	.section	.text._ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE10deallocateEPS2_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE10deallocateEPS2_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE10deallocateEPS2_m
	.type	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE10deallocateEPS2_m, @function
_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE10deallocateEPS2_m:
.LFB2316:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2316:
	.size	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE10deallocateEPS2_m, .-_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE10deallocateEPS2_m
	.text
	.type	_GLOBAL__sub_I_powerupCount, @function
_GLOBAL__sub_I_powerupCount:
.LFB2317:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2317:
	.size	_GLOBAL__sub_I_powerupCount, .-_GLOBAL__sub_I_powerupCount
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_powerupCount
	.section	.rodata
	.align 8
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, @object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 8
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.quad	_ZL28__gthrw___pthread_key_createPjPFvPvE
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.align 4
.LC0:
	.long	0
	.align 4
.LC9:
	.long	3236954112
	.align 4
.LC12:
	.long	3276275712
	.align 4
.LC13:
	.long	1142292480
	.align 4
.LC14:
	.long	1092616192
	.align 4
.LC15:
	.long	1140457472
	.align 4
.LC64:
	.long	1125515264
	.align 4
.LC66:
	.long	1128792064
	.align 4
.LC67:
	.long	1133903872
	.align 4
.LC70:
	.long	1138819072
	.align 4
.LC72:
	.long	1141473280
	.align 8
.LC73:
	.long	0
	.long	1076101120
	.align 4
.LC74:
	.long	1132920832
	.align 4
.LC76:
	.long	1137180672
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.9.1-16ubuntu6) 4.9.1"
	.section	.note.GNU-stack,"",@progbits
