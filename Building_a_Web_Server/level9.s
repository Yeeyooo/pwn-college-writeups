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

accept:
    #accept
    mov rdi,3
    mov rsi,0
    mov rdx,0
    mov rax,0x2B
    syscall

    #fork
    mov rax,0x39
    syscall

    cmp rax,0
    jne parent

    # child close(3)
    mov rdi,3
    mov rax,3
    syscall

    # child read(4,<read_request>,<read_request_count>)
    mov rdi,4
    mov rsi,rsp
    mov rdx,256
    mov rax,0
    syscall

    # child open("<open_path>",O_RDONLY)
    # extract file path
loop1:
    mov al,byte ptr [rsp]
    cmp al,' '
    je loop1end
    inc rsp
    jmp loop1
loop1end:
    inc rsp
    mov rbx,rsp
filepath:
    mov al,byte ptr[rbx]
    cmp al,' '
    je filepathend
    inc rbx
    jmp filepath
filepathend:
    mov byte ptr[rbx], 0
    mov rdi,rsp
    mov rsi,0
    mov rax,2
    syscall

    # child read(3,<read_file>,<read_file_count>) = <read_request_result>
    mov rdi,rax
    mov rsi,rsp
    mov rdx,256
    mov rax,0
    syscall
    mov r10,rax

    # child close(3)
    mov rdi,3
    mov rax,3
    syscall

    # child write
    mov rdi,4
    lea rsi,[rip+response]
    mov rdx,19
    mov rax,1
    syscall

    # child write(4,<write_file>,<write_file_count>) = <write_file_result>
    mov rdi,4
    mov rsi,rsp
    mov rdx,r10
    mov rax,1
    syscall

    # exit
    mov rdi,0
    mov rax,60
    syscall


parent:
    #close(4)
    mov rdi,4
    mov rax,3
    syscall
    jmp accept

.section .data
addr:
.2byte 2
.2byte 0x5000
.4byte 0
.8byte 0

response:
.ascii "HTTP/1.0 200 OK\r\n\r\n"

