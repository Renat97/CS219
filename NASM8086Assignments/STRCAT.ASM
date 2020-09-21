; STRCAT to add two strings into a third
; D. Egbert ver 1.1 11/14/2016
;
org 100h
section .text
; beginning address of code = 0x0100
;*******************************************************
;
; put your code here
;
start:
		MOV	Si, 0           ; moving 0 into this index register
		MOV	Di, 0           ; moving 0 into Di
		MOV Ax, 0           ; moving 0 into Ax general register

LP1:
        MOV	Ax,[str1+DI]  ; moving the adress of str1 into Ax with displacement register
		INC DI			;increment DI
		CMP Ax, 0			;AX - 0,  check flag
		JE ZERO             ; jump if the line above ( Ax - 0) sets the zero flag to ZERO
		JNE NZERO			; jump if the line above (Ax - 0) doesnt set the zero flag to NZERO

ZERO:
        mov Di, 0         ; if Ax - 0 sets the zero flag, move 0 into the Di register
NZERO:
        mov[str3 + si], Ax ; if its not zero, move Ax into the adress of str3 + a displacement register
        INC si ; keep going through str3 and checking each value
        Jmp LP1  ; unconditional jump so go to LP1 no matter what
LP2:
        mov Ax,[str2 + Di]
        mov [str3+Si],Ax
        INC Si
        INC Di
        cmp Ax,0
        jmp LP2


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
str1:	DB	14
str2:	DB	254,5,25,250,100,150,30,200,253,15,23,46,73,175,0
str3:	DB  0
;
; end of your data
;
;*******************************************************
