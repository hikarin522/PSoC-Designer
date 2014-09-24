Project:      output/Matrix_LED_v1
Build Number: 0
Date:         Tue Dec 17 19:32:43 2013
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   0080 =    128. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       01A0  LoadConfigTBL_matrix_led_v1_Bank0
       01F5  LoadConfigTBL_matrix_led_v1_Bank1
       0220  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0220   0002 =      2. bytes (rel,con,rom,proclab)

       Addr  Global Symbol
      -----  --------------------------------
       0220  __func_lit_start
       0222  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0222   016A =    362. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0222  LoadConfigTBL_matrix_led_v1_Ordered
       0327  LoadConfigInit
       0327  _LoadConfigInit
       0331  _LoadConfig_matrix_led_v1
       0331  LoadConfig_matrix_led_v1
       038C  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   038C   0048 =     72. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       038C  _Timer8_1_ISR
       0390  _Timer8_1_EnableInt
       0390  Timer8_1_EnableInt
       0394  _Timer8_1_DisableInt
       0394  Timer8_1_DisableInt
       0398  _Timer8_1_Start
       0398  Timer8_1_Start
       039C  _bTimer8_1_ReadCounter
       039C  _SleepTimer_1_ISR
       039C  _Timer8_1_WriteCompareValue
       039C  bTimer8_1_ReadCompareValue
       039C  _bTimer8_1_ReadCompareValue
       039C  _Timer8_1_bReadCompareValue
       039C  _bTimer8_1_CaptureCounter
       039C  _bTimer8_1_ReadTimerSaveCV
       039C  _Timer8_1_bReadTimerSaveCV
       039C  _bTimer8_1_ReadTimer
       039C  _Timer8_1_bReadTimer
       039C  bTimer8_1_CaptureCounter
       039C  bTimer8_1_ReadCounter
       039C  bTimer8_1_ReadTimerSaveCV
       039C  _Timer8_1_WritePeriod
       039C  bTimer8_1_ReadTimer
       039C  _Timer8_1_Stop
       03B0  _SleepTimer_1_EnableInt
       03B0  SleepTimer_1_EnableInt
       03B4  _SleepTimer_1_DisableInt
       03B4  SleepTimer_1_Start
       03B4  _SleepTimer_1_Start
       03C2  _SleepTimer_1_Stop
       03C2  _SleepTimer_1_TickWait
       03C2  _SleepTimer_1_SetInterval
       03C2  SleepTimer_1_TickWait
       03D4  _SleepTimer_1_SyncWait
       03D4  _SleepTimer_1_SetTimer
       03D4  _SleepTimer_1_bGetTimer
       03D4  __UserModules_end
       03D4  _SleepTimer_1_bGetTickCntr

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   03D4   0537 =   1335. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       03D4  __text_start
       03D4  _main
       0497  _Matrix_ON
       04A2  _Matirx_OFF
       04AA  _Matrix_DrawVector
       054B  _Matrix_pDrawVector
       0603  _Matrix_ppDrawVector
       06C7  _Matrix_DrawVector2
       07B7  _Matrix_DrawRaster
       07CB  _Matrix_UnSetRaster
       07DA  __Timer8_1_ISR
       090B  __xidata_start
       08BC  <created procedures>
       090B  __text_end
       0954  __xidata_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0000   0146 =    326. bytes (abs,ovr,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       0143  _bGetPowerSetting
       0143  bGetPowerSetting

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0000   0005 =      5. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  _SleepTimer_1_fTick
       0000  SleepTimer_1_fTick
       0001  SleepTimer_1_bTimerValue
       0001  _SleepTimer_1_bTimerValue
       0002  _SleepTimer_1_bCountDown
       0002  SleepTimer_1_bCountDown
       0003  _SleepTimer_1_TickCount
       0003  SleepTimer_1_TickCount
       0004  NO_SHADOW
       0004  _Port_0_Data_SHADE
       0004  _NO_SHADOW
       0004  Port_0_Data_SHADE

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0045   000F =     15. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0045  __rZ
       0046  __rY
       0047  __rX
       0048  __r11
       0049  __r10
       004A  __r9
       004B  __r8
       004C  __r7
       004D  __r6
       004E  __r5
       004F  __r4
       0050  __r3
       0051  __r2
       0052  __r1
       0053  __r0

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   0043 =     67. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0005  _mamesiba
       0054  _timer

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
obj/main.o	[ main.c ]
obj/matrix_led.o	[ matrix_led.c ]
<library>	[ timer8_1int.asm, timer8_1.asm, sleeptimer_1int.asm, sleeptimer_1.asm, psocconfigtbl.asm, psocconfig.asm ]
[ rZ.asm, rY.asm, rX.asm, r11.asm, r10.asm, r9.asm, r8.asm, r7.asm, r6.asm, r5.asm, r4.asm, r3.asm, r2.asm ]
[ r1.asm, r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x45
-Bmatrix_led_v1_RAM	allocated at: 0
-rwh:SSCParmBlk:0xf7.0xff

