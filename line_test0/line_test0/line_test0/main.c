//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules


void main(void)
{
	BYTE k;
	M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
	
	LCD_1_Start();
	LCD_1_InitVBG();
	
	//TX8_1_EnableInt();
	//TX8_1_Start(TX8_1_PARITY_NONE);
	
	//SleepTimer_1_Start();
	//SleepTimer_1_EnableInt();
	
	SI_Start();
	CLK_Start();
	
	SAR6_1_Start(SAR6_1_HIGHPOWER);
	
	for (k = 0; k < 11; k++)
		LCD_1_DrawVBG(1, k, 2, k + 6);
	for (k = 0; k < 11; k++)
		LCD_1_DrawVBG(1, k + 11, 2, k + 6);
	for (k = 0; k < 11; k++)
		LCD_1_DrawVBG(1, k + 22, 2, k + 6);
	//*
	while (1)
	{
		BYTE i;
		CHAR ad[129];
		SI_On();
		for (i = 0; i < 129; i++)
		{
			CLK_On();
			ad[i] = SAR6_1_cGetSample();
			CLK_Off();
			ad[i] += 31;
			if (i == 0)
				SI_Off();
			
		}
		
		for (i = 0; i < 8; i++)
		{
			INT add = 0;
			for (k = 0; k < 3; k++)
				add += ad[(i * 16) + k];
			add /= (3 * 11);
			LCD_1_DrawVBG(1, i * 5, 2, add + 6);
			
			add = 0;
			for (k = 3; k < 6; k++)
				add += ad[(i * 16) + k];
			add /= (3 * 11);
			LCD_1_DrawVBG(1, i * 5 + 1, 2, add + 6);
			
			add = 0;
			for (k = 6; k < 10; k++)
				add += ad[(i * 16) + k];
			add /= (4 * 11);
			LCD_1_DrawVBG(1, i * 5 + 2, 2, add + 6);
			
			add = 0;
			for (k = 10; k < 13; k++)
				add += ad[(i * 16) + k];
			add /= (3 * 11);
			LCD_1_DrawVBG(1, i * 5 + 3, 2, add + 6);
			
			add = 0;
			for (k = 13; k < 16; k++)
				add += ad[(i * 16) + k];
			add /= (3 * 11);
			LCD_1_DrawVBG(1, i * 5 + 4, 2, add + 6);
		}
	}
	//*/
	/*
	while (1)
	{
		CHAR ad = 0;
		//for (k = 0; k < 100; k++)
			ad = SAR6_1_cGetSample();
		LCD_1_Position(1, 0);
		ad += 31;
		LCD_1_PrHexByte(*((BYTE *)&ad));
	}
	*/
	
	//LCD_1_Control(LCD_1_DISP_CLEAR_HOME);
	
	/*
	
	*/
	/*while (1)
	{
		BYTE i;
		
		for (i = 0; i < 10; i++)
			TX8_1_CPutString("tx8_test\n");
		
		TX8_1_CPutString("\x1b D");
	}
	*/
}
