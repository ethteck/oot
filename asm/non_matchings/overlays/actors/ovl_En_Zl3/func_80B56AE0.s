glabel func_80B56AE0
/* 03730 80B56AE0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03734 80B56AE4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03738 80B56AE8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0373C 80B56AEC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03740 80B56AF0 0C2D5378 */  jal     func_80B54DE0              
/* 03744 80B56AF4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03748 80B56AF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0374C 80B56AFC 0C2D4CFF */  jal     func_80B533FC              
/* 03750 80B56B00 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03754 80B56B04 0C2D4DFA */  jal     func_80B537E8              
/* 03758 80B56B08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0375C 80B56B0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03760 80B56B10 0C2D4D9B */  jal     func_80B5366C              
/* 03764 80B56B14 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03768 80B56B18 0C2D4D33 */  jal     func_80B534CC              
/* 0376C 80B56B1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03770 80B56B20 0C2D4E53 */  jal     EnZl3_FrameUpdateMatrix              
/* 03774 80B56B24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03778 80B56B28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0377C 80B56B2C 0C2D57CE */  jal     func_80B55F38              
/* 03780 80B56B30 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 03784 80B56B34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03788 80B56B38 0C2D5842 */  jal     func_80B56108              
/* 0378C 80B56B3C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03790 80B56B40 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03794 80B56B44 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03798 80B56B48 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0379C 80B56B4C 03E00008 */  jr      $ra                        
/* 037A0 80B56B50 00000000 */  nop
