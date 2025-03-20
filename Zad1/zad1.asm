section .data
	input_format db "%d", 0
	output_format db "%d", 10, 0

section .text
	extern scanf
	extern printf
	global main

main:
	sub rsp, 8
	
	mov rdi, input_format
	mov rsi, rsp
	xor rax, rax
	call scanf
	
	mov rdi, [rsp]

	mov rax, rdi
   	imul rax, rdi
    	imul rax, rdi

    	mov rbx, rdi
    	imul rbx, rdi
    	imul rbx, 3

    	mov rcx, rdi
    	imul rcx, 2

    	add rax, rbx
    	add rax, rcx

	mov rdi, output_format
	mov rsi, rax
	xor rax, rax
	call printf
	
	add rsp, 8
    	mov rdi, 0
    	mov rax, 60
	syscall
