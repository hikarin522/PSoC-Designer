Project:      output/stepping_test
Build Number: 0
Date:         Tue Sep 23 07:49:59 2014
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   021E =    542. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       01E8  LoadConfigTBL_stepping_test_Bank0
       023D  LoadConfigTBL_stepping_test_Bank1
       0268  __ctype
       03BE  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   03BE   0004 =      4. bytes (rel,con,rom,proclab)

       Addr  Global Symbol
      -----  --------------------------------
       03BE  __func_lit_start
       03C2  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   03C2   0173 =    371. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       03C2  LoadConfigTBL_stepping_test_Ordered
       04C7  LoadConfigInit
       04C7  _LoadConfigInit
       04DA  LoadConfig_stepping_test
       04DA  _LoadConfig_stepping_test
       0535  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0535   022A =    554. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0535  _SPIM_1_ISR
       0539  SPIM_1_EnableInt
       0539  _SPIM_1_EnableInt
       053D  _SPIM_1_Start
       053D  _SPIM_1_DisableInt
       053D  SPIM_1_Start
       0542  SPIM_1_SendTxData
       0542  _SPIM_1_Stop
       0542  _SPIM_1_SendTxData
       0545  _SPIM_1_bReadRxData
       0545  SPIM_1_bReadRxData
       0545  bSPIM_1_ReadRxData
       0545  _bSPIM_1_ReadRxData
       0548  _SPIM_1_bReadStatus
       0548  SPIM_1_bReadStatus
       0548  _bSPIM_1_ReadStatus
       0548  bSPIM_1_ReadStatus
       054B  _SleepTimer_1_ISR
       055F  SleepTimer_1_EnableInt
       055F  _SleepTimer_1_EnableInt
       0563  _SleepTimer_1_DisableInt
       0563  _SleepTimer_1_Start
       0563  SleepTimer_1_Start
       0571  _SleepTimer_1_SetInterval
       0571  _SleepTimer_1_TickWait
       0571  SleepTimer_1_TickWait
       0571  _SleepTimer_1_Stop
       0583  _SleepTimer_1_bGetTimer
       0583  _LCD_1_PrCString
       0583  _SleepTimer_1_SyncWait
       0583  _SleepTimer_1_SetTimer
       0583  LCD_1_PrCString
       0583  _SleepTimer_1_bGetTickCntr
       0595  LCD_1_HEX_STR
       05A5  _LCD_1_PrHexByte
       05A5  LCD_1_PrHexByte
       05B8  _LCD_1_PrString
       05B8  LCD_1_PrString
       05B8  _LCD_1_PrHexInt
       05CA  _LCD_1_WriteData
       05CA  _LCD_1_Write_Data
       05CA  LCD_1_WriteData
       05CA  LCD_1_Write_Data
       05DE  LCD_1_Control
       05DE  _LCD_1_Control
       068E  LCD_1_Start
       068E  LCD_1_Init
       068E  _LCD_1_Init
       068E  _LCD_1_Start
       06FD  LCD_1_ROW_OFFSET
       0701  LCD_1_Position
       0701  _LCD_1_Position
       0711  LCD_1_Delay50uTimes
       0711  _LCD_1_Delay50uTimes
       0717  LCD_1_Delay50u_Table
       071F  _LCD_1_Delay50u
       071F  LCD_1_Delay50u
       0733  LCD_1_BG_TYPE1
       0733  _LCD_1_InitVBG
       073A  LCD_1_BG_TYPE2
       0741  _CS_On
       0741  CS_On
       0741  _LCD_1_InitBG
       0745  _CS_Off
       0745  CS_Off
       0745  _CS_Start
       0745  _CS_Stop
       0745  CS_Start
       0745  CS_Stop
       0747  _CS_Switch
       0747  CS_Switch
       075F  CS_GetState
       075F  CS_Invert
       075F  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   075F   2C17 =  11287. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       075F  __SPIM_ISR
       075F  __text_start
       07E1  _SPI_transceiver
       0806  _L6470_SetKVAL
       081C  _L6470_SetStepMode
       081D  _L6470_Run
       08BA  _main
       0A21  _LCD_print
       0A9A  _LCD_cprint
       0B15  __cprint
       1C1F  _strlenLMM
       1C2A  _strlen
       1C45  _cstrlenLMM
       1C48  _cstrlen
       1C69  __plcall
       1C75  _itoa
       1D9C  _ltoa
       1F53  _ultoa
       2090  _utoa
       2159  _ftoa
       24CD  _isdigit
       24E7  _islower
       2501  _isspace
       251B  _toupper
       2586  __FormatFP_1
       305C  __csdepi
       3075  _csprintf
       30C3  <created procedures>
       3376  __text_end
       3376  __xidata_start
       3381  __xidata_end

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
       0005  _Port_2_Data_SHADE
       0005  Port_2_Data_SHADE
       0006  Port_0_DriveMode_0_SHADE
       0006  _Port_0_DriveMode_0_SHADE
       0007  Port_0_DriveMode_1_SHADE
       0007  _Port_0_DriveMode_1_SHADE

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0041   000F =     15. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0041  __rZ
       0042  __rY
       0043  __rX
       0044  __r11
       0045  __r10
       0046  __r9
       0047  __r8
       0048  __r7
       0049  __r6
       004A  __r5
       004B  __r4
       004C  __r3
       004D  __r2
       004E  __r1
       004F  __r0

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   003B =     59. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0021  _lcdStr

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
obj/l6470.o	[ l6470.c ]
obj/main.o	[ main.c ]
<library>	[ _printf.s, spim_1int.asm, spim_1.asm, sleeptimer_1int.asm, sleeptimer_1.asm, psocconfigtbl.asm ]
[ psocconfig.asm, lcd_1.asm, cs.asm, rZ.asm, rY.asm, rX.asm, r11.asm, r10.asm, r9.asm, r8.asm, r7.asm, r6.asm ]
[ r5.asm, r4.asm, r3.asm, r2.asm, r1.asm, r0.asm, divmodu_16x16_16_util.asm, divmodu_32x32_32_util.asm ]
[ fp_analysiseject_util.asm, fp_clrreg_util.asm, fp_nan_res_util.asm, fp_saveres_util.asm ]
[ fp_sendtoreg_util.asm, fp_sinf_res_util.asm, fp_szero_res_util.asm, fp_type_oprnd_util.asm ]
[ fp_unnormal_util.asm, fpadd_util.asm, fpcmp_util.asm, fpdiv_util.asm, fpmul_util.asm, fpsub_util.asm ]
[ i_div16_block_util.asm, i_div32_block_util.asm, i_mulu8_block_util.asm, mul32_util.asm ]
[ strlen.s, cstrlen.s, plcall.s, itoa.s, ltoa.s, ultoa.s, utoa.s, ftoa.s, isdigit.s, islower.s, isspace.s ]
[ ctype.s, toupper.s, formatfp1.s, sprintf.s ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x41
-Bstepping_test_RAM
-rwh:SSCParmBlk:0xf7.0xff

