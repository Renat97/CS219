; Combine which should combine 0001, 1100, 0110, 1101, and store result as 16 bits into location 154
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
mov al,[si] ; stores memory adress 150 into al, the least four bits
mov ah,[si + 0x1] ; stores memory adress 151 into al, the next eight bits
mov bl,[si + 0x2] ; stores memory adress 152 into bl, the next eight bits
mov bh,[si + 0x3] ; stores memory adress 153 into bh, the next eight bits

Shl al, 4 ; gets rid of the 4 most significant bits in al
shl ah, 4 ; gets rid of the 4 most significant bits in ah
shl bl, 4 ; gets rid of the 4 most significant bits in bl
shl bh, 4 ; gets rid of the 4 most significant bits in bh

add al, ah ; adds nibbles of al and ah
add bl, bh ; adds nibbles of bl and bh

mov cx, 0 ; initialize cx register
add cx, al ; adds first 8 bits into cx
add cx, bl ; adds next 8 bits into cx
mov [si + 0x4], cx ; moves the 16 bits into si + 0x4

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
Number1 DD 0101 1101 0100 0110 0111 1100 1010 0001b  ; stored between memory locations 150 to 153

; DB for up to 8 bits, DW for up to 16 bits, DD for up to 32 bits, DQ for up to 64 bits


;
; end of your data
;
;*******************************************************
