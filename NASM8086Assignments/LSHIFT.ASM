; LSHIFT to shift logically the 32-bit contents of memory location 0x0150 left according to the 8-bit shift
; count stored in memory location 0x0154 and store the results at memory address 0x0158.
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

mov si,0x0150 ; location 150
mov ax,[si] ; stores first 16 bits
mov bx,[si + 0x002] ; stores next 16 bits
lsh ax, 1
rtc bx, 1
; lsh ax, 1
; rtc bx,1
; shift by Number 2 as loop index, when it reaches zero stop shifting


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
Number1 DD 1001 1001 1111 1010 1000 1100 0110 1000  ; stored between memory locations 150 - 153
Number2 DW 1011 1100  ; stored in memory location 154

; DB for up to 8 bits, DW for up to 16 bits, DD for up to 32 bits, DQ for up to 64 bits


;
; end of your data
;
;*******************************************************
