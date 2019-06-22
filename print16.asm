; Prints a string to tty terminal. 16-bit
; 
; ax    Address of string
; ret   N/A
;
; bx    char loading
print16:
  pusha
  mov bx, ax      ; ax will be used for chars

  mov ah, 0x0e    ; tty mode
  mov al, [bx]    ; load char
  cmp al, 0       ; look for null char
  je end

loop:
  int 0x10        ; print char
  inc bx
  mov al, [bx]    
  cmp al, 0       ; stop if null char
  jne loop

end:
  popa
  ret
