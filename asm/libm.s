.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __ull_rshift
/* 004310 80003710 AFA40000 */  sw    $a0, ($sp)
/* 004314 80003714 AFA50004 */  sw    $a1, 4($sp)
/* 004318 80003718 AFA60008 */  sw    $a2, 8($sp)
/* 00431C 8000371C AFA7000C */  sw    $a3, 0xc($sp)
/* 004320 80003720 DFAF0008 */  ld    $t7, 8($sp)
/* 004324 80003724 DFAE0000 */  ld    $t6, ($sp)
/* 004328 80003728 01EE1016 */  dsrlv $v0, $t6, $t7
/* 00432C 8000372C 0002183C */  dsll32 $v1, $v0, 0
/* 004330 80003730 0003183F */  dsra32 $v1, $v1, 0
/* 004334 80003734 03E00008 */  jr    $ra
/* 004338 80003738 0002103F */   dsra32 $v0, $v0, 0

glabel __ull_rem
/* 00433C 8000373C AFA40000 */  sw    $a0, ($sp)
/* 004340 80003740 AFA50004 */  sw    $a1, 4($sp)
/* 004344 80003744 AFA60008 */  sw    $a2, 8($sp)
/* 004348 80003748 AFA7000C */  sw    $a3, 0xc($sp)
/* 00434C 8000374C DFAF0008 */  ld    $t7, 8($sp)
/* 004350 80003750 DFAE0000 */  ld    $t6, ($sp)
/* 004354 80003754 01CF001F */  ddivu $zero, $t6, $t7
/* 004358 80003758 15E00002 */  bnez  $t7, .L80003764
/* 00435C 8000375C 00000000 */   nop   
/* 004360 80003760 0007000D */  break 7
.L80003764:
/* 004364 80003764 00001010 */  mfhi  $v0
/* 004368 80003768 0002183C */  dsll32 $v1, $v0, 0
/* 00436C 8000376C 0003183F */  dsra32 $v1, $v1, 0
/* 004370 80003770 03E00008 */  jr    $ra
/* 004374 80003774 0002103F */   dsra32 $v0, $v0, 0

glabel __ull_div
/* 004378 80003778 AFA40000 */  sw    $a0, ($sp)
/* 00437C 8000377C AFA50004 */  sw    $a1, 4($sp)
/* 004380 80003780 AFA60008 */  sw    $a2, 8($sp)
/* 004384 80003784 AFA7000C */  sw    $a3, 0xc($sp)
/* 004388 80003788 DFAF0008 */  ld    $t7, 8($sp)
/* 00438C 8000378C DFAE0000 */  ld    $t6, ($sp)
/* 004390 80003790 01CF001F */  ddivu $zero, $t6, $t7
/* 004394 80003794 15E00002 */  bnez  $t7, .L800037A0
/* 004398 80003798 00000000 */   nop   
/* 00439C 8000379C 0007000D */  break 7
.L800037A0:
/* 0043A0 800037A0 00001012 */  mflo  $v0
/* 0043A4 800037A4 0002183C */  dsll32 $v1, $v0, 0
/* 0043A8 800037A8 0003183F */  dsra32 $v1, $v1, 0
/* 0043AC 800037AC 03E00008 */  jr    $ra
/* 0043B0 800037B0 0002103F */   dsra32 $v0, $v0, 0

glabel __ll_lshift
/* 0043B4 800037B4 AFA40000 */  sw    $a0, ($sp)
/* 0043B8 800037B8 AFA50004 */  sw    $a1, 4($sp)
/* 0043BC 800037BC AFA60008 */  sw    $a2, 8($sp)
/* 0043C0 800037C0 AFA7000C */  sw    $a3, 0xc($sp)
/* 0043C4 800037C4 DFAF0008 */  ld    $t7, 8($sp)
/* 0043C8 800037C8 DFAE0000 */  ld    $t6, ($sp)
/* 0043CC 800037CC 01EE1014 */  dsllv $v0, $t6, $t7
/* 0043D0 800037D0 0002183C */  dsll32 $v1, $v0, 0
/* 0043D4 800037D4 0003183F */  dsra32 $v1, $v1, 0
/* 0043D8 800037D8 03E00008 */  jr    $ra
/* 0043DC 800037DC 0002103F */   dsra32 $v0, $v0, 0

