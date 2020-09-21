;Write a program called SCAN to scan a list of unsigned bytes and find the smallest and largest entries in the list. The length of the
;list is stored in a 16-bit variable at addresses 0x0152 and 0x0154. The list begins at address 0x0160. Store the smallest byte at address
;0x0150 and the largest byte at address 0x0151.
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
mov si, 0x160
mov ax, [si]
mov ax, [DLST] ; does this work to store DLST to address 0x160

mov di, 0




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
Smallest: db 0 ; smallest byte stored here
largest: db 0  ; largest byte stored here
LSTL: dd 1010 1100 1011 1000 ; stores the length of the list
DLST: dd 0001 1100 1010 0010
; DB for up to 8 bits, DW for up to 16 bits, DD for up to 32 bits, DQ for up to 64 bits


;
; end of your data
;
;*******************************************************
