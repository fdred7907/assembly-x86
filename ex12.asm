extern printf 

section .text
    global main

section .data
    msg dd "Testing %i ...", 0x0a, 0x00

main:
    push ebp ; push ebp old value to stack
    mov ebp, esp ;  store current esp value
    push 123 ; push argument
    push msg ; push argument in reverse order
    call printf ; function call 
    mov eax, 0; exit status
    mov esp, ebp;  resolve old value of stack pointer
    pop ebp ; remove value ebp
    ret ; return from main 
    
