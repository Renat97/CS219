; Find8
; D. Egbert ver 1.4 10/09/2017
;
org 100h
section .text
; beginning address of code = 0x0100
;*******************************************************
;
; put your code here
;
start:
mov si, 0x0150
mov ax, [si] ; would load A4 into AX because each byte is 8 bits and those are the first 2 hexvalues, stores AB62
mov bx, [si +0x02] ; would load 152-153 because bx is 16 bit register
mov cx, [si +0x04] ; would load 154-155
mov dx, [si +0x06] ; would load 156- 157

sub ax, [si +0x08]  ; subtracts the results of ax - value at memory adress 158 and stores in ax
sbb bx, [si +0x10] ; subtracts the results of ax - value at memory adress 160
sbb cx, [si +0x12] ; subtracts the results of cx - value at memory address 162
sbb dx, [si +0x14] ; subtract the result of dx - value at memory address 164

mov [si+ 0x20], ax
mov [si + 0x22], bx
mov [si + 0x24], cx
mov [si + 0x26], dx
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
Number1: DQ A489 9482 7361 AB62 ; stored between memory locations 150 to 157
Number2: DQ 9301 9921 BC61 4F21 ; stored between memory locations 158 to 165

;
; end of your data
;
;*******************************************************
