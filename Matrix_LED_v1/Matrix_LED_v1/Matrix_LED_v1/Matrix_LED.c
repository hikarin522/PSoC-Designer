// Matrix_LED.c
// hikari
// Header : Matrix_LED.h

#include "Matrix_LED.h"

// Matrix_LED port Mask
#define Matrix_MASK (S_row_MASK | S_colA_MASK | S_colB_MASK | CLK_MASK | LATCH_MASK)


// LED ON
void Matrix_ON(void)
{
	EN_DataShadow |= EN_MASK;
	EN_Data_ADDR = EN_DataShadow;
}

// LED OFF
void Matirx_OFF(void)
{
	EN_DataShadow &= ~EN_MASK;
	EN_Data_ADDR = EN_DataShadow;
}

// Draw Vector data : WORD, DWORD
void Matrix_DrawVector(WORD row, DWORD col)
{
	WORD i;
	for (i = 1; i != 0; i <<= 1)
	{
		CLK_DataShadow &= ~Matrix_MASK;
		CLK_Data_ADDR = CLK_DataShadow;
		
		CLK_DataShadow |= (row & i) ? S_row_MASK : 0;
		CLK_DataShadow |= (((WORD *)&col)[0] & i) ? S_colA_MASK : 0;
		CLK_DataShadow |= (((WORD *)&col)[1] & i) ? S_colB_MASK : 0;
		CLK_Data_ADDR = CLK_DataShadow;
		
		CLK_DataShadow |= CLK_MASK;
		CLK_Data_ADDR = CLK_DataShadow;
	}
	
	LATCH_DataShadow |= LATCH_MASK;
	LATCH_Data_ADDR = LATCH_DataShadow;
}

// Draw Vector data : WORD, DWORD *
void Matrix_pDrawVector(WORD row, CONST DWORD *col)
{
	WORD i;
	for (i = 1; i != 0; i <<= 1)
	{
		CLK_DataShadow &= ~Matrix_MASK;
		CLK_Data_ADDR = CLK_DataShadow;
		
		CLK_DataShadow |= (row & i) ? S_row_MASK : 0;
		CLK_DataShadow |= (((WORD *)col)[0] & i) ? S_colA_MASK : 0;
		CLK_DataShadow |= (((WORD *)col)[1] & i) ? S_colB_MASK : 0;
		CLK_Data_ADDR = CLK_DataShadow;
		
		CLK_DataShadow |= CLK_MASK;
		CLK_Data_ADDR = CLK_DataShadow;
	}
	
	LATCH_DataShadow |= LATCH_MASK;
	LATCH_Data_ADDR = LATCH_DataShadow;
}

// Draw Vector data : WORD *, DWORD *
void Matrix_ppDrawVector(CONST WORD *row, CONST DWORD *col)
{
	WORD i;
	for (i = 1; i != 0; i <<= 1)
	{
		CLK_DataShadow &= ~Matrix_MASK;
		CLK_Data_ADDR = CLK_DataShadow;
		
		CLK_DataShadow |= (*row & i) ? S_row_MASK : 0;
		CLK_DataShadow |= (((WORD *)col)[0] & i) ? S_colA_MASK : 0;
		CLK_DataShadow |= (((WORD *)col)[1] & i) ? S_colB_MASK : 0;
		CLK_Data_ADDR = CLK_DataShadow;
		
		CLK_DataShadow |= CLK_MASK;
		CLK_Data_ADDR = CLK_DataShadow;
	}
	
	LATCH_DataShadow |= LATCH_MASK;
	LATCH_Data_ADDR = LATCH_DataShadow;
}

// Draw Vector data : Vector *
void Matrix_DrawVector2(CONST Vector *data)
{
	WORD i;
	for (i = 1; i != 0; i <<= 1)
	{
		CLK_DataShadow &= ~Matrix_MASK;
		CLK_Data_ADDR = CLK_DataShadow;
		
		CLK_DataShadow |= (data->row & i) ? S_row_MASK : 0;
		CLK_DataShadow |= (((WORD *)&(data->col))[0] & i) ? S_colA_MASK : 0;
		CLK_DataShadow |= (((WORD *)&(data->col))[1] & i) ? S_colB_MASK : 0;
		CLK_Data_ADDR = CLK_DataShadow;
		
		CLK_DataShadow |= CLK_MASK;
		CLK_Data_ADDR = CLK_DataShadow;
	}
	
	LATCH_DataShadow |= LATCH_MASK;
	LATCH_Data_ADDR = LATCH_DataShadow;
}



Raster *timer;

// raster data 表示
void Matrix_DrawRaster(Raster *data)
{
	timer = data;
	Timer8_1_EnableInt();
}

// raster data 表示用 timer 停止
void Matrix_UnSetRaster(void)
{
	timer = 0;
	Timer8_1_DisableInt();
}



// raster data 表示用 timer
#pragma interrupt_handler _Timer8_1_ISR
void _Timer8_1_ISR(void)
{
	static BYTE i = 0;
	
	if (timer == 0)
	{
		Timer8_1_DisableInt();
		return;
	}

	Matrix_pDrawVector(1 << i, timer->data + i);
	
	if (++i >= 16)
		i = 0;
}
