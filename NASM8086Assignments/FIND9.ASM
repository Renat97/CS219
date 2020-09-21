; Find8
; D. Egbert ver 1.4 10/09/2017
;
org 100h
section .text
; beginning address of code = 0x0100
;*******************************************************
; wouldnt it continue to LPC anyways?
; what does JGE do
; put your code here
;
start:
		MOV	BX,[LSTL]       ; moves the length of list into BX
		MOV	CL,0			;USE CL FOR LARGEST VALUE
LP1:	MOV	AL,[BX+DLST]     ; moves the last element of DLST into AL
		CMP	CL,AL			;TEST IF CL > AL , subtracts CL from AL to check flag
		JA	LPC				;CONTINUE IF NOT, if CL is greater then AL then jump to LPC
		MOV	CL,AL			;ELSE STORE NEW MAX , if its not greater then AL then move AL into CL
LPC:	DEC	BX              ; decrement list length, first run to 13
		JGE	LP1              ; jump if list length is greater than 0 to LP1
		MOV	[MAXV],CL          ; if its not greater than or equal, then store it into max value regsiter
;
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
LSTL:	DB	14,0
MAXV:	DB	0,0
DLST:	DB	254,5,25,250,100,150,30,200,253,15,23,46,73,175,0
;
; end of your data
;
;*******************************************************
