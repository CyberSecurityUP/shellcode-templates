section .text
    global _start

_start:
    ; load bash into memory
    xor eax, eax
    mov al, 0xb
    xor ecx, ecx
    push ecx
    push 0x68732f2f
    push 0x6e69622f
    mov ebx, esp
    xor edx, edx
    int 0x80