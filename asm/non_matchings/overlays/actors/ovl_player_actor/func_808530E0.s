glabel func_808530E0
/* 20ED0 808530E0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 20ED4 808530E4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 20ED8 808530E8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 20EDC 808530EC 8C851C44 */  lw      $a1, 0x1C44($a0)           ## 00001C44
/* 20EE0 808530F0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 20EE4 808530F4 0C023A37 */  jal     func_8008E8DC              
/* 20EE8 808530F8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 20EEC 808530FC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 20EF0 80853100 1440000C */  bne     $v0, $zero, .L80853134     
/* 20EF4 80853104 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 20EF8 80853108 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 20EFC 8085310C 0C20DEC6 */  jal     func_80837B18              
/* 20F00 80853110 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 20F04 80853114 14400007 */  bne     $v0, $zero, .L80853134     
/* 20F08 80853118 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 20F0C 8085311C 8CAE0680 */  lw      $t6, 0x0680($a1)           ## 00000680
/* 20F10 80853120 2401FF7F */  addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
/* 20F14 80853124 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 20F18 80853128 01C17824 */  and     $t7, $t6, $at              
/* 20F1C 8085312C 10000002 */  beq     $zero, $zero, .L80853138   
/* 20F20 80853130 ACAF0680 */  sw      $t7, 0x0680($a1)           ## 00000680
.L80853134:
/* 20F24 80853134 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80853138:
/* 20F28 80853138 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 20F2C 8085313C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 20F30 80853140 03E00008 */  jr      $ra                        
/* 20F34 80853144 00000000 */  nop
