; Write an 8086 program to take a string at STR1 below, and write it back to STR2 in reverse order
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
mov si, 10 ; length of the 1st string
mov di, 0 ; destination index register

LP1:
mov al, [str1+si] ; moves last element into ax, which is H
mov [str2 + di], al ; moves to first element of str2
dec si ; decrement the source index counter, so it moves the element before in the reversed string
inc di ; increment the destination index counter, so you can move the element to the next spot in str2
cmp si,0 ; compare si, 0, so once the source index hits 0 you will be done because the length starts at 0?
JE ILP  ; if you are at the null terminator the go to infinite loop
jmp LP1 ; jumps back if it is not the end of 1st string




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
str1 db 'dlroW olleH', 0  ; stored between memory locations 150 - 153
str2 db 0  ; stored in memory location 154

; DB for up to 8 bits, DW for up to 16 bits, DD for up to 32 bits, DQ for up to 64 bits


;
; end of your data
;
;*******************************************************