glabel __ll_rem
/* 0043E0 800037E0 AFA40000 */  sw    $a0, ($sp)
/* 0043E4 800037E4 AFA50004 */  sw    $a1, 4($sp)
/* 0043E8 800037E8 AFA60008 */  sw    $a2, 8($sp)
/* 0043EC 800037EC AFA7000C */  sw    $a3, 0xc($sp)
/* 0043F0 800037F0 DFAF0008 */  ld    $t7, 8($sp)
/* 0043F4 800037F4 DFAE0000 */  ld    $t6, ($sp)
/* 0043F8 800037F8 01CF001F */  ddivu $zero, $t6, $t7
/* 0043FC 800037FC 15E00002 */  bnez  $t7, .L80003808
/* 004400 80003800 00000000 */   nop   
/* 004404 80003804 0007000D */  break 7
.L80003808:
/* 004408 80003808 00001010 */  mfhi  $v0
/* 00440C 8000380C 0002183C */  dsll32 $v1, $v0, 0
/* 004410 80003810 0003183F */  dsra32 $v1, $v1, 0
/* 004414 80003814 03E00008 */  jr    $ra
/* 004418 80003818 0002103F */   dsra32 $v0, $v0, 0

glabel __ll_div
/* 00441C 8000381C AFA40000 */  sw    $a0, ($sp)
/* 004420 80003820 AFA50004 */  sw    $a1, 4($sp)
/* 004424 80003824 AFA60008 */  sw    $a2, 8($sp)
/* 004428 80003828 AFA7000C */  sw    $a3, 0xc($sp)
/* 00442C 8000382C DFAF0008 */  ld    $t7, 8($sp)
/* 004430 80003830 DFAE0000 */  ld    $t6, ($sp)
/* 004434 80003834 01CF001E */  ddiv  $zero, $t6, $t7
/* 004438 80003838 00000000 */  nop   
/* 00443C 8000383C 15E00002 */  bnez  $t7, .L80003848
/* 004440 80003840 00000000 */   nop   
/* 004444 80003844 0007000D */  break 7
.L80003848:
/* 004448 80003848 6401FFFF */  daddiu $at, $zero, -1
/* 00444C 8000384C 15E10005 */  bne   $t7, $at, .L80003864
/* 004450 80003850 64010001 */   daddiu $at, $zero, 1
/* 004454 80003854 00010FFC */  dsll32 $at, $at, 0x1f
/* 004458 80003858 15C10002 */  bne   $t6, $at, .L80003864
/* 00445C 8000385C 00000000 */   nop   
/* 004460 80003860 0006000D */  break 6
.L80003864:
/* 004464 80003864 00001012 */  mflo  $v0
/* 004468 80003868 0002183C */  dsll32 $v1, $v0, 0
/* 00446C 8000386C 0003183F */  dsra32 $v1, $v1, 0
/* 004470 80003870 03E00008 */  jr    $ra
/* 004474 80003874 0002103F */   dsra32 $v0, $v0, 0

glabel __ll_mul
/* 004478 80003878 AFA40000 */  sw    $a0, ($sp)
/* 00447C 8000387C AFA50004 */  sw    $a1, 4($sp)
/* 004480 80003880 AFA60008 */  sw    $a2, 8($sp)
/* 004484 80003884 AFA7000C */  sw    $a3, 0xc($sp)
/* 004488 80003888 DFAF0008 */  ld    $t7, 8($sp)
/* 00448C 8000388C DFAE0000 */  ld    $t6, ($sp)
/* 004490 80003890 01CF001D */  dmultu $t6, $t7
/* 004494 80003894 00001012 */  mflo  $v0
/* 004498 80003898 0002183C */  dsll32 $v1, $v0, 0
/* 00449C 8000389C 0003183F */  dsra32 $v1, $v1, 0
/* 0044A0 800038A0 03E00008 */  jr    $ra
/* 0044A4 800038A4 0002103F */   dsra32 $v0, $v0, 0

glabel __ull_divremi
/* 0044A8 800038A8 87AF0012 */  lh    $t7, 0x12($sp)
/* 0044AC 800038AC AFA60008 */  sw    $a2, 8($sp)
/* 0044B0 800038B0 AFA7000C */  sw    $a3, 0xc($sp)
/* 0044B4 800038B4 DFAE0008 */  ld    $t6, 8($sp)
/* 0044B8 800038B8 01E0C025 */  move  $t8, $t7
/* 0044BC 800038BC 0300C825 */  move  $t9, $t8
/* 0044C0 800038C0 01D9001F */  ddivu $zero, $t6, $t9
/* 0044C4 800038C4 17200002 */  bnez  $t9, .L800038D0
/* 0044C8 800038C8 00000000 */   nop   
/* 0044CC 800038CC 0007000D */  break 7
.L800038D0:
/* 0044D0 800038D0 00004012 */  mflo  $t0
/* 0044D4 800038D4 FC880000 */  sd    $t0, ($a0)
/* 0044D8 800038D8 87AA0012 */  lh    $t2, 0x12($sp)
/* 0044DC 800038DC DFA90008 */  ld    $t1, 8($sp)
/* 0044E0 800038E0 01405825 */  move  $t3, $t2
/* 0044E4 800038E4 01606025 */  move  $t4, $t3
/* 0044E8 800038E8 012C001F */  ddivu $zero, $t1, $t4
/* 0044EC 800038EC 15800002 */  bnez  $t4, .L800038F8
/* 0044F0 800038F0 00000000 */   nop   
/* 0044F4 800038F4 0007000D */  break 7
.L800038F8:
/* 0044F8 800038F8 00006810 */  mfhi  $t5
/* 0044FC 800038FC FCAD0000 */  sd    $t5, ($a1)
/* 004500 80003900 03E00008 */  jr    $ra
/* 004504 80003904 00000000 */   nop   

