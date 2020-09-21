org 100h
section .text
start:
; put your code here
;
; Calculate the sum
; of elements in V1 array,
; store result in V2.
; number of elements
	MOV CX, 5 
; AL will store the sum:
	MOV AL, 0
; BX is an index
	MOV BX, 0
; sum elements
next: ADD AL, [V1+BX]
; modify array for no
; specific reason
	MOV [V1+BX], BL
; next byte
	INC BX
; loop until CX=0
	LOOP next
; store result in v2
	MOV [V2], AL
iloop:	LOOP iloop
section .data
; put data items here
;
; variables:
V1 DB 4, 3, 2, 1, 0
V2 DB 0
section .bss
; put uninitialized data here
;
