[org 0x7c00]
  mov ax, HELLO_MSG
  call print16

  mov ax, GOODBYE_MSG
  call print16

  jmp $

%include "print16.asm"

HELLO_MSG:
  db `Hello, World!\n\r`, 0

GOODBYE_MSG:
  db `Goodbye!\n\r`, 0

; Padding and magic number
  times 510-($-$$) db 0
  dw 0xaa55
