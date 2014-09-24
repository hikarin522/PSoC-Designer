//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

#define LED_MASK (S_row_MASK | S_colA_MASK | S_colB_MASK | CLK_MASK | LATCH_MASK)

void LED_PutLine(BYTE row, WORD *colA, WORD *colB)
{
	WORD i;
	
	for (i = 1; i != 0; i <<= 1)
	{
		PRT0DR &= ~LED_MASK;
		PRT0DR |= ((1 << row) & i ? S_row_MASK : 0) | (*colA & i ? S_colA_MASK : 0) | (*colB & i ? S_colB_MASK : 0);
		PRT0DR |= CLK_MASK;
	}
	
	PRT0DR &= ~CLK_MASK;
	PRT0DR |= LATCH_MASK;
}

volatile DWORD *disp = 0;

#pragma interrupt_handler _Timer8_1_ISR
void _Timer8_1_ISR(void)
{
	static BYTE c = 0;
	WORD row = (1 << c);
	if (disp == 0)
		return;
	
	LED_PutLine(&row, (WORD *)(&disp[c]), (WORD *)(&disp[c]) + 1);
	if (++c >= 16)
		c = 0;
	
	return;
}

volatile DWORD data1[16] = {
	0xf0f0f0f0,
	0x0f0f0f0f,
	0xf0f0f0f0,
	0x0f0f0f0f,
	0xf0f0f0f0,
	0x0f0f0f0f,
	0xf0f0f0f0,
	0x0f0f0f0f,
	0xf0f0f0f0,
	0x0f0f0f0f,
	0xf0f0f0f0,
	0x0f0f0f0f,
	0xf0f0f0f0,
	0x0f0f0f0f,
	0xf0f0f0f0,
	0x0f0f0f0f};

volatile DWORD data2[16] = {
	0x0f0f0f0f,
	0xf0f0f0f0,
	0x0f0f0f0f,
	0xf0f0f0f0,
	0x0f0f0f0f,
	0xf0f0f0f0,
	0x0f0f0f0f,
	0xf0f0f0f0,
	0x0f0f0f0f,
	0xf0f0f0f0,
	0x0f0f0f0f,
	0xf0f0f0f0,
	0x0f0f0f0f,
	0xf0f0f0f0,
	0x0f0f0f0f,
	0xf0f0f0f0};
volatile DWORD data3[16];
volatile DWORD mamesiba[16] = {
	0x00000000,
	0x00fe0000,
	0x0101e000,
	0x02001c00,
	0x04620300,
	0x04b50080,
	0x08f48040,
	0x0c648040,
	0x0c030040,
	0x0a000040,
	0x08000040,
	0x04000080,
	0x03000100,
	0x00fe0600,
	0x0001f800,
	0x00000000};

void main(void)
{	
	CHAR i;
	BYTE k = 0;
	DWORD j;
	M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
	
	SleepTimer_1_Start();
	SleepTimer_1_EnableInt();
	
	Timer8_1_EnableInt();
	Timer8_1_Start();
	
	PRT0DR = 0;
	SleepTimer_1_TickWait(32);
	
	while (1)
	{
		for (i = -31;i < 31;i++)
		{
			for (j = 0;j < 16;j++)
			{
				if (i < 0)
				{
					data3[j] = (mamesiba[j] >> -i) | (mamesiba[j] << (31 + i));
				}
				else 
				{
					data3[j] = (mamesiba[j] << i) | (mamesiba[j] >> (31 - i));
				}
			}
			SleepTimer_1_TickWait(4);
			disp = data3;
		}
	}
}
