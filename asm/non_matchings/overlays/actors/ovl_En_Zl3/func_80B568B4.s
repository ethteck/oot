glabel func_80B568B4
/* 03504 80B568B4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03508 80B568B8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0350C 80B568BC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03510 80B568C0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03514 80B568C4 0C2D5378 */  jal     func_80B54DE0              
/* 03518 80B568C8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0351C 80B568CC 0C2D4DFA */  jal     func_80B537E8              
/* 03520 80B568D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03524 80B568D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03528 80B568D8 0C2D4CFF */  jal     func_80B533FC              
/* 0352C 80B568DC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03530 80B568E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03534 80B568E4 0C2D4D9B */  jal     func_80B5366C              
/* 03538 80B568E8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0353C 80B568EC 0C2D4D33 */  jal     func_80B534CC              
/* 03540 80B568F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03544 80B568F4 0C2D4E53 */  jal     EnZl3_FrameUpdateMatrix              
/* 03548 80B568F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0354C 80B568FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03550 80B56900 0C2D576C */  jal     func_80B55DB0              
/* 03554 80B56904 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 03558 80B56908 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0355C 80B5690C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03560 80B56910 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03564 80B56914 03E00008 */  jr      $ra                        
/* 03568 80B56918 00000000 */  nop
