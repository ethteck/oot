glabel func_80A9B140
/* 001A0 80A9B140 C4840060 */  lwc1    $f4, 0x0060($a0)           ## 00000060
/* 001A4 80A9B144 C486006C */  lwc1    $f6, 0x006C($a0)           ## 0000006C
/* 001A8 80A9B148 C4800070 */  lwc1    $f0, 0x0070($a0)           ## 00000070
/* 001AC 80A9B14C 46062200 */  add.s   $f8, $f4, $f6              
/* 001B0 80A9B150 E4880060 */  swc1    $f8, 0x0060($a0)           ## 00000060
/* 001B4 80A9B154 C48A0060 */  lwc1    $f10, 0x0060($a0)          ## 00000060
/* 001B8 80A9B158 4600503C */  c.lt.s  $f10, $f0                  
/* 001BC 80A9B15C 00000000 */  nop
/* 001C0 80A9B160 45000002 */  bc1f    .L80A9B16C                 
/* 001C4 80A9B164 00000000 */  nop
/* 001C8 80A9B168 E4800060 */  swc1    $f0, 0x0060($a0)           ## 00000060
.L80A9B16C:
/* 001CC 80A9B16C 03E00008 */  jr      $ra                        
/* 001D0 80A9B170 00000000 */  nop
