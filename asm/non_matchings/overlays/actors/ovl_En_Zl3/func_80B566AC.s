glabel func_80B566AC
/* 032FC 80B566AC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03300 80B566B0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03304 80B566B4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03308 80B566B8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0330C 80B566BC 0C2D5378 */  jal     func_80B54DE0              
/* 03310 80B566C0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03314 80B566C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03318 80B566C8 0C2D4D9B */  jal     func_80B5366C              
/* 0331C 80B566CC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03320 80B566D0 0C2D4D33 */  jal     func_80B534CC              
/* 03324 80B566D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03328 80B566D8 0C2D4E53 */  jal     EnZl3_FrameUpdateMatrix              
/* 0332C 80B566DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03330 80B566E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03334 80B566E4 0C2D56C1 */  jal     func_80B55B04              
/* 03338 80B566E8 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 0333C 80B566EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03340 80B566F0 0C2D592A */  jal     func_80B564A8              
/* 03344 80B566F4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03348 80B566F8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0334C 80B566FC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03350 80B56700 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03354 80B56704 03E00008 */  jr      $ra                        
/* 03358 80B56708 00000000 */  nop
