glabel func_809C92F4
/* 00534 809C92F4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00538 809C92F8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0053C 809C92FC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00540 809C9300 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00544 809C9304 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00548 809C9308 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 0054C 809C930C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00550 809C9310 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 00554 809C9314 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00558 809C9318 44812000 */  mtc1    $at, $f4                   ## $f4 = 25.00
/* 0055C 809C931C 00000000 */  nop
/* 00560 809C9320 46040182 */  mul.s   $f6, $f0, $f4              
/* 00564 809C9324 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00568 809C9328 E7A60024 */  swc1    $f6, 0x0024($sp)           
/* 0056C 809C932C 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 00570 809C9330 44814000 */  mtc1    $at, $f8                   ## $f8 = 65536.00
/* 00574 809C9334 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 00578 809C9338 46080282 */  mul.s   $f10, $f0, $f8             
/* 0057C 809C933C 4600540D */  trunc.w.s $f16, $f10                 
/* 00580 809C9340 44028000 */  mfc1    $v0, $f16                  
/* 00584 809C9344 00000000 */  nop
/* 00588 809C9348 A7A20022 */  sh      $v0, 0x0022($sp)           
/* 0058C 809C934C 8DF90024 */  lw      $t9, 0x0024($t7)           ## 00000024
/* 00590 809C9350 00022400 */  sll     $a0, $v0, 16               
/* 00594 809C9354 00042403 */  sra     $a0, $a0, 16               
/* 00598 809C9358 AE190000 */  sw      $t9, 0x0000($s0)           ## 00000000
/* 0059C 809C935C 8DF80028 */  lw      $t8, 0x0028($t7)           ## 00000028
/* 005A0 809C9360 AE180004 */  sw      $t8, 0x0004($s0)           ## 00000004
/* 005A4 809C9364 8DF9002C */  lw      $t9, 0x002C($t7)           ## 0000002C
/* 005A8 809C9368 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 005AC 809C936C AE190008 */  sw      $t9, 0x0008($s0)           ## 00000008
/* 005B0 809C9370 C7A40024 */  lwc1    $f4, 0x0024($sp)           
/* 005B4 809C9374 C6120000 */  lwc1    $f18, 0x0000($s0)          ## 00000000
/* 005B8 809C9378 46040182 */  mul.s   $f6, $f0, $f4              
/* 005BC 809C937C 46069200 */  add.s   $f8, $f18, $f6             
/* 005C0 809C9380 E6080000 */  swc1    $f8, 0x0000($s0)           ## 00000000
/* 005C4 809C9384 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 005C8 809C9388 87A40022 */  lh      $a0, 0x0022($sp)           
/* 005CC 809C938C C7B00024 */  lwc1    $f16, 0x0024($sp)          
/* 005D0 809C9390 C60A0008 */  lwc1    $f10, 0x0008($s0)          ## 00000008
/* 005D4 809C9394 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 005D8 809C9398 46100102 */  mul.s   $f4, $f0, $f16             
/* 005DC 809C939C 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 005E0 809C93A0 46045480 */  add.s   $f18, $f10, $f4            
/* 005E4 809C93A4 E6120008 */  swc1    $f18, 0x0008($s0)          ## 00000008
/* 005E8 809C93A8 8FA80030 */  lw      $t0, 0x0030($sp)           
/* 005EC 809C93AC E5060004 */  swc1    $f6, 0x0004($t0)           ## 00000004
/* 005F0 809C93B0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 005F4 809C93B4 87A40022 */  lh      $a0, 0x0022($sp)           
/* 005F8 809C93B8 8FA90030 */  lw      $t1, 0x0030($sp)           
/* 005FC 809C93BC E5200000 */  swc1    $f0, 0x0000($t1)           ## 00000000
/* 00600 809C93C0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00604 809C93C4 87A40022 */  lh      $a0, 0x0022($sp)           
/* 00608 809C93C8 8FA20034 */  lw      $v0, 0x0034($sp)           
/* 0060C 809C93CC 8FAA0030 */  lw      $t2, 0x0030($sp)           
/* 00610 809C93D0 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00614 809C93D4 E5400008 */  swc1    $f0, 0x0008($t2)           ## 00000008
/* 00618 809C93D8 E4420000 */  swc1    $f2, 0x0000($v0)           ## 00000000
/* 0061C 809C93DC E4420004 */  swc1    $f2, 0x0004($v0)           ## 00000004
/* 00620 809C93E0 E4420008 */  swc1    $f2, 0x0008($v0)           ## 00000008
/* 00624 809C93E4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00628 809C93E8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0062C 809C93EC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00630 809C93F0 03E00008 */  jr      $ra                        
/* 00634 809C93F4 00000000 */  nop
