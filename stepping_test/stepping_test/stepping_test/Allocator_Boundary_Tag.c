
#include <m8c.h>

typedef unsigned char uint8;
typedef signed char int8;
typedef unsigned int uint16;
typedef signed int int16;
typedef unsigned long uint32;
typedef signed long int32;

#pragma ram_abs_address: 0x200
uint16 memstor[512] = {0};
#pragma end_abs_address

void Boundary_Tag_Start(void)
{
	uint16 i;
	for (i = 0; i < sizeof(memstor); i++)
		memstor[i] = i;
}
