glabel func_80B3B094
/* 00124 80B3B094 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 00128 80B3B098 AFBE0058 */  sw      $s8, 0x0058($sp)           
/* 0012C 80B3B09C AFB70054 */  sw      $s7, 0x0054($sp)           
/* 00130 80B3B0A0 AFB60050 */  sw      $s6, 0x0050($sp)           
/* 00134 80B3B0A4 AFB30044 */  sw      $s3, 0x0044($sp)           
/* 00138 80B3B0A8 AFB20040 */  sw      $s2, 0x0040($sp)           
/* 0013C 80B3B0AC AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00140 80B3B0B0 3C1780B4 */  lui     $s7, %hi(D_80B3C1D0)       ## $s7 = 80B40000
/* 00144 80B3B0B4 3C1E80B4 */  lui     $s8, %hi(D_80B3C1D4)       ## $s8 = 80B40000
/* 00148 80B3B0B8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0014C 80B3B0BC 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 00150 80B3B0C0 AFBF005C */  sw      $ra, 0x005C($sp)           
/* 00154 80B3B0C4 AFB5004C */  sw      $s5, 0x004C($sp)           
/* 00158 80B3B0C8 AFB40048 */  sw      $s4, 0x0048($sp)           
/* 0015C 80B3B0CC AFB1003C */  sw      $s1, 0x003C($sp)           
/* 00160 80B3B0D0 27DEC1D4 */  addiu   $s8, $s8, %lo(D_80B3C1D4)  ## $s8 = 80B3C1D4
/* 00164 80B3B0D4 26F7C1D0 */  addiu   $s7, $s7, %lo(D_80B3C1D0)  ## $s7 = 80B3C1D0
/* 00168 80B3B0D8 24920004 */  addiu   $s2, $a0, 0x0004           ## $s2 = 00000004
/* 0016C 80B3B0DC 24130004 */  addiu   $s3, $zero, 0x0004         ## $s3 = 00000004
.L80B3B0E0:
/* 00170 80B3B0E0 924E014E */  lbu     $t6, 0x014E($s2)           ## 00000152
/* 00174 80B3B0E4 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00178 80B3B0E8 0013C040 */  sll     $t8, $s3,  1               
/* 0017C 80B3B0EC 31CF007F */  andi    $t7, $t6, 0x007F           ## $t7 = 00000000
/* 00180 80B3B0F0 15E0005F */  bne     $t7, $zero, .L80B3B270     
/* 00184 80B3B0F4 3C1980B4 */  lui     $t9, %hi(D_80B3BF44)       ## $t9 = 80B40000
/* 00188 80B3B0F8 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 0018C 80B3B0FC 3C0980B4 */  lui     $t1, %hi(D_80B3BF2C)       ## $t1 = 80B40000
/* 00190 80B3B100 2529BF2C */  addiu   $t1, $t1, %lo(D_80B3BF2C)  ## $t1 = 80B3BF2C
/* 00194 80B3B104 2739BF44 */  addiu   $t9, $t9, %lo(D_80B3BF44)  ## $t9 = 80B3BF44
/* 00198 80B3B108 00134080 */  sll     $t0, $s3,  2               
/* 0019C 80B3B10C 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 001A0 80B3B110 0109A821 */  addu    $s5, $t0, $t1              
/* 001A4 80B3B114 15410002 */  bne     $t2, $at, .L80B3B120       
/* 001A8 80B3B118 0319A021 */  addu    $s4, $t8, $t9              
/* 001AC 80B3B11C 24114000 */  addiu   $s1, $zero, 0x4000         ## $s1 = 00004000
.L80B3B120:
/* 001B0 80B3B120 868B0000 */  lh      $t3, 0x0000($s4)           ## 00000000
/* 001B4 80B3B124 860C0032 */  lh      $t4, 0x0032($s0)           ## 00000032
/* 001B8 80B3B128 016C6821 */  addu    $t5, $t3, $t4              
/* 001BC 80B3B12C 01B12021 */  addu    $a0, $t5, $s1              
/* 001C0 80B3B130 00042400 */  sll     $a0, $a0, 16               
/* 001C4 80B3B134 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 001C8 80B3B138 00042403 */  sra     $a0, $a0, 16               
/* 001CC 80B3B13C E6E00000 */  swc1    $f0, 0x0000($s7)           ## 80B3C1D0
/* 001D0 80B3B140 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 001D4 80B3B144 868E0000 */  lh      $t6, 0x0000($s4)           ## 00000000
/* 001D8 80B3B148 01CFC021 */  addu    $t8, $t6, $t7              
/* 001DC 80B3B14C 03112021 */  addu    $a0, $t8, $s1              
/* 001E0 80B3B150 00042400 */  sll     $a0, $a0, 16               
/* 001E4 80B3B154 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 001E8 80B3B158 00042403 */  sra     $a0, $a0, 16               
/* 001EC 80B3B15C E7C00000 */  swc1    $f0, 0x0000($s8)           ## 80B3C1D4
/* 001F0 80B3B160 C7C40000 */  lwc1    $f4, 0x0000($s8)           ## 80B3C1D4
/* 001F4 80B3B164 C6A20000 */  lwc1    $f2, 0x0000($s5)           ## 00000000
/* 001F8 80B3B168 C6080008 */  lwc1    $f8, 0x0008($s0)           ## 00000008
/* 001FC 80B3B16C C6F20000 */  lwc1    $f18, 0x0000($s7)          ## 80B3C1D0
/* 00200 80B3B170 46041182 */  mul.s   $f6, $f2, $f4              
/* 00204 80B3B174 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00208 80B3B178 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 0020C 80B3B17C 46121102 */  mul.s   $f4, $f2, $f18             
/* 00210 80B3B180 27A6007C */  addiu   $a2, $sp, 0x007C           ## $a2 = FFFFFFEC
/* 00214 80B3B184 46083280 */  add.s   $f10, $f6, $f8             
/* 00218 80B3B188 E7AA007C */  swc1    $f10, 0x007C($sp)          
/* 0021C 80B3B18C C610000C */  lwc1    $f16, 0x000C($s0)          ## 0000000C
/* 00220 80B3B190 E7B00080 */  swc1    $f16, 0x0080($sp)          
/* 00224 80B3B194 C6060010 */  lwc1    $f6, 0x0010($s0)           ## 00000010
/* 00228 80B3B198 46062200 */  add.s   $f8, $f4, $f6              
/* 0022C 80B3B19C 0C2CEBDC */  jal     func_80B3AF70              
/* 00230 80B3B1A0 E7A80084 */  swc1    $f8, 0x0084($sp)           
/* 00234 80B3B1A4 10400032 */  beq     $v0, $zero, .L80B3B270     
/* 00238 80B3B1A8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0023C 80B3B1AC 9259014E */  lbu     $t9, 0x014E($s2)           ## 00000152
/* 00240 80B3B1B0 26C41C24 */  addiu   $a0, $s6, 0x1C24           ## $a0 = 00001C24
/* 00244 80B3B1B4 02C03025 */  or      $a2, $s6, $zero            ## $a2 = 00000000
/* 00248 80B3B1B8 33280080 */  andi    $t0, $t9, 0x0080           ## $t0 = 00000000
/* 0024C 80B3B1BC 11000007 */  beq     $t0, $zero, .L80B3B1DC     
/* 00250 80B3B1C0 24070077 */  addiu   $a3, $zero, 0x0077         ## $a3 = 00000077
/* 00254 80B3B1C4 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00258 80B3B1C8 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 0025C 80B3B1CC 3442FF00 */  ori     $v0, $v0, 0xFF00           ## $v0 = 0000FF01
/* 00260 80B3B1D0 00021400 */  sll     $v0, $v0, 16               
/* 00264 80B3B1D4 10000009 */  beq     $zero, $zero, .L80B3B1FC   
/* 00268 80B3B1D8 00021403 */  sra     $v0, $v0, 16               
.L80B3B1DC:
/* 0026C 80B3B1DC 92090154 */  lbu     $t1, 0x0154($s0)           ## 00000154
/* 00270 80B3B1E0 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
/* 00274 80B3B1E4 312A00F0 */  andi    $t2, $t1, 0x00F0           ## $t2 = 00000000
/* 00278 80B3B1E8 000A5900 */  sll     $t3, $t2,  4               
/* 0027C 80B3B1EC 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 00280 80B3B1F0 016D1025 */  or      $v0, $t3, $t5              ## $v0 = 00000001
/* 00284 80B3B1F4 00021400 */  sll     $v0, $v0, 16               
/* 00288 80B3B1F8 00021403 */  sra     $v0, $v0, 16               
.L80B3B1FC:
/* 0028C 80B3B1FC C7AA007C */  lwc1    $f10, 0x007C($sp)          
/* 00290 80B3B200 C7B00080 */  lwc1    $f16, 0x0080($sp)          
/* 00294 80B3B204 C7B20084 */  lwc1    $f18, 0x0084($sp)          
/* 00298 80B3B208 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 0029C 80B3B20C E7B00014 */  swc1    $f16, 0x0014($sp)          
/* 002A0 80B3B210 E7B20018 */  swc1    $f18, 0x0018($sp)          
/* 002A4 80B3B214 860E0030 */  lh      $t6, 0x0030($s0)           ## 00000030
/* 002A8 80B3B218 868F0000 */  lh      $t7, 0x0000($s4)           ## 00000000
/* 002AC 80B3B21C AFA20028 */  sw      $v0, 0x0028($sp)           
/* 002B0 80B3B220 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 002B4 80B3B224 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 002B8 80B3B228 0C00C916 */  jal     Actor_SpawnAsChild
              
