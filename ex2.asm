global _start

section .rodata
    msg dw "Hi", 0x0A
    len equ $ - msg

section .text
_start:
    mov eax, 4 ; system write call
    mov ebx, 1 ; std output file descriptor 
    mov ecx, msg ; string pointer 
    mov edx, len ; string length
    int 0x80 ; interrupt to perform system call
    mov eax, 1 ; exit system call
    mov ebx, 0 ; exit status
    int 0x80 

