glabel func_80B5697C
/* 035CC 80B5697C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 035D0 80B56980 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 035D4 80B56984 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 035D8 80B56988 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 035DC 80B5698C 0C2D5378 */  jal     func_80B54DE0              
/* 035E0 80B56990 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 035E4 80B56994 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 035E8 80B56998 0C2D4D9B */  jal     func_80B5366C              
/* 035EC 80B5699C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 035F0 80B569A0 0C2D4D33 */  jal     func_80B534CC              
/* 035F4 80B569A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 035F8 80B569A8 0C2D4E53 */  jal     EnZl3_FrameUpdateMatrix              
/* 035FC 80B569AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03600 80B569B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03604 80B569B4 0C2D57AF */  jal     func_80B55EBC              
/* 03608 80B569B8 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 0360C 80B569BC 0C2D5617 */  jal     func_80B5585C              
/* 03610 80B569C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03614 80B569C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03618 80B569C8 0C2D592A */  jal     func_80B564A8              
/* 0361C 80B569CC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03620 80B569D0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03624 80B569D4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03628 80B569D8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0362C 80B569DC 03E00008 */  jr      $ra                        
/* 03630 80B569E0 00000000 */  nop
