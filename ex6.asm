global _start

section .data:
    addr db 'yellow', 0x0a
    len equ $ - addr
_start:
    mov [addr], byte 'H'
    mov [addr + 5], byte '!'
    mov eax, 4 ; system write call
    mov ebx, 1 ; stdout file descriptor
    mov ecx, addr ; point to addr
    mov edx, 6; because yellow is 6 bytes
    int 0x80;
    mov eax, 1 ; exit system call
    mov ebx, 0 ; exit status code successful
    int 0x80 ;


