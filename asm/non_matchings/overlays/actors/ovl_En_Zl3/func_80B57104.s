.late_rodata
glabel D_80B5AB88
 .word 0x4622F983

.text
glabel func_80B57104
/* 03D54 80B57104 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03D58 80B57108 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03D5C 80B5710C 0C2D5BEB */  jal     func_80B56FAC              
/* 03D60 80B57110 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03D64 80B57114 1040001F */  beq     $v0, $zero, .L80B57194     
/* 03D68 80B57118 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03D6C 80B5711C 844E0000 */  lh      $t6, 0x0000($v0)           ## 00000000
/* 03D70 80B57120 C4880024 */  lwc1    $f8, 0x0024($a0)           ## 00000024
/* 03D74 80B57124 844F0004 */  lh      $t7, 0x0004($v0)           ## 00000004
/* 03D78 80B57128 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 03D7C 80B5712C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 03D80 80B57130 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 03D84 80B57134 468021A0 */  cvt.s.w $f6, $f4                   
/* 03D88 80B57138 C492002C */  lwc1    $f18, 0x002C($a0)          ## 0000002C
/* 03D8C 80B5713C 46805420 */  cvt.s.w $f16, $f10                 
/* 03D90 80B57140 46083301 */  sub.s   $f12, $f6, $f8             
/* 03D94 80B57144 46128381 */  sub.s   $f14, $f16, $f18           
/* 03D98 80B57148 46006032 */  c.eq.s  $f12, $f0                  
/* 03D9C 80B5714C 00000000 */  nop
/* 03DA0 80B57150 45000005 */  bc1f    .L80B57168                 
/* 03DA4 80B57154 00000000 */  nop
/* 03DA8 80B57158 46007032 */  c.eq.s  $f14, $f0                  
/* 03DAC 80B5715C 00000000 */  nop
/* 03DB0 80B57160 4503000D */  bc1tl   .L80B57198                 
/* 03DB4 80B57164 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B57168:
/* 03DB8 80B57168 0C03F494 */  jal     Math_atan2f              
/* 03DBC 80B5716C 00000000 */  nop
/* 03DC0 80B57170 3C0180B6 */  lui     $at, %hi(D_80B5AB88)       ## $at = 80B60000
/* 03DC4 80B57174 C424AB88 */  lwc1    $f4, %lo(D_80B5AB88)($at)  
/* 03DC8 80B57178 46040182 */  mul.s   $f6, $f0, $f4              
/* 03DCC 80B5717C 4600320D */  trunc.w.s $f8, $f6                   
/* 03DD0 80B57180 44024000 */  mfc1    $v0, $f8                   
/* 03DD4 80B57184 00000000 */  nop
/* 03DD8 80B57188 00021400 */  sll     $v0, $v0, 16               
/* 03DDC 80B5718C 10000002 */  beq     $zero, $zero, .L80B57198   
/* 03DE0 80B57190 00021403 */  sra     $v0, $v0, 16               
.L80B57194:
/* 03DE4 80B57194 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B57198:
/* 03DE8 80B57198 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03DEC 80B5719C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03DF0 80B571A0 03E00008 */  jr      $ra                        
/* 03DF4 80B571A4 00000000 */  nop
