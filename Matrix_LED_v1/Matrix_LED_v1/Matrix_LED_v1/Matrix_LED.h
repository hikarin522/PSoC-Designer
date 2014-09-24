// Matrix_LED.h
// hikari
// Source : Matrix_LED.c

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include "stdlib.h"

// vector data
typedef struct
{
	WORD row;
	DWORD col;
} Vector;

// raster data
typedef struct
{
	DWORD data[16];
} Raster;

// block data
typedef struct
{
	BYTE data[8];
} Block;

// flame data
typedef struct
{
	Block data[2][4];
} Flame;


// ON / OFF
void Matrix_ON(void);
void Matirx_OFF(void);

// Draw Vector data
void Matrix_DrawVector(WORD, DWORD);
void Matrix_pDrawVector(WORD, CONST DWORD *);
void Matrix_ppDrawVector(CONST WORD *, CONST DWORD *);
void Matrix_DrawVector2(CONST Vector *);

// Draw Raster data
void Matrix_DrawRaster(CONST Raster *);
void Matrix_UnSetRaster(void);


