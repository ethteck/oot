glabel func_809A090C
/* 003BC 809A090C AFA40000 */  sw      $a0, 0x0000($sp)           
/* 003C0 809A0910 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 003C4 809A0914 84CE0042 */  lh      $t6, 0x0042($a2)           ## 00000042
/* 003C8 809A0918 84C80040 */  lh      $t0, 0x0040($a2)           ## 00000040
/* 003CC 809A091C 84C90052 */  lh      $t1, 0x0052($a2)           ## 00000052
/* 003D0 809A0920 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 003D4 809A0924 A4CF0042 */  sh      $t7, 0x0042($a2)           ## 00000042
/* 003D8 809A0928 84D80042 */  lh      $t8, 0x0042($a2)           ## 00000042
/* 003DC 809A092C 84CC005C */  lh      $t4, 0x005C($a2)           ## 0000005C
/* 003E0 809A0930 84CB004C */  lh      $t3, 0x004C($a2)           ## 0000004C
/* 003E4 809A0934 01095021 */  addu    $t2, $t0, $t1              
/* 003E8 809A0938 33190003 */  andi    $t9, $t8, 0x0003           ## $t9 = 00000000
/* 003EC 809A093C 016C082A */  slt     $at, $t3, $t4              
/* 003F0 809A0940 A4D90042 */  sh      $t9, 0x0042($a2)           ## 00000042
/* 003F4 809A0944 14200009 */  bne     $at, $zero, .L809A096C     
/* 003F8 809A0948 A4CA0040 */  sh      $t2, 0x0040($a2)           ## 00000040
/* 003FC 809A094C 84CD004A */  lh      $t5, 0x004A($a2)           ## 0000004A
/* 00400 809A0950 25AEFFFB */  addiu   $t6, $t5, 0xFFFB           ## $t6 = FFFFFFFB
/* 00404 809A0954 A4CE004A */  sh      $t6, 0x004A($a2)           ## 0000004A
/* 00408 809A0958 84CF004A */  lh      $t7, 0x004A($a2)           ## 0000004A
/* 0040C 809A095C 05E3000D */  bgezl   $t7, .L809A0994            
/* 00410 809A0960 C4C0001C */  lwc1    $f0, 0x001C($a2)           ## 0000001C
/* 00414 809A0964 1000000A */  beq     $zero, $zero, .L809A0990   
/* 00418 809A0968 A4C0004A */  sh      $zero, 0x004A($a2)         ## 0000004A
.L809A096C:
/* 0041C 809A096C 84D8004A */  lh      $t8, 0x004A($a2)           ## 0000004A
/* 00420 809A0970 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 00424 809A0974 2719000F */  addiu   $t9, $t8, 0x000F           ## $t9 = 0000000F
/* 00428 809A0978 A4D9004A */  sh      $t9, 0x004A($a2)           ## 0000004A
/* 0042C 809A097C 84C8004A */  lh      $t0, 0x004A($a2)           ## 0000004A
/* 00430 809A0980 29010100 */  slti    $at, $t0, 0x0100           
/* 00434 809A0984 54200003 */  bnel    $at, $zero, .L809A0994     
/* 00438 809A0988 C4C0001C */  lwc1    $f0, 0x001C($a2)           ## 0000001C
/* 0043C 809A098C A4C9004A */  sh      $t1, 0x004A($a2)           ## 0000004A
.L809A0990:
/* 00440 809A0990 C4C0001C */  lwc1    $f0, 0x001C($a2)           ## 0000001C
.L809A0994:
/* 00444 809A0994 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00448 809A0998 00000000 */  nop
/* 0044C 809A099C 4604003C */  c.lt.s  $f0, $f4                   
/* 00450 809A09A0 00000000 */  nop
/* 00454 809A09A4 4502000B */  bc1fl   .L809A09D4                 
/* 00458 809A09A8 84CB005C */  lh      $t3, 0x005C($a2)           ## 0000005C
/* 0045C 809A09AC 84CA0056 */  lh      $t2, 0x0056($a2)           ## 00000056
/* 00460 809A09B0 3C01809A */  lui     $at, %hi(D_809A0A40)       ## $at = 809A0000
/* 00464 809A09B4 C42A0A40 */  lwc1    $f10, %lo(D_809A0A40)($at) 
/* 00468 809A09B8 448A3000 */  mtc1    $t2, $f6                   ## $f6 = 0.00
/* 0046C 809A09BC 00000000 */  nop
/* 00470 809A09C0 46803220 */  cvt.s.w $f8, $f6                   
/* 00474 809A09C4 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00478 809A09C8 46100480 */  add.s   $f18, $f0, $f16            
/* 0047C 809A09CC E4D2001C */  swc1    $f18, 0x001C($a2)          ## 0000001C
/* 00480 809A09D0 84CB005C */  lh      $t3, 0x005C($a2)           ## 0000005C
.L809A09D4:
/* 00484 809A09D4 1D600003 */  bgtz    $t3, .L809A09E4            
/* 00488 809A09D8 00000000 */  nop
/* 0048C 809A09DC 84CC0056 */  lh      $t4, 0x0056($a2)           ## 00000056
/* 00490 809A09E0 A4CC0056 */  sh      $t4, 0x0056($a2)           ## 00000056
.L809A09E4:
/* 00494 809A09E4 03E00008 */  jr      $ra                        
/* 00498 809A09E8 00000000 */  nop
/* 0049C 809A09EC 00000000 */  nop
