		;		Add two (32-Bit) numbers
		
		
Main
		LDR		R0,=Value1
		LDR		R1, [R0]
		LDR		R3,=Value2
		LDR		R2, [R3]
		ADC		R1, R1,R2
		LDR		R4, =Result
		STR		R1, [R4]
		LDR		R5,[R4]
		
		;		ADD     R0,  R1, R2
		;		STR      R1, Result
		
		
		
		
Value1	DCD		&37E3C123
Value2	DCD		&367402AA
Result	DCD		0
		
		END
