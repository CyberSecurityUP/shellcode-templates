; Declare constants for the DLL and function names
section .data
  kernel32 db "kernel32.dll",0
  loadlibrary db "LoadLibraryA",0
  ws2_32 db "ws2_32.dll",0

; Declare the main function
section .text
  global _start

_start:
  ; Load the kernel32.dll library
  push kernel32
  call dword [GetModuleHandleA]

  ; Find the address of the LoadLibraryA function
  push loadlibrary
  push eax
  call dword [GetProcAddress]

  ; Load the ws2_32.dll library
  push ws2_32
  call eax