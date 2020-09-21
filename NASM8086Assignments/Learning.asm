; STRCC.asm
; Renat norderhaug - 3/30/18
;
org 100h
section .text
;
;*******************************************************
;
start:
        mov si, 0   ; source index register to keep track
        mov di, 0  ; destination index register
lp1:
        mov al[STR1+si] ; moving the first value of Str1 into al
        cmp al,0 ; if str ends with zero the result will be 0 - 0 which will set the condition flag Z so you should check on it with a branch
        JE lp2    ; jump loop 1 if its null
        mov [str3+DI], al ; move the first value in STR1 into first index of str 3
        inc Si     ; go to next value in first string
        inc Di     ; go to next value in next string
        jmp lp1

lp2:
        mov si, 0
        mov al[STR2+si]
        mov [STR3+Di],al
        cmp al, 0
        JE ILP
        inc si;
        inc di;
        jmp lp2


;
;*******************************************************
;
ILP:	JMP	ILP				; infinite loop
;
TIMES 50H -($-$$) DB 0
section .data
;
;*******************************************************
;
STR1 db 'Renat ',
STR2 db 'Rules!',
STR3 db 0
;
;*******************************************************
