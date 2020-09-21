c1		; SCAN for ARM, scans a list of unsigned bytes and finds the smallest/largest entries in the list. The length of the list is stored in a 16 bit variable, smallest byte is stored 150 and largest 154
c2		; Renat Norderhaug ver 1 4/
c3		;
main
		ldr		r0,=data1
		ldr		r1,=0x0158 ;//length of list
		ldr		r2,=0x015C ;//length of list
		ldr		r3,=0x0160 ;//starting address
		ldr		r4,=0x0150 ;//smallest integer address
		ldr		r5,=0x0154 ;//largest integer address
		ldr		r6,[r0],#04 ; load the next 4 bytes into r6
		sub		r1,r1,#01 ; decrement lenth of list
back1
		ldr		r7,[r0] ; store beginning into r7
		cmp		r6,r7 ; compare next four with begiing four
		bls		less ; if its less then move it to r6
		mov		r6,r7
less
		add		r0,r0,#04
		sub		r1,r1,#01
		cmp		r1,#00
		bne		back1
		str		r6,[r4]
		
back2
		ldr		r7,[r0]
		cmp		r6,r7
		bhs		high
		mov		r6,r7
high
		add		r0,r0,#04
		sub		r2,r2,#01
		cmp		r2,#00
		bne		back2
		str		r6,[r5]
c9		;
Data
		
data1	dcd		&64,&05,&9,&00,&65
		;
		END		;END directive to show nothing more in file
