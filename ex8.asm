global _start

_start:
    call func ; function call
    mov eax, 1 ; system write call
    int 0x80 ; execute interrupt
func:
    mov ebx, 42 ; exit status in func call
    pop eax ; stack stores addres -> mov eax, 1 immed after func call , pop it into eax
    jmp eax ;  return to that instruction 
    