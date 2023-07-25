global _start

_start:
    call func ; call to function
    mov eax, 1; system exit call
    mov ebx, 0 ; exit status
    int 0x80 ; execute exit call
func:
    push ebp ; push the old value onto ebp for nested functions or iterated functions
    mov ebp, esp ;  move stack pointer to base pointer to save return location 
    sub esp, 2 ; allocate 2 bytes on stack
    mov [esp], byte 'H' ; allocate first byte to esp
    mov [esp + 1] , byte 'i' ; allocate second byte to esp
    mov eax, 4 ; write system call
    mov ebx, 1 ; stdout file descriptor
    mov ecx, esp ; write what
    mov edx, 2 ; number of bytes to write
    int 0x80 ; execute write call
    mov esp,ebp ; mov location of instruction after return to stack pointer
    pop ebp ; to rmeove the current function call's stack pointer location to instruction after call
    ret ; return to instruction after function call
