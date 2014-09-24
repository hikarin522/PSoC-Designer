Project:      output/oled_test0
Build Number: 0
Date:         Sun Dec 15 07:42:51 2013
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   008F =    143. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       01BB  LoadConfigTBL_oled_test0_Bank0
       020A  LoadConfigTBL_oled_test0_Bank1
       022F  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   022F   0002 =      2. bytes (rel,con,rom,proclab)

       Addr  Global Symbol
      -----  --------------------------------
       022F  __func_lit_start
       0231  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0231   0170 =    368. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0231  LoadConfigTBL_oled_test0_Ordered
       0336  _LoadConfigInit
       0336  LoadConfigInit
       0346  _LoadConfig_oled_test0
       0346  LoadConfig_oled_test0
       03A1  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   03A1   019E =    414. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       03A1  _LCD_1_PrCString
       03A1  LCD_1_PrCString
       03B3  LCD_1_HEX_STR
       03C3  _LCD_1_PrHexByte
       03C3  LCD_1_PrHexByte
       03D6  LCD_1_Write_Data
       03D6  _LCD_1_WriteData
       03D6  _LCD_1_PrString
       03D6  LCD_1_WriteData
       03D6  _LCD_1_PrHexInt
       03D6  _LCD_1_Write_Data
       03EA  _LCD_1_Control
       03EA  LCD_1_Control
       049A  _LCD_1_Init
       049A  _LCD_1_Start
       049A  LCD_1_Init
       049A  LCD_1_Start
       0509  LCD_1_ROW_OFFSET
       050D  _LCD_1_Position
       050D  LCD_1_Position
       051D  _LCD_1_Delay50uTimes
       051D  LCD_1_Delay50uTimes
       0523  LCD_1_Delay50u_Table
       052B  LCD_1_Delay50u
       052B  _LCD_1_Delay50u
       053F  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   053F   0078 =    120. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       053F  __text_start
       053F  _main
       05B7  __xidata_start
       05B7  __text_end
       05B9  __xidata_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0000   017B =    379. bytes (abs,ovr,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       0178  _bGetPowerSetting
       0178  bGetPowerSetting

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0000   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  _NO_SHADOW
       0000  Port_0_Data_SHADE
       0000  NO_SHADOW
       0000  _Port_0_Data_SHADE
       0001  _Port_0_DriveMode_0_SHADE
       0001  Port_0_DriveMode_0_SHADE
       0002  _Port_0_DriveMode_1_SHADE
       0002  Port_0_DriveMode_1_SHADE

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0003   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0003  __r1
       0004  __r0

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
obj/main.o	[ main.c ]
<library>	[ psocconfigtbl.asm, psocconfig.asm, lcd_1.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x3
-Boled_test0_RAM
-rwh:SSCParmBlk:0xf7.0xff

