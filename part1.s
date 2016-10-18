	.file	"get_shell.c"
	.section .data
	.section .text
	.text
	.globl	main
	.type	main, @function
	.global _start


main:
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$.LC0, -16(%rbp)
	xorq	%rax, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	leaq	-16(%rbp), %rcx
	xorl	%edx, %edx
	movl	%edx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	xorq	%rax, %rax
	movb 	$59, %al
	syscall
	#call	execve
	xorl	%eax, %eax
	movl	%eax, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
	
.section	.rodata

.LC0:
	.string	"/bin/sh"
	
