Project:      output/line_test0
Build Number: 0
Date:         Mon Jan 06 13:05:36 2014
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   0088 =    136. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       01A0  LoadConfigTBL_line_test0_Bank0
       01FD  LoadConfigTBL_line_test0_Bank1
       0228  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0228   0002 =      2. bytes (rel,con,rom,proclab)

       Addr  Global Symbol
      -----  --------------------------------
       0228  __func_lit_start
       022A  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   022A   0173 =    371. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       022A  LoadConfigTBL_line_test0_Ordered
       032F  _LoadConfigInit
       032F  LoadConfigInit
       0342  _LoadConfig_line_test0
       0342  LoadConfig_line_test0
       039D  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   039D   029C =    668. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       039D  _TX8_1_ISR
       039E  _SleepTimer_1_ISR
       03B2  _SI_On
       03B2  SI_On
       03B6  SI_Stop
       03B6  _SI_Start
       03B6  SI_Start
       03B6  _SI_Stop
       03B6  SI_Off
       03B6  _SI_Off
       03B8  _SI_Switch
       03B8  SI_Switch
       03D0  _SAR6_1_Start
       03D0  SI_GetState
       03D0  _SAR6_1_SetPower
       03D0  SI_Invert
       03D0  SAR6_1_SetPower
       03D0  SAR6_1_Start
       03E2  _SAR6_1_cGetSample
       03E2  _SAR6_1_GetSample
       03E2  SAR6_1_cGetSample
       03E2  SAR6_1_GetSample
       040A  _LCD_1_PrCString
       040A  _SAR6_1_Stop
       040A  LCD_1_PrCString
       041C  LCD_1_HEX_STR
       042C  LCD_1_PrHexByte
       042C  _LCD_1_PrHexByte
       043F  LCD_1_Write_Data
       043F  _LCD_1_WriteData
       043F  _LCD_1_PrHexInt
       043F  _LCD_1_PrString
       043F  _LCD_1_Write_Data
       043F  LCD_1_WriteData
       0453  _LCD_1_Control
       0453  LCD_1_Control
       0503  LCD_1_Init
       0503  _LCD_1_Init
       0503  _LCD_1_Start
       0503  LCD_1_Start
       0572  LCD_1_ROW_OFFSET
       0576  _LCD_1_Position
       0576  LCD_1_Position
       0586  _LCD_1_Delay50uTimes
       0586  LCD_1_Delay50uTimes
       058C  LCD_1_Delay50u_Table
       0594  LCD_1_Delay50u
       0594  _LCD_1_Delay50u
       05A8  _LCD_1_DrawVBG
       05DC  _LCD_1_InitVBG
       05DC  LCD_1_InitVBG
       060D  LCD_1_BG_TYPE1
       0614  LCD_1_BG_TYPE2
       061B  CLK_On
       061B  _LCD_1_InitBG
       061B  _CLK_On
       061F  _CLK_Off
       061F  CLK_Off
       061F  _CLK_Start
       061F  _CLK_Stop
       061F  CLK_Stop
       061F  CLK_Start
       0621  _CLK_Switch
       0621  CLK_Switch
       0639  CLK_Invert
       0639  CLK_GetState
       0639  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0639   0499 =   1177. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0639  __text_start
       0639  _main
       0AD2  __xidata_start
       0ABA  <created procedures>
       0AD2  __text_end
       0AD4  __xidata_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0000   0168 =    360. bytes (abs,ovr,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       0165  _bGetPowerSetting
       0165  bGetPowerSetting

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0000   0008 =      8. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  SleepTimer_1_fTick
       0000  _SleepTimer_1_fTick
       0001  _SleepTimer_1_bTimerValue
       0001  SleepTimer_1_bTimerValue
       0002  _SleepTimer_1_bCountDown
       0002  SleepTimer_1_bCountDown
       0003  _SleepTimer_1_TickCount
       0003  SleepTimer_1_TickCount
       0004  _Port_0_Data_SHADE
       0004  NO_SHADOW
       0004  Port_0_Data_SHADE
       0004  _NO_SHADOW
       0005  _Port_1_Data_SHADE
       0005  Port_1_Data_SHADE
       0006  Port_0_DriveMode_0_SHADE
       0006  _Port_0_DriveMode_0_SHADE
       0007  Port_0_DriveMode_1_SHADE
       0007  _Port_0_DriveMode_1_SHADE

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0008   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0008  __rZ
       0009  __rY
       000A  __rX
       000B  __r3
       000C  __r2
       000D  __r1
       000E  __r0

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
obj/main.o	[ main.c ]
<library>	[ tx8_1int.asm, sleeptimer_1int.asm, si.asm, sar6_1.asm, psocconfigtbl.asm, psocconfig.asm, lcd_1.asm ]
[ clk.asm, rZ.asm, rY.asm, rX.asm, r3.asm, r2.asm, r1.asm, r0.asm, divmod_16x16_16_util.asm, i_div16_block_util.asm ]


Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x8
-Bline_test0_RAM
-rwh:SSCParmBlk:0xf7.0xff

