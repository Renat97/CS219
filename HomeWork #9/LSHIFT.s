c1		; left shift, shift a 32 bit contents at 150 left according to an 8 bit shift in location 154 and store in 158
c2		; Renat Norderhaug ver 1          4/16/2018
c3		;
		ldr		r0,=SHIFT			;point to bits being shifted
F2		ldr		r1,[r0]			;r1 = the value of the bits
F2A		ldr		r2,=BIT			; pointer to bits shifted
		ldr		r3,[r2]            ; load the bit to be shifted into R3
F3		mov		r4, r1, LSL r3 ; mov the r1 register shifted by number of bits in r3
		add		r0, r0, #8 ; move the data item's adress from 150 to 158
		str		r4, [r0] ; store the bits shifted into adress 158
		
		
SHIFT	     1101 1111 1001 0010 1101 0011 1100 0101			;LSTL - count offset 0 -> (LSTL - 1)
BIT		dcd		00111001
STORE	dcb		0
		
		END
