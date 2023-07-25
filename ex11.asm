global _start

_start:
    push 21 ; pushing argument to function on the stack
    call func ; moves to function call and stores return address in stack
    mov ebx, eax ; to write out put in exit status
    mov eax, 1 ; exit system call
    int 0x80 ; execute exit system call
func:
    push ebp ; push the old value of ebp tp stack to save it
    mov ebp, esp ; store the current esp to ebp
    mov eax, [ebp + 8] ; store the argument at esp + 8 to the eax reg
    add eax, eax ; add eax to itself for double multiples
    mov esp, ebp ; mov ebp back to esp
    pop ebp ;
    ret
