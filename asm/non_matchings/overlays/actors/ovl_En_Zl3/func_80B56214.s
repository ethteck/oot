.late_rodata
glabel D_80B5AB44
 .word 0x3DFCD6EA

.text
glabel func_80B56214
/* 02E64 80B56214 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02E68 80B56218 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02E6C 80B5621C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02E70 80B56220 0C00BC65 */  jal     func_8002F194              
/* 02E74 80B56224 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02E78 80B56228 10400004 */  beq     $v0, $zero, .L80B5623C     
/* 02E7C 80B5622C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02E80 80B56230 240E0015 */  addiu   $t6, $zero, 0x0015         ## $t6 = 00000015
/* 02E84 80B56234 1000002B */  beq     $zero, $zero, .L80B562E4   
/* 02E88 80B56238 AC8E024C */  sw      $t6, 0x024C($a0)           ## 0000024C
.L80B5623C:
/* 02E8C 80B5623C 848F008A */  lh      $t7, 0x008A($a0)           ## 0000008A
/* 02E90 80B56240 849800B6 */  lh      $t8, 0x00B6($a0)           ## 000000B6
/* 02E94 80B56244 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02E98 80B56248 01F81023 */  subu    $v0, $t7, $t8              
/* 02E9C 80B5624C 00021400 */  sll     $v0, $v0, 16               
/* 02EA0 80B56250 00021403 */  sra     $v0, $v0, 16               
/* 02EA4 80B56254 04400003 */  bltz    $v0, .L80B56264            
/* 02EA8 80B56258 00021823 */  subu    $v1, $zero, $v0            
/* 02EAC 80B5625C 10000001 */  beq     $zero, $zero, .L80B56264   
/* 02EB0 80B56260 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80B56264:
/* 02EB4 80B56264 28614301 */  slti    $at, $v1, 0x4301           
/* 02EB8 80B56268 50200018 */  beql    $at, $zero, .L80B562CC     
/* 02EBC 80B5626C 8C8C0004 */  lw      $t4, 0x0004($a0)           ## 00000004
/* 02EC0 80B56270 0C2D4D22 */  jal     func_80B53488              
/* 02EC4 80B56274 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02EC8 80B56278 1040001A */  beq     $v0, $zero, .L80B562E4     
/* 02ECC 80B5627C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02ED0 80B56280 3C0180B6 */  lui     $at, %hi(D_80B5AB44)       ## $at = 80B60000
/* 02ED4 80B56284 C424AB44 */  lwc1    $f4, %lo(D_80B5AB44)($at)  
/* 02ED8 80B56288 C4460324 */  lwc1    $f6, 0x0324($v0)           ## 00000324
/* 02EDC 80B5628C 4604303E */  c.le.s  $f6, $f4                   
/* 02EE0 80B56290 00000000 */  nop
/* 02EE4 80B56294 45020014 */  bc1fl   .L80B562E8                 
/* 02EE8 80B56298 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02EEC 80B5629C 8C990004 */  lw      $t9, 0x0004($a0)           ## 00000004
/* 02EF0 80B562A0 240B7059 */  addiu   $t3, $zero, 0x7059         ## $t3 = 00007059
/* 02EF4 80B562A4 A48B010E */  sh      $t3, 0x010E($a0)           ## 0000010E
/* 02EF8 80B562A8 37280009 */  ori     $t0, $t9, 0x0009           ## $t0 = 00000009
/* 02EFC 80B562AC AC880004 */  sw      $t0, 0x0004($a0)           ## 00000004
/* 02F00 80B562B0 350A0001 */  ori     $t2, $t0, 0x0001           ## $t2 = 00000009
/* 02F04 80B562B4 AC8A0004 */  sw      $t2, 0x0004($a0)           ## 00000004
/* 02F08 80B562B8 0C00BCBD */  jal     func_8002F2F4              
/* 02F0C 80B562BC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02F10 80B562C0 10000009 */  beq     $zero, $zero, .L80B562E8   
/* 02F14 80B562C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02F18 80B562C8 8C8C0004 */  lw      $t4, 0x0004($a0)           ## 00000004
.L80B562CC:
/* 02F1C 80B562CC 2401FFF6 */  addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
/* 02F20 80B562D0 01816824 */  and     $t5, $t4, $at              
/* 02F24 80B562D4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02F28 80B562D8 AC8D0004 */  sw      $t5, 0x0004($a0)           ## 00000004
/* 02F2C 80B562DC 01A17824 */  and     $t7, $t5, $at              
/* 02F30 80B562E0 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
.L80B562E4:
/* 02F34 80B562E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B562E8:
/* 02F38 80B562E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02F3C 80B562EC 03E00008 */  jr      $ra                        
/* 02F40 80B562F0 00000000 */  nop
