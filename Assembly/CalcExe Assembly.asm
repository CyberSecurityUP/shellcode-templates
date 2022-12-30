section .text
    global _start

_start:
    ; load calc.exe into memory
    xor ecx, ecx
    mov al, 0x3e
    mov ebx, ecx
    mov cx, 0x7373
    mov edx, ecx
    mov esi, esp
    push ecx
    push 0x746e6957
    push 0x636c6163
    mov ebx, esp
    push ecx
    push ebx
    push esi
    push ecx
    mov ecx, esp
    int 0x80

    ; execute calc.exe
    xor ecx, ecx
    mov al, 0x3b
    int 0x80