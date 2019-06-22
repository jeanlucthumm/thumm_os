[org 0x7c00]

  mov ah, 0x0e; tty mode

  mov al, [the_secret]
  int 0x10

  jmp $; infinite loop

the_secret:
  db "X"

; Padding and magic number
  times 510-($-$$) db 0
  dw 0xaa55
