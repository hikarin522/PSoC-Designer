Project:      output/os_test0
Build Number: 0
Date:         Mon Feb 24 18:11:30 2014
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   0084 =    132. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       01B0  LoadConfigTBL_os_test0_Bank0
       01FF  LoadConfigTBL_os_test0_Bank1
       0224  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0224   0002 =      2. bytes (rel,con,rom,proclab)

       Addr  Global Symbol
      -----  --------------------------------
       0224  __func_lit_start
       0226  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0226   016C =    364. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0226  LoadConfigTBL_os_test0_Ordered
       032B  LoadConfigInit
       032B  _LoadConfigInit
       033B  _LoadConfig_os_test0
       033B  LoadConfig_os_test0
       0392  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0392   01AD =    429. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0392  _LCD_1_PrCString
       0392  LCD_1_PrCString
       03A4  LCD_1_HEX_STR
       03B4  _LCD_1_PrHexByte
       03B4  LCD_1_PrHexByte
       03C7  LCD_1_PrHexInt
       03C7  _LCD_1_PrHexInt
       03CE  LCD_1_PrString
       03CE  _LCD_1_PrString
       03D8  LCD_1_WriteData
       03D8  _LCD_1_Write_Data
       03D8  _LCD_1_WriteData
       03D8  LCD_1_Write_Data
       03EC  LCD_1_Control
       03EC  _LCD_1_Control
       0493  LCD_1_Start
       0493  _LCD_1_Init
       0493  _LCD_1_Start
       0493  LCD_1_Init
       04FF  LCD_1_ROW_OFFSET
       0503  LCD_1_Position
       0503  _LCD_1_Position
       050F  LCD_1_Delay50uTimes
       050F  _LCD_1_Delay50uTimes
       0515  LCD_1_Delay50u_Table
       051D  LCD_1_Delay50u
       051D  _LCD_1_Delay50u
       0531  _LCD_1_InitVBG
       0531  LCD_1_BG_TYPE1
       0538  LCD_1_BG_TYPE2
       053F  _LCD_1_InitBG
       053F  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   053F   0058 =     88. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       053F  __text_start
       053F  _main
       0597  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0000   0001 =      1. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __r0
       0001  __virtual_registers_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0001   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0001  _Port_0_Data_SHADE
       0001  _NO_SHADOW
       0001  Port_0_Data_SHADE
       0001  NO_SHADOW
       0002  Port_0_DriveMode_0_SHADE
       0002  _Port_0_DriveMode_0_SHADE
       0003  _Port_0_DriveMode_1_SHADE
       0003  Port_0_DriveMode_1_SHADE
       0004  __ramareas_end
       0004  __InterruptRAM_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0000   00EC =    236. bytes (abs,ovr,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       00E9  _bGetPowerSetting
       00E9  bGetPowerSetting

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
obj/main.o	[ main.c ]
<library>	[ psocconfigtbl.asm, psocconfig.asm, lcd_1.asm, r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

