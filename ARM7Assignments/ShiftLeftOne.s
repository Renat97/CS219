		;		program to shift left using indirect adressing
		
main
		LDR		R0,=Value
		LDR		R1,[R0]
		Mov		R1, R1, LSL #0x1
		Ldr		R2, =Result
		Str		r1,[r2]
		
		
		
		
		
		
		
Value	DCD		&4242
Result	DCD		0
