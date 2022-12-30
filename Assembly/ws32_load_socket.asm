; Declare constants for the DLL and function names
section .data
  ws2_32 db "ws2_32.dll",0
  socket db "socket",0

; Declare the main function
section .text
  global _start

_start:
  ; Load the ws2_32.dll library
  push ws2_32
  call dword [LoadLibraryA]

  ; Find the address of the socket function
  push socket
  push eax
  call dword [GetProcAddress]

  ; Create a new socket
  xor eax, eax
  push eax
  push eax
  push eax
  call eax

  ; Check the return value of the socket function
  cmp eax, -1
  jz error
  ; (socket creation was successful)

  ; Exit the program
  push eax
  call dword [ExitProcess]

error:
  ; (socket creation failed)
  push eax
  call dword [ExitProcess]
