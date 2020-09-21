; STRlen.asm
; Renat Norderhaug - 3/30/18
; Need help knowing what are legal ways to move


org 100h
section .text
;
;*******************************************************
DATA SEG
ARRAY DATA 1,4,2,3,9,8,6,7,5,10
LENGTH DATA WORK $-ARR
LARGE DATA ?
DATA ENDS
CODE SEGMENT
ASSUME DS:DATA CS:CODE
START:
MOV AX,DATA
MOV DS,AX

LEN SI,ARR

MOV AL,ARR[SI]
MOV LARGE,AL

MOV CX,LENGTH
LOOP:
MOV AL,ARR[SI]
CMP LARGE,AL
JG REMAIN

MOV LARGE,AL
REMAIN:
INC SI
LOOP LOOP

MOV AH,4CH
INT 21H
CODE ENDS
END START


;*******************************************************
;
ILP:	JMP	ILP				; infinite loop
;
TIMES 50H -($-$$) DB 0
section .data
;
;*******************************************************
;
STR1 db 'Hello ',0 ;150-155
;
;*******************************************************
