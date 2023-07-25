global _start

_start:
    sub esp, 4 ; subtract 4 bytes from esp
    mov [esp], byte 'H' ;
    mov [esp + 1], byte 'e' ;
    mov [esp + 2], byte 'y' ;
    mov [esp + 3 ], byte '!';
    mov eax, 4 ; system write call
    mov ebx, 1 ; stdout file descriptor
    mov ecx, esp ; address to write
    mov edx, 4 ; size to write to 
    int 0x80 ; execute interrrupt call
    mov eax, 1 ; exit system call
    mov ebx, 0 ; exit status code
    int 0x80 ; execute interrupt
