c1		;Count for ARM
c2		; Renat Norderhaug 4/14/18
c3		;Write a program called COUNT to count the number of characters in a null-terminated ASCII string that are equal to a KEY. The
		;KEY		is stored in memory location 0x0150. The string is stored in memory beginning at address 0x0160. Store the 8-bit count in
		;memory	location 0x0154.
Main
		LDR		R0,=STRING       ; Load the adress of the string
		LDR		R7,=KEY 		; load address of key
		LDR		R8,[R7]			; load value of key to register
		MOV		R1, #0            ;start the count at 0 of if it is equal to key
Loop
		ADD		R6,R6, #0      ; iinitliaze counter
		LDRB		R2, [R0,R6]   ;Load the first byte into R2
		CMP		R2,R8         ; is the first byte equal to the key ?
		ADD		R6,R6, #1   ; increment the counter
		BNE		Loop			; if Its not equal to the Key then check the next character in string
		;		if it is equal then increment the count and store into the Count variable
		LDR		R4, =COUNT    ; loads address 154 as the count
		ADD		R1,R1,#1      ; increments the count
		STR		R1,[R4]           ;stores count into address
		cmp		R1, #2              ; compares the count to # of "o"'s in STRING
		BNE		Loop
		
		end
		
		
KEY		dcb		'o', 0			;key value that when found increments count
COUNT	dcb		0,0,0             ; the count that is incremented when key is found
Help		dcb		0
Hello	dcb		0
STRING	dcb		'H', 'e', 'l', 'l', 'o',  'W', 'o', 'r', 'l', 'd', '!', 0
		;
		END		;END directive to show nothing more in file
