glabel func_80B07FE0
/* 00AA0 80B07FE0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00AA4 80B07FE4 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 00AA8 80B07FE8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AAC 80B07FEC AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00AB0 80B07FF0 14A1000E */  bne     $a1, $at, .L80B0802C       
/* 00AB4 80B07FF4 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 00AB8 80B07FF8 8FA20038 */  lw      $v0, 0x0038($sp)           
/* 00ABC 80B07FFC 8FA3003C */  lw      $v1, 0x003C($sp)           
/* 00AC0 80B08000 3C0A80B1 */  lui     $t2, %hi(D_80B0A050)       ## $t2 = 80B10000
/* 00AC4 80B08004 844E0000 */  lh      $t6, 0x0000($v0)           ## 00000000
/* 00AC8 80B08008 846F02A8 */  lh      $t7, 0x02A8($v1)           ## 000002A8
/* 00ACC 80B0800C 84590004 */  lh      $t9, 0x0004($v0)           ## 00000004
/* 00AD0 80B08010 254AA050 */  addiu   $t2, $t2, %lo(D_80B0A050)  ## $t2 = 80B0A050
/* 00AD4 80B08014 01CFC021 */  addu    $t8, $t6, $t7              
/* 00AD8 80B08018 A4580000 */  sh      $t8, 0x0000($v0)           ## 00000000
/* 00ADC 80B0801C 846802A6 */  lh      $t0, 0x02A6($v1)           ## 000002A6
/* 00AE0 80B08020 03284821 */  addu    $t1, $t9, $t0              
/* 00AE4 80B08024 A4490004 */  sh      $t1, 0x0004($v0)           ## 00000004
/* 00AE8 80B08028 ACCA0000 */  sw      $t2, 0x0000($a2)           ## 00000000
.L80B0802C:
/* 00AEC 80B0802C 8FA3003C */  lw      $v1, 0x003C($sp)           
/* 00AF0 80B08030 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00AF4 80B08034 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00AF8 80B08038 946402B2 */  lhu     $a0, 0x02B2($v1)           ## 000002B2
/* 00AFC 80B0803C 308B0002 */  andi    $t3, $a0, 0x0002           ## $t3 = 00000000
/* 00B00 80B08040 11600003 */  beq     $t3, $zero, .L80B08050     
/* 00B04 80B08044 308CFFFD */  andi    $t4, $a0, 0xFFFD           ## $t4 = 00000000
/* 00B08 80B08048 10000038 */  beq     $zero, $zero, .L80B0812C   
/* 00B0C 80B0804C A46C02B2 */  sh      $t4, 0x02B2($v1)           ## 000002B2
.L80B08050:
/* 00B10 80B08050 10A10006 */  beq     $a1, $at, .L80B0806C       
/* 00B14 80B08054 00051880 */  sll     $v1, $a1,  2               
/* 00B18 80B08058 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00B1C 80B0805C 10A10003 */  beq     $a1, $at, .L80B0806C       
/* 00B20 80B08060 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 00B24 80B08064 54A10031 */  bnel    $a1, $at, .L80B0812C       
/* 00B28 80B08068 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B0806C:
/* 00B2C 80B0806C 8FAD0028 */  lw      $t5, 0x0028($sp)           
/* 00B30 80B08070 00651823 */  subu    $v1, $v1, $a1              
/* 00B34 80B08074 000318C0 */  sll     $v1, $v1,  3               
/* 00B38 80B08078 8DAE009C */  lw      $t6, 0x009C($t5)           ## 0000009C
/* 00B3C 80B0807C 00651821 */  addu    $v1, $v1, $a1              
/* 00B40 80B08080 00031840 */  sll     $v1, $v1,  1               
/* 00B44 80B08084 246F0814 */  addiu   $t7, $v1, 0x0814           ## $t7 = 00000814
/* 00B48 80B08088 01CF0019 */  multu   $t6, $t7                   
/* 00B4C 80B0808C AFA30018 */  sw      $v1, 0x0018($sp)           
/* 00B50 80B08090 00002012 */  mflo    $a0                        
/* 00B54 80B08094 00042400 */  sll     $a0, $a0, 16               
/* 00B58 80B08098 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00B5C 80B0809C 00042403 */  sra     $a0, $a0, 16               
/* 00B60 80B080A0 8FA20038 */  lw      $v0, 0x0038($sp)           
/* 00B64 80B080A4 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00B68 80B080A8 44814000 */  mtc1    $at, $f8                   ## $f8 = 200.00
/* 00B6C 80B080AC 84580002 */  lh      $t8, 0x0002($v0)           ## 00000002
/* 00B70 80B080B0 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 00B74 80B080B4 46080282 */  mul.s   $f10, $f0, $f8             
/* 00B78 80B080B8 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 00B7C 80B080BC 246B0940 */  addiu   $t3, $v1, 0x0940           ## $t3 = 00000940
/* 00B80 80B080C0 468021A0 */  cvt.s.w $f6, $f4                   
/* 00B84 80B080C4 460A3400 */  add.s   $f16, $f6, $f10            
/* 00B88 80B080C8 4600848D */  trunc.w.s $f18, $f16                 
/* 00B8C 80B080CC 44089000 */  mfc1    $t0, $f18                  
/* 00B90 80B080D0 00000000 */  nop
/* 00B94 80B080D4 A4480002 */  sh      $t0, 0x0002($v0)           ## 00000002
/* 00B98 80B080D8 8FA90028 */  lw      $t1, 0x0028($sp)           
/* 00B9C 80B080DC 8D2A009C */  lw      $t2, 0x009C($t1)           ## 0000009C
/* 00BA0 80B080E0 014B0019 */  multu   $t2, $t3                   
/* 00BA4 80B080E4 00002012 */  mflo    $a0                        
/* 00BA8 80B080E8 00042400 */  sll     $a0, $a0, 16               
/* 00BAC 80B080EC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00BB0 80B080F0 00042403 */  sra     $a0, $a0, 16               
/* 00BB4 80B080F4 8FA20038 */  lw      $v0, 0x0038($sp)           
/* 00BB8 80B080F8 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00BBC 80B080FC 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 00BC0 80B08100 844C0004 */  lh      $t4, 0x0004($v0)           ## 00000004
/* 00BC4 80B08104 46060282 */  mul.s   $f10, $f0, $f6             
/* 00BC8 80B08108 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 00BCC 80B0810C 00000000 */  nop
/* 00BD0 80B08110 46802220 */  cvt.s.w $f8, $f4                   
/* 00BD4 80B08114 460A4400 */  add.s   $f16, $f8, $f10            
/* 00BD8 80B08118 4600848D */  trunc.w.s $f18, $f16                 
/* 00BDC 80B0811C 440E9000 */  mfc1    $t6, $f18                  
/* 00BE0 80B08120 00000000 */  nop
/* 00BE4 80B08124 A44E0004 */  sh      $t6, 0x0004($v0)           ## 00000004
/* 00BE8 80B08128 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B0812C:
/* 00BEC 80B0812C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BF0 80B08130 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00BF4 80B08134 03E00008 */  jr      $ra                        
/* 00BF8 80B08138 00000000 */  nop
