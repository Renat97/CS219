; Write a program called FIND8 to find the largest unsigned 8-bit word in a list. The list begins at address 0x0154. The length of the
; list is stored in an 8-bit variable at address 0x0150. Store the largest entry in memory location 0x0152.
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

mov si,0 ; initialize the counter
mov al,0 ; initalize max value register

Lp1: ; 1st loop
mov ah,[DLST + si] ; move the start of the list into ah
cmp ah, al ; subtract start from max value register but dont change values, just change flags
JA check ; if ah is greater than al then jump to "check"
mov al, ah ; move the value into the max value register since it is not greater than
inc si ; increment si to the next number in the list
Jmp Lp1 ; repeat the process of LP1

check: ; checks to see if we are at the end of the list
mov bh,[LSTL] ; moves the length of the list which is 14 into bh
sub bh,1 ; subtract the length of the list for the null terminator
cmp bh, si ; subtract length from counter
jle done ; if length is less than or equal to then store the max value register into the larget register


done:
mov [largest], al ; move al into the location if it is greater than





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
LSTL db 14  ; length of the list, stored in 150
Largest Db 0 ; stored in memory location 152
DLST:	DB	254,5,25,250,100,150,30,200,253,15,23,46,73,175,0

; DB for up to 8 bits, DW for up to 16 bits, DD for up to 32 bits, DQ for up to 64 bits


;
; end of your data
;
;*******************************************************
