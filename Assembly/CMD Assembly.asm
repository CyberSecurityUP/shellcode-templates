section .text
    global _start

_start:
    ; load cmd.exe into memory
    xor ecx, ecx
    mov al, 0x3e
    mov ebx, ecx
    mov cx, 0x7463
    mov edx, ecx
    mov esi, esp
    push ecx
    push 0x5f56444d
    push 0x6d7263
    mov ebx, esp
    push ecx
    push ebx
    push esi
    push ecx
    mov ecx, esp
    int 0x80

    ; execute cmd.exe
    xor ecx, ecx
    mov al, 0x3b
    int 0x80