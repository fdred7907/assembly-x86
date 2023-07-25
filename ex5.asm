global _start

_start:
    mov ebx, 1; store output in exit status
    mov ecx, 4;
label:
    add ebx,ebx ; double ebx
    dec ecx; decrement ecx by 1
    cmp ecx, 0; compare
    jg label;
    mov eax, 1; system call 
    int 0x80 ; exit system call interrupt

    