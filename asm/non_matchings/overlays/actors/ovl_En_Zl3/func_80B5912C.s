glabel func_80B5912C
/* 05D7C 80B5912C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05D80 80B59130 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 05D84 80B59134 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 05D88 80B59138 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 05D8C 80B5913C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05D90 80B59140 0C2D5378 */  jal     func_80B54DE0              
/* 05D94 80B59144 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 05D98 80B59148 0C2D4DB1 */  jal     func_80B536C4              
/* 05D9C 80B5914C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05DA0 80B59150 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05DA4 80B59154 0C2D4CFF */  jal     func_80B533FC              
/* 05DA8 80B59158 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05DAC 80B5915C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05DB0 80B59160 0C2D4D9B */  jal     func_80B5366C              
/* 05DB4 80B59164 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05DB8 80B59168 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05DBC 80B5916C 0C2D5B8E */  jal     func_80B56E38              
/* 05DC0 80B59170 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05DC4 80B59174 0C2D4D33 */  jal     func_80B534CC              
/* 05DC8 80B59178 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05DCC 80B5917C 0C2D4E53 */  jal     EnZl3_FrameUpdateMatrix              
/* 05DD0 80B59180 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05DD4 80B59184 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05DD8 80B59188 0C2D5F2D */  jal     func_80B57CB4              
/* 05DDC 80B5918C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05DE0 80B59190 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05DE4 80B59194 0C2D5F58 */  jal     func_80B57D60              
/* 05DE8 80B59198 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05DEC 80B5919C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05DF0 80B591A0 0C2D6287 */  jal     func_80B58A1C              
/* 05DF4 80B591A4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05DF8 80B591A8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05DFC 80B591AC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 05E00 80B591B0 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 05E04 80B591B4 03E00008 */  jr      $ra                        
/* 05E08 80B591B8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
