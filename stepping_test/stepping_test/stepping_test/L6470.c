
#include <m8c.h>
#include "PSoCAPI.h"
#include "L6470.h"

#pragma interrupt_handler _SPIM_ISR
void _SPIM_ISR(void)
{
	CS_Off();
}

BYTE SPI_transceiver(BYTE data)
{
	while (!(SPIM_1_bReadStatus() & SPIM_1_SPIM_SPI_COMPLETE));
	CS_On();
	SPIM_1_SendTxData(data);
	return SPIM_1_bReadRxData();
}

void L6470_SetKVAL(enum L6470_KVAL_Reg kval, BYTE param)
{
	SPI_transceiver(kval);
	SPI_transceiver(param);
}

void L6470_SetStepMode(enum L6470_Step_Mode stepMode)
{
	SPI_transceiver(stepMode);
}

void L6470_Run(LONG speed)
{
	if (speed < 0)
	{
		SPI_transceiver(0x51);
		speed *= -1;
	}
	else
		SPI_transceiver(0x50);
	
	SPI_transceiver((speed >> 16) & 0x0f);
	SPI_transceiver((speed >> 8) & 0xff);
	SPI_transceiver(speed & 0xff);
}

void L64570_ResetDevice(void)
{
	SPI_transceiver(0xc0);
}

void L64570_SoftStop(void)
{
	SPI_transceiver(0xb0);
}

void L64570_HardStop(void)
{
	SPI_transceiver(0xb8);
}

void L6470_SoftHiZ(void)
{
	SPI_transceiver(0xa0);
}

void L6470_HardHiZ(void)
{
	SPI_transceiver(0xa8);
}

