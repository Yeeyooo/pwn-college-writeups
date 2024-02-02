.intel_syntax noprefix
.global _start
.section .text
_start:
    #socket
    mov rdi,2
    mov rsi,1
    mov rdx,0
    mov rax,41
    syscall


    #bind
    mov rdi,rax
    lea rsi,[rip+addr]
    mov rdx,16
    mov rax,49
    syscall

    #listen
    mov rdi, 3
    mov rsi, 0
    mov rax, 0x32
    syscall

    #accept
    mov rdi,3
    mov rsi,0
    mov rdx,0
    mov rax,0x2B
    syscall

    #exit
    mov rdi,0
    mov rax,60
    syscall

.section .data
addr:
.2byte 2
.2byte 0x5000
.4byte 0
.8byte 0
