global _start

section .text

_start:
    mov ecx, 99; put 99 in ecx
    mov ebx, 42;exit status
    mov eax, 1; system call
    cmp ecx, 98; compare 
    jl skip ; jump if less than
    mov ebx, 13; change exit status

skip:
    int 0x80 ; exit interrupt

