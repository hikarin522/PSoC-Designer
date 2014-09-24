//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include "stdlib.h"
#include "Matrix_LED.h"

Raster mamesiba = {
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
	BYTE i = 0;
	M8C_EnableGInt; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
	
	Timer8_1_DisableInt();
	Timer8_1_Start();
	
	SleepTimer_1_EnableInt();
	SleepTimer_1_Start();
	
	while (TRUE)
	{
		switch (i)
		{
			case 0:
				Matrix_UnSetRaster();
				Matrix_DrawVector(0xf0f0, 0xf0f0f0f0);
				break;
				
			case 1:
				Matrix_DrawVector(0xf0f0, 0x0f0f0f0f);
				break;
				
			case 2:
				Matrix_DrawVector(0x0f0f, 0x0f0f0f0f);
				break;
				
			case 3:
				Matrix_DrawVector(0x0f0f, 0xf0f0f0f0);
				break;
				
			case 4:
				Matrix_DrawRaster(&mamesiba);
				break;
				
			default :
				i = 0;
				break;
		}
			
		i < 4 ? (i++) : (i = 0);
		SleepTimer_1_TickWait(64);
	}
}


