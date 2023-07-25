global _start

_start:
    call func ; 
    mov eax, 1;
    int 0x80
func:
    mov ebx, 42;
    ret ;  short for pop off stack and jmp to instruction after call statement
    