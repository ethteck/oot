.late_rodata
glabel D_809379D0
 .word 0x3C4CCCCD

.text
glabel func_8092F434
/* 02E64 8092F434 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02E68 8092F438 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02E6C 8092F43C 84860198 */  lh      $a2, 0x0198($a0)           ## 00000198
/* 02E70 8092F440 24070050 */  addiu   $a3, $zero, 0x0050         ## $a3 = 00000050
/* 02E74 8092F444 10C00003 */  beq     $a2, $zero, .L8092F454     
/* 02E78 8092F448 24CEFFFF */  addiu   $t6, $a2, 0xFFFF           ## $t6 = FFFFFFFF
/* 02E7C 8092F44C A48E0198 */  sh      $t6, 0x0198($a0)           ## 00000198
/* 02E80 8092F450 84860198 */  lh      $a2, 0x0198($a0)           ## 00000198
.L8092F454:
/* 02E84 8092F454 28C10050 */  slti    $at, $a2, 0x0050           
/* 02E88 8092F458 1420001C */  bne     $at, $zero, .L8092F4CC     
/* 02E8C 8092F45C 00E66023 */  subu    $t4, $a3, $a2              
/* 02E90 8092F460 24070050 */  addiu   $a3, $zero, 0x0050         ## $a3 = 00000050
/* 02E94 8092F464 14E60003 */  bne     $a3, $a2, .L8092F474       
/* 02E98 8092F468 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 02E9C 8092F46C 3C018093 */  lui     $at, %hi(D_80937448)       ## $at = 80930000
/* 02EA0 8092F470 AC2F7448 */  sw      $t7, %lo(D_80937448)($at)  
.L8092F474:
/* 02EA4 8092F474 0C24BB67 */  jal     func_8092ED9C              
/* 02EA8 8092F478 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02EAC 8092F47C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02EB0 8092F480 3C038093 */  lui     $v1, %hi(D_80937464)       ## $v1 = 80930000
/* 02EB4 8092F484 24637464 */  addiu   $v1, $v1, %lo(D_80937464)  ## $v1 = 80937464
/* 02EB8 8092F488 84980198 */  lh      $t8, 0x0198($a0)           ## 00000198
/* 02EBC 8092F48C 24070050 */  addiu   $a3, $zero, 0x0050         ## $a3 = 00000050
/* 02EC0 8092F490 3C018093 */  lui     $at, %hi(D_809379D0)       ## $at = 80930000
/* 02EC4 8092F494 0018C880 */  sll     $t9, $t8,  2               
/* 02EC8 8092F498 0338C823 */  subu    $t9, $t9, $t8              
/* 02ECC 8092F49C 272AFF10 */  addiu   $t2, $t9, 0xFF10           ## $t2 = FFFFFF10
/* 02ED0 8092F4A0 A06A0002 */  sb      $t2, 0x0002($v1)           ## 80937466
/* 02ED4 8092F4A4 A06A0001 */  sb      $t2, 0x0001($v1)           ## 80937465
/* 02ED8 8092F4A8 A06A0000 */  sb      $t2, 0x0000($v1)           ## 80937464
/* 02EDC 8092F4AC 848B0198 */  lh      $t3, 0x0198($a0)           ## 00000198
/* 02EE0 8092F4B0 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 02EE4 8092F4B4 54EB0066 */  bnel    $a3, $t3, .L8092F650       
/* 02EE8 8092F4B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02EEC 8092F4BC 0C24BB1D */  jal     func_8092EC74              
/* 02EF0 8092F4C0 C42C79D0 */  lwc1    $f12, %lo(D_809379D0)($at) 
/* 02EF4 8092F4C4 10000062 */  beq     $zero, $zero, .L8092F650   
/* 02EF8 8092F4C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8092F4CC:
/* 02EFC 8092F4CC 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 02F00 8092F4D0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02F04 8092F4D4 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 02F08 8092F4D8 468021A0 */  cvt.s.w $f6, $f4                   
/* 02F0C 8092F4DC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 02F10 8092F4E0 3C028093 */  lui     $v0, %hi(D_80937468)       ## $v0 = 80930000
/* 02F14 8092F4E4 3C038093 */  lui     $v1, %hi(D_80937464)       ## $v1 = 80930000
/* 02F18 8092F4E8 24637464 */  addiu   $v1, $v1, %lo(D_80937464)  ## $v1 = 80937464
/* 02F1C 8092F4EC 24427468 */  addiu   $v0, $v0, %lo(D_80937468)  ## $v0 = 80937468
/* 02F20 8092F4F0 46083282 */  mul.s   $f10, $f6, $f8             
/* 02F24 8092F4F4 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 02F28 8092F4F8 444DF800 */  cfc1    $t5, $31
/* 02F2C 8092F4FC 44CEF800 */  ctc1    $t6, $31
/* 02F30 8092F500 00000000 */  nop
/* 02F34 8092F504 46005424 */  cvt.w.s $f16, $f10                 
/* 02F38 8092F508 444EF800 */  cfc1    $t6, $31
/* 02F3C 8092F50C 00000000 */  nop
/* 02F40 8092F510 31CE0078 */  andi    $t6, $t6, 0x0078           ## $t6 = 00000000
/* 02F44 8092F514 51C00013 */  beql    $t6, $zero, .L8092F564     
/* 02F48 8092F518 440E8000 */  mfc1    $t6, $f16                  
/* 02F4C 8092F51C 44818000 */  mtc1    $at, $f16                  ## $f16 = 2147483648.00
/* 02F50 8092F520 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 02F54 8092F524 46105401 */  sub.s   $f16, $f10, $f16           
/* 02F58 8092F528 44CEF800 */  ctc1    $t6, $31
/* 02F5C 8092F52C 00000000 */  nop
/* 02F60 8092F530 46008424 */  cvt.w.s $f16, $f16                 
/* 02F64 8092F534 444EF800 */  cfc1    $t6, $31
/* 02F68 8092F538 00000000 */  nop
/* 02F6C 8092F53C 31CE0078 */  andi    $t6, $t6, 0x0078           ## $t6 = 00000000
/* 02F70 8092F540 15C00005 */  bne     $t6, $zero, .L8092F558     
/* 02F74 8092F544 00000000 */  nop
/* 02F78 8092F548 440E8000 */  mfc1    $t6, $f16                  
/* 02F7C 8092F54C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02F80 8092F550 10000007 */  beq     $zero, $zero, .L8092F570   
/* 02F84 8092F554 01C17025 */  or      $t6, $t6, $at              ## $t6 = 80000000
.L8092F558:
/* 02F88 8092F558 10000005 */  beq     $zero, $zero, .L8092F570   
/* 02F8C 8092F55C 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 02F90 8092F560 440E8000 */  mfc1    $t6, $f16                  
.L8092F564:
/* 02F94 8092F564 00000000 */  nop
/* 02F98 8092F568 05C0FFFB */  bltz    $t6, .L8092F558            
/* 02F9C 8092F56C 00000000 */  nop
.L8092F570:
/* 02FA0 8092F570 A06E0002 */  sb      $t6, 0x0002($v1)           ## 80937466
/* 02FA4 8092F574 848F0198 */  lh      $t7, 0x0198($a0)           ## 00000198
/* 02FA8 8092F578 44CDF800 */  ctc1    $t5, $31
/* 02FAC 8092F57C 3C013E00 */  lui     $at, 0x3E00                ## $at = 3E000000
/* 02FB0 8092F580 00EFC023 */  subu    $t8, $a3, $t7              
/* 02FB4 8092F584 44989000 */  mtc1    $t8, $f18                  ## $f18 = 0.00
/* 02FB8 8092F588 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.12
/* 02FBC 8092F58C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 02FC0 8092F590 46809120 */  cvt.s.w $f4, $f18                  
/* 02FC4 8092F594 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 02FC8 8092F598 46062202 */  mul.s   $f8, $f4, $f6              
/* 02FCC 8092F59C 4459F800 */  cfc1    $t9, $31
/* 02FD0 8092F5A0 44C8F800 */  ctc1    $t0, $31
/* 02FD4 8092F5A4 00000000 */  nop
/* 02FD8 8092F5A8 460042A4 */  cvt.w.s $f10, $f8                  
/* 02FDC 8092F5AC 4448F800 */  cfc1    $t0, $31
/* 02FE0 8092F5B0 00000000 */  nop
/* 02FE4 8092F5B4 31080078 */  andi    $t0, $t0, 0x0078           ## $t0 = 00000000
/* 02FE8 8092F5B8 51000013 */  beql    $t0, $zero, .L8092F608     
/* 02FEC 8092F5BC 44085000 */  mfc1    $t0, $f10                  
/* 02FF0 8092F5C0 44815000 */  mtc1    $at, $f10                  ## $f10 = 2147483648.00
/* 02FF4 8092F5C4 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 02FF8 8092F5C8 460A4281 */  sub.s   $f10, $f8, $f10            
/* 02FFC 8092F5CC 44C8F800 */  ctc1    $t0, $31
/* 03000 8092F5D0 00000000 */  nop
/* 03004 8092F5D4 460052A4 */  cvt.w.s $f10, $f10                 
/* 03008 8092F5D8 4448F800 */  cfc1    $t0, $31
/* 0300C 8092F5DC 00000000 */  nop
/* 03010 8092F5E0 31080078 */  andi    $t0, $t0, 0x0078           ## $t0 = 00000000
/* 03014 8092F5E4 15000005 */  bne     $t0, $zero, .L8092F5FC     
/* 03018 8092F5E8 00000000 */  nop
/* 0301C 8092F5EC 44085000 */  mfc1    $t0, $f10                  
/* 03020 8092F5F0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 03024 8092F5F4 10000007 */  beq     $zero, $zero, .L8092F614   
/* 03028 8092F5F8 01014025 */  or      $t0, $t0, $at              ## $t0 = 80000000
.L8092F5FC:
/* 0302C 8092F5FC 10000005 */  beq     $zero, $zero, .L8092F614   
/* 03030 8092F600 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 03034 8092F604 44085000 */  mfc1    $t0, $f10                  
.L8092F608:
/* 03038 8092F608 00000000 */  nop
/* 0303C 8092F60C 0500FFFB */  bltz    $t0, .L8092F5FC            
/* 03040 8092F610 00000000 */  nop
.L8092F614:
/* 03044 8092F614 44D9F800 */  ctc1    $t9, $31
/* 03048 8092F618 A0480002 */  sb      $t0, 0x0002($v0)           ## 8093746A
/* 0304C 8092F61C A0480001 */  sb      $t0, 0x0001($v0)           ## 80937469
/* 03050 8092F620 A0480000 */  sb      $t0, 0x0000($v0)           ## 80937468
/* 03054 8092F624 A0680001 */  sb      $t0, 0x0001($v1)           ## 80937465
/* 03058 8092F628 A0680000 */  sb      $t0, 0x0000($v1)           ## 80937464
/* 0305C 8092F62C 0C24BB67 */  jal     func_8092ED9C              
/* 03060 8092F630 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03064 8092F634 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03068 8092F638 848D0198 */  lh      $t5, 0x0198($a0)           ## 00000198
/* 0306C 8092F63C 55A00004 */  bnel    $t5, $zero, .L8092F650     
/* 03070 8092F640 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03074 8092F644 0C24BD97 */  jal     func_8092F65C              
/* 03078 8092F648 00000000 */  nop
/* 0307C 8092F64C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8092F650:
/* 03080 8092F650 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03084 8092F654 03E00008 */  jr      $ra                        
/* 03088 8092F658 00000000 */  nop
