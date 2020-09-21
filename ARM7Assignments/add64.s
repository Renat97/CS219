		;		64 bit addition arm 7 program
		
Main
		LDR		R0,=Value1 ; load the memory adress of Value1 to R0
		LDR		R1,[R0] ; load the value of that memory adress to R1, but only first 4 bytes
		LDR		R2, [R0, #4] ; load the value of the next 4 bytes into R2
		LDR		R0, =Value2 ;load the memory adress of Value2 to R0
		LDR		R3, [R0] ; load the value of that memory adress to R3
		LDR		R4, [R0, #4] ; load the value of the next 4 bytes into R4
		ADDS		R6,  R2,  R4 ; Add R2 to R4 and store in R6
		ADC		R5,  R1,  R3 ; Add R1 to R3 and store in R5
		LDR		R0,  =Result
		STR		R5, [R0]
		STR		R6, [R0, #4]
		
Value1	DCD		&12A2E640, &F2100123
Value2	DCD		&001019BF, &40023F51
Result	DCD		0
		
		END
