glabel func_80B56BA8
/* 037F8 80B56BA8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 037FC 80B56BAC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03800 80B56BB0 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 03804 80B56BB4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 03808 80B56BB8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0380C 80B56BBC 0C2D5378 */  jal     func_80B54DE0              
/* 03810 80B56BC0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 03814 80B56BC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03818 80B56BC8 0C2D4CFF */  jal     func_80B533FC              
/* 0381C 80B56BCC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 03820 80B56BD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03824 80B56BD4 0C2D4D9B */  jal     func_80B5366C              
/* 03828 80B56BD8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0382C 80B56BDC 0C2D4D33 */  jal     func_80B534CC              
/* 03830 80B56BE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03834 80B56BE4 0C2D4E53 */  jal     EnZl3_FrameUpdateMatrix              
/* 03838 80B56BE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0383C 80B56BEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03840 80B56BF0 0C2D5878 */  jal     func_80B561E0              
/* 03844 80B56BF4 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 03848 80B56BF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0384C 80B56BFC 0C2D592A */  jal     func_80B564A8              
/* 03850 80B56C00 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 03854 80B56C04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03858 80B56C08 0C2D5885 */  jal     func_80B56214              
/* 0385C 80B56C0C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 03860 80B56C10 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03864 80B56C14 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 03868 80B56C18 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 0386C 80B56C1C 03E00008 */  jr      $ra                        
/* 03870 80B56C20 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
