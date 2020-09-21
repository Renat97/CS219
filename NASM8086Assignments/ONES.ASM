; Write a program called ONES to determine the number of bits equal to one in a 32-bit variable. The 32-bit variable is in memory
;location 0x0154. Store the 8-bit counter in memory location 0x0150.
; Renat Norderhaug
;  Does it store the least significant bits first?
;
org 100h
section .text
; beginning address of code = 0x0100
;*******************************************************
;
; put your code here
;
start:
mov si, 0x150 ; makes si address 154
mov ax,[si + 4] ; sets ax to address 154
mov ax,[Value] ; moves the 32 bit value to address 154
mov di, 0 ; initialize counter
Lp1:
mov bx,[Value+ di] ; store the first bit 0 into "bx"
cmp bx,1 ; comparing the value 1
JE zero  ; if bx = zero then go to a different loop
add [si], 1 ; add one to counter
inc di
jmp Lp1

zero:
jmp ilp





; we need to combine ax and bx and then shift it left by Number 2


; end of your code
;
;*******************************************************
ILP:	JMP	ILP				;infinite loop
;
TIMES 50H -($-$$) DB 0
section .data
; beginning address of data = 0x0150
;*******************************************************
;
; put your data items here
;
counter: DB 0 ; where u store values
Value: DD 0110 1010 1100 0010 1011 1100 0111 0101 ; 32 bit value

; DB for up to 8 bits, DW for up to 16 bits, DD for up to 32 bits, DQ for up to 64 bits


;
; end of your data
;
;*******************************************************
