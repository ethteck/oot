glabel func_80B56CE4
/* 03934 80B56CE4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03938 80B56CE8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0393C 80B56CEC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03940 80B56CF0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03944 80B56CF4 0C2D5378 */  jal     func_80B54DE0              
/* 03948 80B56CF8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0394C 80B56CFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03950 80B56D00 0C2D4D9B */  jal     func_80B5366C              
/* 03954 80B56D04 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03958 80B56D08 0C2D4D33 */  jal     func_80B534CC              
/* 0395C 80B56D0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03960 80B56D10 0C2D4E53 */  jal     EnZl3_FrameUpdateMatrix              
/* 03964 80B56D14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03968 80B56D18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0396C 80B56D1C 0C2D5900 */  jal     func_80B56400              
/* 03970 80B56D20 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 03974 80B56D24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03978 80B56D28 0C2D592A */  jal     func_80B564A8              
/* 0397C 80B56D2C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03980 80B56D30 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03984 80B56D34 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03988 80B56D38 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0398C 80B56D3C 03E00008 */  jr      $ra                        
/* 03990 80B56D40 00000000 */  nop
