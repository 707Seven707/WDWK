section .data
	n resb 5
section .bss
	result resq 1

section .text
	global _start
_start:
	mov rax, 0
	mov rdi, 0
	mov rsi, n
	mov rdx, 5
	syscall

	mov rbx, n
	imul rbx, rbx

	mov rdx, rbx
	imul rdx, 3

	mov rxc, n
	shl rxc, 1


	mov rax, 1
	mov rdi, 1
	mov rsi, n
	mov rdx, 100
	syscall

	mov rax, 60
	mov rdi, 0
	syscall