glabel __ll_mod
/* 004508 80003908 27BDFFF8 */  addiu $sp, $sp, -8
/* 00450C 8000390C AFA40008 */  sw    $a0, 8($sp)
/* 004510 80003910 AFA5000C */  sw    $a1, 0xc($sp)
/* 004514 80003914 AFA60010 */  sw    $a2, 0x10($sp)
/* 004518 80003918 AFA70014 */  sw    $a3, 0x14($sp)
/* 00451C 8000391C DFAF0010 */  ld    $t7, 0x10($sp)
/* 004520 80003920 DFAE0008 */  ld    $t6, 8($sp)
/* 004524 80003924 01CF001E */  ddiv  $zero, $t6, $t7
/* 004528 80003928 00000000 */  nop   
/* 00452C 8000392C 15E00002 */  bnez  $t7, .L80003938
/* 004530 80003930 00000000 */   nop   
/* 004534 80003934 0007000D */  break 7
.L80003938:
/* 004538 80003938 6401FFFF */  daddiu $at, $zero, -1
/* 00453C 8000393C 15E10005 */  bne   $t7, $at, .L80003954
/* 004540 80003940 64010001 */   daddiu $at, $zero, 1
/* 004544 80003944 00010FFC */  dsll32 $at, $at, 0x1f
/* 004548 80003948 15C10002 */  bne   $t6, $at, .L80003954
/* 00454C 8000394C 00000000 */   nop   
/* 004550 80003950 0006000D */  break 6
.L80003954:
/* 004554 80003954 0000C010 */  mfhi  $t8
/* 004558 80003958 FFB80000 */  sd    $t8, ($sp)
/* 00455C 8000395C 07010003 */  bgez  $t8, .L8000396C
/* 004560 80003960 00000000 */   nop   
/* 004564 80003964 1DE00007 */  bgtz  $t7, .L80003984
/* 004568 80003968 00000000 */   nop   
.L8000396C:
/* 00456C 8000396C DFB90000 */  ld    $t9, ($sp)
/* 004570 80003970 1B200008 */  blez  $t9, .L80003994
/* 004574 80003974 00000000 */   nop   
/* 004578 80003978 DFA80010 */  ld    $t0, 0x10($sp)
/* 00457C 8000397C 05010005 */  bgez  $t0, .L80003994
/* 004580 80003980 00000000 */   nop   
.L80003984:
/* 004584 80003984 DFA90000 */  ld    $t1, ($sp)
/* 004588 80003988 DFAA0010 */  ld    $t2, 0x10($sp)
/* 00458C 8000398C 012A582D */  daddu $t3, $t1, $t2
/* 004590 80003990 FFAB0000 */  sd    $t3, ($sp)
.L80003994:
/* 004594 80003994 8FA20000 */  lw    $v0, ($sp)
/* 004598 80003998 8FA30004 */  lw    $v1, 4($sp)
/* 00459C 8000399C 03E00008 */  jr    $ra
/* 0045A0 800039A0 27BD0008 */   addiu $sp, $sp, 8

glabel __ll_rshift
/* 0045A4 800039A4 AFA40000 */  sw    $a0, ($sp)
/* 0045A8 800039A8 AFA50004 */  sw    $a1, 4($sp)
/* 0045AC 800039AC AFA60008 */  sw    $a2, 8($sp)
/* 0045B0 800039B0 AFA7000C */  sw    $a3, 0xc($sp)
/* 0045B4 800039B4 DFAF0008 */  ld    $t7, 8($sp)
/* 0045B8 800039B8 DFAE0000 */  ld    $t6, ($sp)
/* 0045BC 800039BC 01EE1017 */  dsrav $v0, $t6, $t7
/* 0045C0 800039C0 0002183C */  dsll32 $v1, $v0, 0
/* 0045C4 800039C4 0003183F */  dsra32 $v1, $v1, 0
/* 0045C8 800039C8 03E00008 */  jr    $ra
/* 0045CC 800039CC 0002103F */   dsra32 $v0, $v0, 0
