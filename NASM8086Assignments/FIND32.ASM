;Write a program called FIND32 to find the largest unsigned 32-bit word in a list. The list begins at address 0x0160. The length of
;the list is stored in an 8-bit variable at address 0x0150. Store the largest entry in memory location 0x0154.
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

    ;mov si,0x0150 ; location 150
    mov si,[LSTL] ; moeves 150 to LSTL
    mov ax, [si] ; move address 150 into ax
    mov di, 0 ; displacement
    mov ax + 0x010,[LIST] ; moves start of LIST into adress 160
    mov bx, 0  ; max value register

Lp1:
    cmp bx,[LIST + di] ; compares the max value to 1st element of the List
    JA check ; if bx is greater than go to the "greater" label
    mov bx, [LIST + di] ; if bx is not greater than dont jump label and make first element into bx
    inc di
    jmp Lp1



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
LSTL: DB  14, 0  ; stored between memory locations 150, 151
HST: DB 0,0   ; stored in memory location 152, 153
Zeros: 0, 0, 0, 0, 0 , 0,0,0,0,0,0,0,0,
LIST: DB 254,5,25,250,100,150,30,200,253,15,23,46,73,175,0 ; stores the list

; DB for up to 8 bits, DW for up to 16 bits, DD for up to 32 bits, DQ for up to 64 bits


;
; end of your data
;
;*******************************************************
