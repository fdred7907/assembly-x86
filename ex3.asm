global _start

section .text

_start:
    mov ebx, 42 ;exit status 42
    mov eax, 1 ; system exit call
    jmp skip
    mov ebx, 13; new value of exit status

skip:
    int 0x80 ; interrupt for exit code

 