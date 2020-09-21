c1		; Sub64 for ARM
c2		; Renat Norderhaug ver 1.6.8 4/15/18
c3		;
SUB64	ldr		r0,=FIRST			;point to list length
F2		ldr		r1,[r0]			;r1 stores first 4 bytes
F2A		ldr		r2,[r0,#4]  ;loads registers of next 4 bytes
F3		ldr		r3,=SECOND			;point to second variable
F4		ldr		r4, [r3]        ;store second value first 4 bytes
		ldr		r5,[r3, #4] ; store second part of second value
		sub		r6, r2, r4  ; subtracts first and second parts of first
		sbc		r7, r1,r3 ; subtract first and second parts of second
F5		ldr		r8,=DLST		;pointer to result
		str		r7,[r8]   ;store upper part of result
		str		r6,[r8,#4] ; stores Lower part of results
		ldr		r9,[r8]
		
c5		end
		
FIRST	dcd		&A2A2E640,  &F2100123		; value added
SECOND	dcd		&001019BF,  &40023F51 ; value added
DLST		dcd		0
		;
		END		;END directive to show nothing more in file