/* 002BC 80B3B22C AFAF0020 */  sw      $t7, 0x0020($sp)           
/* 002C0 80B3B230 5040000D */  beql    $v0, $zero, .L80B3B268     
/* 002C4 80B3B234 924A014E */  lbu     $t2, 0x014E($s2)           ## 00000152
/* 002C8 80B3B238 A053014E */  sb      $s3, 0x014E($v0)           ## 0000014E
/* 002CC 80B3B23C 9258014E */  lbu     $t8, 0x014E($s2)           ## 00000152
/* 002D0 80B3B240 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 002D4 80B3B244 A259014E */  sb      $t9, 0x014E($s2)           ## 00000152
/* 002D8 80B3B248 8E0900E4 */  lw      $t1, 0x00E4($s0)           ## 000000E4
/* 002DC 80B3B24C AC4900E4 */  sw      $t1, 0x00E4($v0)           ## 000000E4
/* 002E0 80B3B250 8E0800E8 */  lw      $t0, 0x00E8($s0)           ## 000000E8
/* 002E4 80B3B254 AC4800E8 */  sw      $t0, 0x00E8($v0)           ## 000000E8
/* 002E8 80B3B258 8E0900EC */  lw      $t1, 0x00EC($s0)           ## 000000EC
/* 002EC 80B3B25C 10000004 */  beq     $zero, $zero, .L80B3B270   
/* 002F0 80B3B260 AC4900EC */  sw      $t1, 0x00EC($v0)           ## 000000EC
/* 002F4 80B3B264 924A014E */  lbu     $t2, 0x014E($s2)           ## 00000152
.L80B3B268:
/* 002F8 80B3B268 314C0080 */  andi    $t4, $t2, 0x0080           ## $t4 = 00000000
/* 002FC 80B3B26C A24C014E */  sb      $t4, 0x014E($s2)           ## 00000152
.L80B3B270:
/* 00300 80B3B270 2673FFFF */  addiu   $s3, $s3, 0xFFFF           ## $s3 = 00000003
/* 00304 80B3B274 0661FF9A */  bgez    $s3, .L80B3B0E0            
/* 00308 80B3B278 2652FFFF */  addiu   $s2, $s2, 0xFFFF           ## $s2 = 00000003
/* 0030C 80B3B27C 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 00310 80B3B280 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 00314 80B3B284 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 00318 80B3B288 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 0031C 80B3B28C 8FB30044 */  lw      $s3, 0x0044($sp)           
/* 00320 80B3B290 8FB40048 */  lw      $s4, 0x0048($sp)           
/* 00324 80B3B294 8FB5004C */  lw      $s5, 0x004C($sp)           
/* 00328 80B3B298 8FB60050 */  lw      $s6, 0x0050($sp)           
/* 0032C 80B3B29C 8FB70054 */  lw      $s7, 0x0054($sp)           
/* 00330 80B3B2A0 8FBE0058 */  lw      $s8, 0x0058($sp)           
/* 00334 80B3B2A4 03E00008 */  jr      $ra                        
/* 00338 80B3B2A8 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
