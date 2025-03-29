section .bss
	start_count resq 1
	end_count resq 1

section .data
    format db "Czas sortowania: %ld cykli", 10, 0  

section .text
    extern quicksort
    extern printf
    global main

main:
  
    cpuid
    rdtsc
    shl rdx, 32
    or rax, rdx
    mov [start_count], rax  

    
    call quicksort
    
    cpuid
    rdtsc
    shl rdx, 32
    or rax, rdx
    mov [end_count], rax  
    
    
    mov rax, [end_count]
    sub rax, [start_count]

    
    mov rdi, format
    mov rsi, rax
    xor rax, rax
    call printf

    

    mov rax, 60
    xor rdi, 0
    syscall
