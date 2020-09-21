; STRCC.asm
; Gabe Petersen - 3/30/18
;
org 100h
section .text
;
;*******************************************************
;
start:
    MOV DI, 0               ; ZERO DI FOR DEST INDEXING
    MOV SI, 0               ; ZERO SI FOR SOURCE INDEXING
LP1:
    MOV AL, [STR1 + SI]     ; STR1 CHAR -> AL
    CMP AL, 0               ; CHECK IF NULL
    JE P2                   ; IF NULL, MOVE ON TO SECOND STRING
    MOV [STR3 + DI], AL     ; IF NOT NULL, STR1 CHAR -> STR3
    INC SI                  ; INCREMENT SI
    INC DI                  ; INCREMENT DI
    JMP LP1                 ; LOOP BACK
P2:
    MOV SI, 0               ; ZERO SOURCE INDEX AGAIN
LP2:
    MOV AL, [STR2 + SI]     ; STR2 CHAR -> AL
    MOV [STR3 + DI], AL     ; STR2 CHAR -> STR3
    CMP AL, 0               ; CHECK IF NULL
    JE ILP                  ; IF NULL, END PROGRAM
    INC SI                  ; INCREMENT SI
    INC DI                  ; INCREMENT DI
    JMP LP2                 ; LOOP BACK
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
STR1 db 'Hello ', 0
STR2 db 'World!', 0, 0, 0
STR3 db 0
;
;*******************************************************
