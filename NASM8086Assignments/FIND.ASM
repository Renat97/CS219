; FIND which finds the larger of two signed bytes. Assuming the two bytes are in memory 0x150 and 0x151, store the larger of two in 152
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

mov si,0x150 ; location 150
mov al,[si] ; moves Number1 into al
mov ah,[si+0x1] ; moves Number2 into ah
cmp ah, al ; subtracts ah and al without setting any flag
jg move1  ; jump if ah is greater than or equal to al
mov [si + 0x2], al ; mov al into 152 if it is not greater than ah

move1:   ; if ah is greater than al
 mov [si+0x2], ah


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
Number1 DW 10010001  ; stored between memory locations 150
Number2 DW 11100011  ; stored in memory location 151

; DB for up to 8 bits, DW for up to 16 bits, DD for up to 32 bits, DQ for up to 64 bits


;
; end of your data
;
;*******************************************************
