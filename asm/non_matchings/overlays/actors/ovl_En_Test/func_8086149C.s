glabel func_8086149C
/* 01E4C 8086149C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01E50 808614A0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01E54 808614A4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01E58 808614A8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01E5C 808614AC C48001A0 */  lwc1    $f0, 0x01A0($a0)           ## 000001A0
/* 01E60 808614B0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01E64 808614B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01E68 808614B8 4600018D */  trunc.w.s $f6, $f0                   
/* 01E6C 808614BC 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 01E70 808614C0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01E74 808614C4 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 01E78 808614C8 44033000 */  mfc1    $v1, $f6                   
/* 01E7C 808614CC E484FFB2 */  swc1    $f4, -0x004E($a0)          ## 00000068
/* 01E80 808614D0 28610004 */  slti    $at, $v1, 0x0004           
/* 01E84 808614D4 50200009 */  beql    $at, $zero, .L808614FC     
/* 01E88 808614D8 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 01E8C 808614DC 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 01E90 808614E0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01E94 808614E4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01E98 808614E8 C60001A0 */  lwc1    $f0, 0x01A0($s0)           ## 000001A0
/* 01E9C 808614EC 4600020D */  trunc.w.s $f8, $f0                   
/* 01EA0 808614F0 44034000 */  mfc1    $v1, $f8                   
/* 01EA4 808614F4 00000000 */  nop
/* 01EA8 808614F8 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
.L808614FC:
/* 01EAC 808614FC 14610004 */  bne     $v1, $at, .L80861510       
/* 01EB0 80861500 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EB4 80861504 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01EB8 80861508 24053839 */  addiu   $a1, $zero, 0x3839         ## $a1 = 00003839
/* 01EBC 8086150C C60001A0 */  lwc1    $f0, 0x01A0($s0)           ## 000001A0
.L80861510:
/* 01EC0 80861510 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 01EC4 80861514 44815000 */  mtc1    $at, $f10                  ## $f10 = 7.00
/* 01EC8 80861518 3C014130 */  lui     $at, 0x4130                ## $at = 41300000
/* 01ECC 8086151C 4600503C */  c.lt.s  $f10, $f0                  
/* 01ED0 80861520 00000000 */  nop
/* 01ED4 80861524 4502000A */  bc1fl   .L80861550                 
/* 01ED8 80861528 A2000808 */  sb      $zero, 0x0808($s0)         ## 00000808
/* 01EDC 8086152C 44818000 */  mtc1    $at, $f16                  ## $f16 = 11.00
/* 01EE0 80861530 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 01EE4 80861534 4610003C */  c.lt.s  $f0, $f16                  
/* 01EE8 80861538 00000000 */  nop
/* 01EEC 8086153C 45020004 */  bc1fl   .L80861550                 
/* 01EF0 80861540 A2000808 */  sb      $zero, 0x0808($s0)         ## 00000808
/* 01EF4 80861544 10000002 */  beq     $zero, $zero, .L80861550   
/* 01EF8 80861548 A2180808 */  sb      $t8, 0x0808($s0)           ## 00000808
/* 01EFC 8086154C A2000808 */  sb      $zero, 0x0808($s0)         ## 00000808
.L80861550:
/* 01F00 80861550 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01F04 80861554 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 01F08 80861558 1040000D */  beq     $v0, $zero, .L80861590     
/* 01F0C 8086155C 8FB9002C */  lw      $t9, 0x002C($sp)           
/* 01F10 80861560 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 01F14 80861564 01194021 */  addu    $t0, $t0, $t9              
/* 01F18 80861568 8D081DE4 */  lw      $t0, 0x1DE4($t0)           ## 00011DE4
/* 01F1C 8086156C 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 01F20 80861570 11200005 */  beq     $t1, $zero, .L80861588     
/* 01F24 80861574 00000000 */  nop
/* 01F28 80861578 0C218569 */  jal     func_808615A4              
/* 01F2C 8086157C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F30 80861580 10000004 */  beq     $zero, $zero, .L80861594   
/* 01F34 80861584 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80861588:
/* 01F38 80861588 0C218607 */  jal     func_8086181C              
/* 01F3C 8086158C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80861590:
/* 01F40 80861590 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80861594:
/* 01F44 80861594 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01F48 80861598 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01F4C 8086159C 03E00008 */  jr      $ra                        
/* 01F50 808615A0 00000000 */  nop
