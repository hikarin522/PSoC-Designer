//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules


void main(void)
{
	M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
	
	LCD_1_Start();
	LCD_1_Delay50uTimes(100);
	
	LCD_1_Position(1, 0);
	LCD_1_Delay50uTimes(100);
	
	LCD_1_PrCString("LCD_OK");
	LCD_1_Delay50uTimes(100);
	
	LCD_1_Position(1, 0);
	LCD_1_Delay50uTimes(100);
	
	LCD_1_PrCString("OLDE");
	LCD_1_Delay50uTimes(100);
	
	LCD_1_Position(2, 0);
	LCD_1_Delay50uTimes(100);
	
	LCD_1_PrCString("hikari");
	LCD_1_Delay50uTimes(100);
	
	LCD_1_Position(3, 0);
	LCD_1_Delay50uTimes(100);
	
	LCD_1_PrCString("aaaaaaa");
	while (1)
	{
		
	}
	
} 
