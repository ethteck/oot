glabel func_80A4011C
/* 01BAC 80A4011C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01BB0 80A40120 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01BB4 80A40124 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 01BB8 80A40128 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01BBC 80A4012C 0C28FCC0 */  jal     func_80A3F300              
/* 01BC0 80A40130 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01BC4 80A40134 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01BC8 80A40138 54410016 */  bnel    $v0, $at, .L80A40194       
/* 01BCC 80A4013C 8A080030 */  lwl     $t0, 0x0030($s0)           ## 00000030
/* 01BD0 80A40140 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 01BD4 80A40144 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01BD8 80A40148 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 01BDC 80A4014C 00052A03 */  sra     $a1, $a1,  8               
/* 01BE0 80A40150 50400010 */  beql    $v0, $zero, .L80A40194     
/* 01BE4 80A40154 8A080030 */  lwl     $t0, 0x0030($s0)           ## 00000030
/* 01BE8 80A40158 860E0218 */  lh      $t6, 0x0218($s0)           ## 00000218
/* 01BEC 80A4015C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01BF0 80A40160 3C0580A4 */  lui     $a1, %hi(func_80A4008C)    ## $a1 = 80A40000
/* 01BF4 80A40164 55C0000B */  bnel    $t6, $zero, .L80A40194     
/* 01BF8 80A40168 8A080030 */  lwl     $t0, 0x0030($s0)           ## 00000030
/* 01BFC 80A4016C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01C00 80A40170 24A5008C */  addiu   $a1, $a1, %lo(func_80A4008C) ## $a1 = 80A4008C
/* 01C04 80A40174 0C28F95C */  jal     func_80A3E570              
/* 01C08 80A40178 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 01C0C 80A4017C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 01C10 80A40180 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 01C14 80A40184 944F0F18 */  lhu     $t7, 0x0F18($v0)           ## 8015F578
/* 01C18 80A40188 35F80200 */  ori     $t8, $t7, 0x0200           ## $t8 = 00000200
/* 01C1C 80A4018C A4580F18 */  sh      $t8, 0x0F18($v0)           ## 8015F578
/* 01C20 80A40190 8A080030 */  lwl     $t0, 0x0030($s0)           ## 00000030
.L80A40194:
/* 01C24 80A40194 9A080033 */  lwr     $t0, 0x0033($s0)           ## 00000033
/* 01C28 80A40198 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C2C 80A4019C 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01C30 80A401A0 AA0800B4 */  swl     $t0, 0x00B4($s0)           ## 000000B4
/* 01C34 80A401A4 BA0800B7 */  swr     $t0, 0x00B7($s0)           ## 000000B7
/* 01C38 80A401A8 96080034 */  lhu     $t0, 0x0034($s0)           ## 00000034
/* 01C3C 80A401AC 3C0640C0 */  lui     $a2, 0x40C0                ## $a2 = 40C00000
/* 01C40 80A401B0 0C28FDF0 */  jal     func_80A3F7C0              
/* 01C44 80A401B4 A60800B8 */  sh      $t0, 0x00B8($s0)           ## 000000B8
/* 01C48 80A401B8 1040000F */  beq     $v0, $zero, .L80A401F8     
/* 01C4C 80A401BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C50 80A401C0 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
/* 01C54 80A401C4 44813000 */  mtc1    $at, $f6                   ## $f6 = 13.00
/* 01C58 80A401C8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01C5C 80A401CC 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 01C60 80A401D0 3C063E38 */  lui     $a2, 0x3E38                ## $a2 = 3E380000
/* 01C64 80A401D4 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 01C68 80A401D8 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 01C6C 80A401DC AFA90010 */  sw      $t1, 0x0010($sp)           
/* 01C70 80A401E0 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 01C74 80A401E4 34C651EC */  ori     $a2, $a2, 0x51EC           ## $a2 = 3E3851EC
/* 01C78 80A401E8 2405000C */  addiu   $a1, $zero, 0x000C         ## $a1 = 0000000C
/* 01C7C 80A401EC E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 01C80 80A401F0 0C28FD65 */  jal     func_80A3F594              
/* 01C84 80A401F4 E7A80018 */  swc1    $f8, 0x0018($sp)           
.L80A401F8:
/* 01C88 80A401F8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01C8C 80A401FC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 01C90 80A40200 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01C94 80A40204 03E00008 */  jr      $ra                        
/* 01C98 80A40208 00000000 */  nop
