//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include <stdio.h>
#include "L6470.h"


#pragma ram_abs_address:0x0200
unsigned char buf1[256];
#pragma end_abs_address
#pragma ram_abs_address:0x0300
unsigned char buf2[256];
#pragma end_abs_address

void LCD_print(char *str);
void LCD_cprint(const char *str);

void main(void)
{
	BYTE i = 0xff;
	unsigned char *pbuf;
	LONG j;
	char strbuf[17];
	
	M8C_EnableGInt;

	CS_Start();
	CS_Off();
	
	SPIM_1_EnableInt();
	SPIM_1_Start(SPIM_1_SPIM_MODE_0 | SPIM_1_SPIM_MSB_FIRST);
	SPIM_1_SendTxData(0);
	
	SleepTimer_1_EnableInt();
	SleepTimer_1_Start();
	
	LCD_1_Start();
	LCD_cprint("PSoC Start");

	buf2[0] = 0x55;
	buf1[255] = 0x0f;
	buf1[0] = 0xf0;
	csprintf(strbuf, "%x, %x, %x", buf1[0], buf1[255], buf2[0]);
	LCD_print(strbuf);
	pbuf = buf1;
	pbuf[256] = 0x33;
	csprintf(strbuf, "%x, %x, %x", buf1[0], buf1[255], buf2[0]);
	LCD_print(strbuf);
	
	
	
	
	
	
	
	
	
	
	
	
	while (1);
	
	LCD_cprint("Send Command");
	L6470_SetKVAL(L6470_KVAL_RUN, 0xff);
	L6470_SetKVAL(L6470_KVAL_ACC, 0xff);
	L6470_SetKVAL(L6470_KVAL_DEC, 0xff);
	L6470_SetKVAL(L6470_KVAL_HOLD, 0xff);
	L6470_HardHiZ();
	i = 0x00;
	L6470_Run(20000);
	i = 128;
	SleepTimer_1_TickWait(i);
	L6470_Run(30000);
	SleepTimer_1_TickWait(i);
	L6470_Run(35000);
	SleepTimer_1_TickWait(i);
	L6470_Run(40000);
	SleepTimer_1_TickWait(i);
	j = 40000;
	i = 16;
	while (1)
	{
		char str[17] = {0};
		L6470_Run(j);
		csprintf(str, "%ld", j);
		LCD_print(str);
		SleepTimer_1_TickWait(i);
		j += 1;
	}
	
	LCD_cprint("Complete");
	while (1);
}


char lcdStr[17] = {0};

void LCD_print(char *str)
{
	BYTE i;
	LCD_1_Control(LCD_1_DISP_CLEAR_HOME);
	LCD_1_Delay50uTimes(10);
	LCD_1_PrString(str);
	LCD_1_Position(1, 0);
	LCD_1_PrString(lcdStr);
	for (i = 0; i < sizeof(lcdStr); i++)
	{
		lcdStr[i] = str[i];
		if (str[i] == 0)
			break;
	}
}

void LCD_cprint(const char *str)
{
	BYTE i;
	LCD_1_Control(LCD_1_DISP_CLEAR_HOME);
	LCD_1_Delay50uTimes(10);
	LCD_1_PrCString(str);
	LCD_1_Position(1, 0);
	LCD_1_PrString(lcdStr);
	for (i = 0; i < sizeof(lcdStr); i++)
	{
		lcdStr[i] = str[i];
		if (str[i] == 0)
			break;
	}
}
