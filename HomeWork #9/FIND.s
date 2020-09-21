		;		Program #3 find which assumes a sign value is at memory adress 150
		;		and another at 154, and the greater value is stored at 158
start
		LDR		R0, =Value1 ; loads signed number into register r1 ; adress 150
		LDR		R1,[R0] ; loads value at 150 into register R1
		LDR		R2, =Value2 ; loads signed number into register r2 adress 154
		LDR		R3, [R2]  ; loads value of signed bit at 154 into register
		
		CMP		R3,R1  ; subtracts r1 - r2 and sets flag
		BHI		R3BIGGER ; branch if r3 - r1, is greater than zero
		ADD		R2,R2,#0x4 ; increment adress of r2 to 158
		STR		R1,[R2] ; store R1 into adress of R2 which is 158
		
R3BIGGER
		ADD		R2, R2, #0x4 ; increment adress of r2 to 158
		STR		R3,[R2] ; store R3 into adress of r2 which is 158
		
Value1	DCB		0b10011000
Value2	DCB		0b11100000
		
