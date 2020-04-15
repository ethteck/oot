glabel func_80860438
/* 00DE8 80860438 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00DEC 8086043C AFB00028 */  sw      $s0, 0x0028($sp)
/* 00DF0 80860440 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00DF4 80860444 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00DF8 80860448 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00DFC 8086044C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00E00 80860450 24841C20 */  addiu   $a0, $a0, 0x1C20           ## $a0 = 06001C20
/* 00E04 80860454 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00E08 80860458 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00E0C 8086045C 44810000 */  mtc1    $at, $f0                   ## $f0 = 2.00
/* 00E10 80860460 468021A0 */  cvt.s.w $f6, $f4
/* 00E14 80860464 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00E18 80860468 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00E1C 8086046C 44060000 */  mfc1    $a2, $f0
/* 00E20 80860470 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00E24 80860474 24A51C20 */  addiu   $a1, $a1, 0x1C20           ## $a1 = 06001C20
/* 00E28 80860478 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00E2C 8086047C 260404A8 */  addiu   $a0, $s0, 0x04A8           ## $a0 = 000004A8
/* 00E30 80860480 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00E34 80860484 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00E38 80860488 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00E3C 8086048C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00E40 80860490 24A581B4 */  addiu   $a1, $a1, 0x81B4           ## $a1 = 060081B4
/* 00E44 80860494 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 00E48 80860498 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 00E4C 8086049C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00E50 808604A0 00000000 */  nop
/* 00E54 808604A4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00E58 808604A8 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 00E5C 808604AC 860A00B6 */  lh      $t2, 0x00B6($s0)           ## 000000B6
/* 00E60 808604B0 2409000D */  addiu   $t1, $zero, 0x000D         ## $t1 = 0000000D
/* 00E64 808604B4 46080282 */  mul.s   $f10, $f0, $f8
/* 00E68 808604B8 3C058086 */  lui     $a1, %hi(func_808604FC)    ## $a1 = 80860000
/* 00E6C 808604BC A20907C8 */  sb      $t1, 0x07C8($s0)           ## 000007C8
/* 00E70 808604C0 24A504FC */  addiu   $a1, $a1, %lo(func_808604FC) ## $a1 = 808604FC
/* 00E74 808604C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E78 808604C8 A60A0032 */  sh      $t2, 0x0032($s0)           ## 00000032
/* 00E7C 808604CC 4600540D */  trunc.w.s $f16, $f10
/* 00E80 808604D0 44188000 */  mfc1    $t8, $f16
/* 00E84 808604D4 00000000 */  nop
/* 00E88 808604D8 0018CC00 */  sll     $t9, $t8, 16
/* 00E8C 808604DC 00194403 */  sra     $t0, $t9, 16
/* 00E90 808604E0 0C217D94 */  jal     EnTest_SetupAction
/* 00E94 808604E4 AE0807E8 */  sw      $t0, 0x07E8($s0)           ## 000007E8
/* 00E98 808604E8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00E9C 808604EC 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00EA0 808604F0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00EA4 808604F4 03E00008 */  jr      $ra
/* 00EA8 808604F8 00000000 */  nop
