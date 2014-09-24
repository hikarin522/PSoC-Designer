	cpu LMM
	.module main.c
	.area text(rom, con, rel)
	.dbfile ./main.c
	.dbfile C:\Users\hikari\DOCUME~1\PSOCDE~1.4PR\MATRIX~1\MATRIX~1\MATRIX~1\main.c
	.dbfunc e LED_PutLine _LED_PutLine fV
;              i -> X+0
;           colB -> X-8
;           colA -> X-6
;            row -> X-4
_LED_PutLine::
	.dbline -1
	push X
	mov X,SP
	add SP,8
	.dbline 11
; //----------------------------------------------------------------------------
; // C main line
; //----------------------------------------------------------------------------
; 
; #include <m8c.h>        // part specific constants and macros
; #include "PSoCAPI.h"    // PSoC API definitions for all User Modules
; 
; #define LED_MASK (S_row_MASK | S_colA_MASK | S_colB_MASK | CLK_MASK | LATCH_MASK)
; 
; void LED_PutLine(BYTE row, WORD *colA, WORD *colB)
; {
	.dbline 14
; 	WORD i;
; 	
; 	for (i = 1; i != 0; i <<= 1)
	mov [X+1],1
	mov [X+0],0
	xjmp L5
L2:
	.dbline 15
; 	{
	.dbline 16
; 		PRT0DR &= ~LED_MASK;
	and REG[0],-32
	.dbline 17
; 		PRT0DR |= ((1 << row) & i ? S_row_MASK : 0) | (*colA & i ? S_colA_MASK : 0) | (*colB & i ? S_colB_MASK : 0);
	mov REG[0xd0],>__r0
	mov A,[X-4]
	mov [__r3],1
	mov [__r2],0
	and A,15
	jz X0
X1:
	mov REG[0xd0],>__r0
	asl [__r3]
	rlc [__r2]
	dec A
	jnz X1
X0:
	mov REG[0xd0],>__r0
	mov A,[__r3]
	and A,[X+1]
	mov [__r1],A
	mov A,[__r2]
	and A,[X+0]
	cmp A,0
	jnz X2
	cmp [__r1],0
	jz L9
X2:
	mov [X+3],1
	mov [X+2],0
	xjmp L10
L9:
	mov [X+3],0
	mov [X+2],0
L10:
	mov REG[0xd0],>__r0
	mov A,[X-5]
	mov [__r1],A
	mov A,[X-6]
	mov REG[0xd4],A
	mvi A,[__r1]
	mov [__r0],A
	mvi A,[__r1]
	mov [__r1],A
	mov A,[X+1]
	and [__r1],A
	mov A,[X+0]
	and [__r0],A
	jnz X3
	cmp [__r1],0
	jz L11
X3:
	mov [X+5],2
	mov [X+4],0
	xjmp L12
L11:
	mov [X+5],0
	mov [X+4],0
L12:
	mov REG[0xd0],>__r0
	mov A,[X-7]
	mov [__r1],A
	mov A,[X-8]
	mov REG[0xd4],A
	mvi A,[__r1]
	mov [__r0],A
	mvi A,[__r1]
	mov [__r1],A
	mov A,[X+1]
	and [__r1],A
	mov A,[X+0]
	and [__r0],A
	jnz X4
	cmp [__r1],0
	jz L13
X4:
	mov [X+7],4
	mov [X+6],0
	xjmp L14
L13:
	mov [X+7],0
	mov [X+6],0
L14:
	mov REG[0xd0],>__r0
	mov A,[X+3]
	or A,[X+5]
	mov [__r1],A
	mov A,[X+7]
	or [__r1],A
	mov A,REG[0]
	or A,[__r1]
	mov REG[0],A
	.dbline 18
; 		PRT0DR |= CLK_MASK;
	or REG[0],8
	.dbline 19
; 	}
L3:
	.dbline 14
	asl [X+1]
	rlc [X+0]
L5:
	.dbline 14
	cmp [X+0],0
	jnz L2
	cmp [X+1],0
	jnz L2
X5:
	.dbline 21
; 	
; 	PRT0DR &= ~CLK_MASK;
	and REG[0],-9
	.dbline 22
; 	PRT0DR |= LATCH_MASK;
	or REG[0],16
	.dbline -2
L1:
	add SP,-8
	pop X
	.dbline 0 ; func end
	ret
	.dbsym l i 0 i
	.dbsym l colB -8 pi
	.dbsym l colA -6 pi
	.dbsym l row -4 c
	.dbend
	.area data(ram, con, rel)
	.dbfile C:\Users\hikari\DOCUME~1\PSOCDE~1.4PR\MATRIX~1\MATRIX~1\MATRIX~1\main.c
_disp::
	.word 0
	.dbsym e disp _disp pl
	.area data(ram, con, rel)
	.dbfile C:\Users\hikari\DOCUME~1\PSOCDE~1.4PR\MATRIX~1\MATRIX~1\MATRIX~1\main.c
	.area data(ram, con, rel)
	.dbfile C:\Users\hikari\DOCUME~1\PSOCDE~1.4PR\MATRIX~1\MATRIX~1\MATRIX~1\main.c
L16:
	.byte 0
	.area text(rom, con, rel)
	.dbfile C:\Users\hikari\DOCUME~1\PSOCDE~1.4PR\MATRIX~1\MATRIX~1\MATRIX~1\main.c
	.dbfunc e _Timer8_1_ISR __Timer8_1_ISR fV
__Timer8_1_ISR::
	pop A
	.dbline 0 ; func end
	reti
	.dbend
	.area data(ram, con, rel)
	.dbfile C:\Users\hikari\DOCUME~1\PSOCDE~1.4PR\MATRIX~1\MATRIX~1\MATRIX~1\main.c
_data1::
	.word 61680,61680
	.word 3855,3855
	.word 61680,61680
	.word 3855,3855
	.word 61680,61680
	.word 3855,3855
	.word 61680,61680
	.word 3855,3855
	.word 61680,61680
	.word 3855,3855
	.word 61680,61680
	.word 3855,3855
	.word 61680,61680
	.word 3855,3855
	.word 61680,61680
	.word 3855,3855
	.dbsym e data1 _data1 A[64:16]l
	.area data(ram, con, rel)
	.dbfile C:\Users\hikari\DOCUME~1\PSOCDE~1.4PR\MATRIX~1\MATRIX~1\MATRIX~1\main.c
	.area data(ram, con, rel)
	.dbfile C:\Users\hikari\DOCUME~1\PSOCDE~1.4PR\MATRIX~1\MATRIX~1\MATRIX~1\main.c
_data2::
	.word 3855,3855
	.word 61680,61680
	.word 3855,3855
	.word 61680,61680
	.word 3855,3855
	.word 61680,61680
	.word 3855,3855
	.word 61680,61680
	.word 3855,3855
	.word 61680,61680
	.word 3855,3855
	.word 61680,61680
	.word 3855,3855
	.word 61680,61680
	.word 3855,3855
	.word 61680,61680
	.dbsym e data2 _data2 A[64:16]l
	.area data(ram, con, rel)
	.dbfile C:\Users\hikari\DOCUME~1\PSOCDE~1.4PR\MATRIX~1\MATRIX~1\MATRIX~1\main.c
	.area data(ram, con, rel)
	.dbfile C:\Users\hikari\DOCUME~1\PSOCDE~1.4PR\MATRIX~1\MATRIX~1\MATRIX~1\main.c
_mamesiba::
	.word 0,0
	.word 254,0
	.word 257,57344
	.word 512,7168
	.word 1122,768
	.word 1205,128
	.word 2292,32832
	.word 3172,32832
	.word 3075,64
	.word 2560,64
	.word 2048,64
	.word 1024,128
	.word 768,256
	.word 254,1536
	.word 1,63488
	.word 0,0
	.dbsym e mamesiba _mamesiba A[64:16]l
	.area data(ram, con, rel)
	.dbfile C:\Users\hikari\DOCUME~1\PSOCDE~1.4PR\MATRIX~1\MATRIX~1\MATRIX~1\main.c
	.area text(rom, con, rel)
	.dbfile C:\Users\hikari\DOCUME~1\PSOCDE~1.4PR\MATRIX~1\MATRIX~1\MATRIX~1\main.c
	.dbfunc e main _main fV
_main::
	.dbline 0 ; func end
	jmp .
	.dbend
	.area data(ram, con, rel)
	.dbfile C:\Users\hikari\DOCUME~1\PSOCDE~1.4PR\MATRIX~1\MATRIX~1\MATRIX~1\main.c
_data3::
	.word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0
	.dbsym e data3 _data3 A[64:16]l
