glabel func_80B5566C
/* 022BC 80B5566C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 022C0 80B55670 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 022C4 80B55674 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 022C8 80B55678 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 022CC 80B5567C 0C2D5378 */  jal     func_80B54DE0              
/* 022D0 80B55680 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 022D4 80B55684 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022D8 80B55688 0C2D4D9B */  jal     func_80B5366C              
/* 022DC 80B5568C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 022E0 80B55690 0C2D4D33 */  jal     func_80B534CC              
/* 022E4 80B55694 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022E8 80B55698 0C2D4E53 */  jal     EnZl3_FrameUpdateMatrix              
/* 022EC 80B5569C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022F0 80B556A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022F4 80B556A4 0C2D54CD */  jal     func_80B55334              
/* 022F8 80B556A8 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 022FC 80B556AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02300 80B556B0 0C2D5511 */  jal     func_80B55444              
/* 02304 80B556B4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02308 80B556B8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0230C 80B556BC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02310 80B556C0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02314 80B556C4 03E00008 */  jr      $ra                        
/* 02318 80B556C8 00000000 */  nop
