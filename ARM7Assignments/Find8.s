c1		; Find8 for ARM
c2		; D. Egbert ver 1.9 11/16/2017
c3		;
FIND8	ldr		r0,=LSTL			;point to list length
F2		ldr		r1,[r0]			;r1 = list length
F2A		sub		r1,r1,#1			;decrement so r1 = list length - 1
F3		ldr		r0,=DLST			;point to list start
F4		ldr		r2,=0			;init max val reg
F5		ldr		r4,=0			;zero offset counter
f8lp1	ldrb		r3,[r0,r4]		;read list element, load first value of DLST into r3
F6		cmp		r2,r3			;comp against max val, so see if the max val (0) - first element 254
F8		bhi		f8ct1			;branch if r2>r3, if  c = 1 and z =0 then go to f8ct1
F9		mov		r2,r3			;else new max val
f8ct1	add		r4,r4,#1			;increment offset counter
F10		cmp		r4,r1			; subtract the list length which is 13 from the offset counter 1, so you get -13
F11		bls		f8lp1			; unsigned lower or same, meaning if c = 0 or z = 1
F12		ldr		r0,=MAXV  ; load maxv register
F13		strb		r2,[r0]			;save max val, stores R0 found into maxV
c4		;
c5		;		no infinite loop because
c6		;		the emulator stops at END
c7		;
c8		;stop	bal		stop
c9		;
LSTL		dcb		15				;LSTL - count offset 0 -> (LSTL - 1)
MAXV		dcb		0
DLST		dcb		254,5,25,250,100,150,30,200,253,15,23,46,73,175,0
		;
		END		;END directive to show nothing more in file
