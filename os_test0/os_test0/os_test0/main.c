//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

void main(void)
{
	// M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
	
	WORD *data = (WORD *)main;
	LCD_1_Start();
	LCD_1_Position(0, 0);
	LCD_1_PrCString("Start");
	LCD_1_PrCString(" main p");
	LCD_1_Position(1, 0);
	LCD_1_PrHexInt((WORD)data);
	LCD_1_PrCString(" ");
	LCD_1_PrHexInt((WORD)&data);
	while (1);
}
