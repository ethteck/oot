.late_rodata
glabel D_8098E2B4
    .float 65535.0

.text
glabel func_8098D280
/* 002B0 8098D280 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 002B4 8098D284 F7BE0050 */  sdc1    $f30, 0x0050($sp)          
/* 002B8 8098D288 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 002BC 8098D28C 4481F000 */  mtc1    $at, $f30                  ## $f30 = 3.00
/* 002C0 8098D290 F7BC0048 */  sdc1    $f28, 0x0048($sp)          
/* 002C4 8098D294 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 002C8 8098D298 4481E000 */  mtc1    $at, $f28                  ## $f28 = 7.00
/* 002CC 8098D29C F7BA0040 */  sdc1    $f26, 0x0040($sp)          
/* 002D0 8098D2A0 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 002D4 8098D2A4 AFBE0078 */  sw      $s8, 0x0078($sp)           
/* 002D8 8098D2A8 AFB70074 */  sw      $s7, 0x0074($sp)           
/* 002DC 8098D2AC AFB60070 */  sw      $s6, 0x0070($sp)           
/* 002E0 8098D2B0 AFB5006C */  sw      $s5, 0x006C($sp)           
/* 002E4 8098D2B4 4481D000 */  mtc1    $at, $f26                  ## $f26 = 8.00
/* 002E8 8098D2B8 AFB40068 */  sw      $s4, 0x0068($sp)           
/* 002EC 8098D2BC AFB30064 */  sw      $s3, 0x0064($sp)           
/* 002F0 8098D2C0 AFB20060 */  sw      $s2, 0x0060($sp)           
/* 002F4 8098D2C4 F7B80038 */  sdc1    $f24, 0x0038($sp)          
/* 002F8 8098D2C8 3C018099 */  lui     $at, %hi(D_8098E2B4)       ## $at = 80990000
/* 002FC 8098D2CC 3C158099 */  lui     $s5, %hi(D_8098E11C)       ## $s5 = 80990000
/* 00300 8098D2D0 3C168099 */  lui     $s6, %hi(D_8098E128)       ## $s6 = 80990000
/* 00304 8098D2D4 3C178099 */  lui     $s7, %hi(D_8098E134)       ## $s7 = 80990000
/* 00308 8098D2D8 3C1E8099 */  lui     $s8, %hi(D_8098E138)       ## $s8 = 80990000
/* 0030C 8098D2DC 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 00310 8098D2E0 AFBF007C */  sw      $ra, 0x007C($sp)           
/* 00314 8098D2E4 AFB1005C */  sw      $s1, 0x005C($sp)           
/* 00318 8098D2E8 AFB00058 */  sw      $s0, 0x0058($sp)           
/* 0031C 8098D2EC F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 00320 8098D2F0 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 00324 8098D2F4 AFA500A4 */  sw      $a1, 0x00A4($sp)           
/* 00328 8098D2F8 27DEE138 */  addiu   $s8, $s8, %lo(D_8098E138)  ## $s8 = 8098E138
/* 0032C 8098D2FC 26F7E134 */  addiu   $s7, $s7, %lo(D_8098E134)  ## $s7 = 8098E134
/* 00330 8098D300 26D6E128 */  addiu   $s6, $s6, %lo(D_8098E128)  ## $s6 = 8098E128
/* 00334 8098D304 26B5E11C */  addiu   $s5, $s5, %lo(D_8098E11C)  ## $s5 = 8098E11C
/* 00338 8098D308 C438E2B4 */  lwc1    $f24, %lo(D_8098E2B4)($at) 
/* 0033C 8098D30C 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 00340 8098D310 27B40094 */  addiu   $s4, $sp, 0x0094           ## $s4 = FFFFFFF4
.L8098D314:
/* 00344 8098D314 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00348 8098D318 4600C306 */  mov.s   $f12, $f24                 
/* 0034C 8098D31C 4600010D */  trunc.w.s $f4, $f0                   
/* 00350 8098D320 4600C306 */  mov.s   $f12, $f24                 
/* 00354 8098D324 44112000 */  mfc1    $s1, $f4                   
/* 00358 8098D328 00000000 */  nop
/* 0035C 8098D32C 00118C00 */  sll     $s1, $s1, 16               
/* 00360 8098D330 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00364 8098D334 00118C03 */  sra     $s1, $s1, 16               
/* 00368 8098D338 4600018D */  trunc.w.s $f6, $f0                   
/* 0036C 8098D33C 00112400 */  sll     $a0, $s1, 16               
/* 00370 8098D340 00042403 */  sra     $a0, $a0, 16               
/* 00374 8098D344 44103000 */  mfc1    $s0, $f6                   
/* 00378 8098D348 00000000 */  nop
/* 0037C 8098D34C 00108400 */  sll     $s0, $s0, 16               
/* 00380 8098D350 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00384 8098D354 00108403 */  sra     $s0, $s0, 16               
/* 00388 8098D358 00102400 */  sll     $a0, $s0, 16               
/* 0038C 8098D35C 00042403 */  sra     $a0, $a0, 16               
/* 00390 8098D360 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00394 8098D364 46000586 */  mov.s   $f22, $f0                  
/* 00398 8098D368 46000506 */  mov.s   $f20, $f0                  
/* 0039C 8098D36C 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 003A0 8098D370 4600D306 */  mov.s   $f12, $f26                 
/* 003A4 8098D374 4616A202 */  mul.s   $f8, $f20, $f22            
/* 003A8 8098D378 3C018099 */  lui     $at, %hi(D_8098E11C)       ## $at = 80990000
/* 003AC 8098D37C 00112400 */  sll     $a0, $s1, 16               
/* 003B0 8098D380 00042403 */  sra     $a0, $a0, 16               
/* 003B4 8098D384 46080282 */  mul.s   $f10, $f0, $f8             
/* 003B8 8098D388 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 003BC 8098D38C E42AE11C */  swc1    $f10, %lo(D_8098E11C)($at) 
/* 003C0 8098D390 00102400 */  sll     $a0, $s0, 16               
/* 003C4 8098D394 00042403 */  sra     $a0, $a0, 16               
/* 003C8 8098D398 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 003CC 8098D39C 46000586 */  mov.s   $f22, $f0                  
/* 003D0 8098D3A0 46000506 */  mov.s   $f20, $f0                  
/* 003D4 8098D3A4 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 003D8 8098D3A8 4600D306 */  mov.s   $f12, $f26                 
/* 003DC 8098D3AC 4616A402 */  mul.s   $f16, $f20, $f22           
/* 003E0 8098D3B0 3C018099 */  lui     $at, %hi(D_8098E124)       ## $at = 80990000
/* 003E4 8098D3B4 00112400 */  sll     $a0, $s1, 16               
/* 003E8 8098D3B8 00042403 */  sra     $a0, $a0, 16               
/* 003EC 8098D3BC 46100482 */  mul.s   $f18, $f0, $f16            
/* 003F0 8098D3C0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 003F4 8098D3C4 E432E124 */  swc1    $f18, %lo(D_8098E124)($at) 
/* 003F8 8098D3C8 46000506 */  mov.s   $f20, $f0                  
/* 003FC 8098D3CC 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00400 8098D3D0 4600F306 */  mov.s   $f12, $f30                 
/* 00404 8098D3D4 46140102 */  mul.s   $f4, $f0, $f20             
/* 00408 8098D3D8 3C018099 */  lui     $at, %hi(D_8098E120)       ## $at = 80990000
/* 0040C 8098D3DC E424E120 */  swc1    $f4, %lo(D_8098E120)($at)  
/* 00410 8098D3E0 3C018099 */  lui     $at, %hi(D_8098E11C)       ## $at = 80990000
/* 00414 8098D3E4 C426E11C */  lwc1    $f6, %lo(D_8098E11C)($at)  
/* 00418 8098D3E8 3C018099 */  lui     $at, %hi(D_8098E120)       ## $at = 80990000
/* 0041C 8098D3EC C432E120 */  lwc1    $f18, %lo(D_8098E120)($at) 
/* 00420 8098D3F0 461C3202 */  mul.s   $f8, $f6, $f28             
/* 00424 8098D3F4 C66A0024 */  lwc1    $f10, 0x0024($s3)          ## 00000024
/* 00428 8098D3F8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0042C 8098D3FC 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 00430 8098D400 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00434 8098D404 46049182 */  mul.s   $f6, $f18, $f4             
/* 00438 8098D408 460A4400 */  add.s   $f16, $f8, $f10            
/* 0043C 8098D40C E7B00094 */  swc1    $f16, 0x0094($sp)          
/* 00440 8098D410 C6680028 */  lwc1    $f8, 0x0028($s3)           ## 00000028
/* 00444 8098D414 44818000 */  mtc1    $at, $f16                  ## $f16 = 120.00
/* 00448 8098D418 3C018099 */  lui     $at, %hi(D_8098E124)       ## $at = 80990000
/* 0044C 8098D41C 46083280 */  add.s   $f10, $f6, $f8             
/* 00450 8098D420 C424E124 */  lwc1    $f4, %lo(D_8098E124)($at)  
/* 00454 8098D424 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00458 8098D428 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 0045C 8098D42C 46105480 */  add.s   $f18, $f10, $f16           
/* 00460 8098D430 461C2182 */  mul.s   $f6, $f4, $f28             
/* 00464 8098D434 E7B20098 */  swc1    $f18, 0x0098($sp)          
/* 00468 8098D438 C668002C */  lwc1    $f8, 0x002C($s3)           ## 0000002C
/* 0046C 8098D43C 46083280 */  add.s   $f10, $f6, $f8             
/* 00470 8098D440 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00474 8098D444 E7AA009C */  swc1    $f10, 0x009C($sp)          
/* 00478 8098D448 4600040D */  trunc.w.s $f16, $f0                  
/* 0047C 8098D44C 24180BB8 */  addiu   $t8, $zero, 0x0BB8         ## $t8 = 00000BB8
/* 00480 8098D450 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00484 8098D454 8FA400A4 */  lw      $a0, 0x00A4($sp)           
/* 00488 8098D458 44088000 */  mfc1    $t0, $f16                  
/* 0048C 8098D45C 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFF4
/* 00490 8098D460 02A03025 */  or      $a2, $s5, $zero            ## $a2 = 8098E11C
/* 00494 8098D464 2509002D */  addiu   $t1, $t0, 0x002D           ## $t1 = 0000002D
/* 00498 8098D468 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 0049C 8098D46C 02C03825 */  or      $a3, $s6, $zero            ## $a3 = 8098E128
/* 004A0 8098D470 AFB70010 */  sw      $s7, 0x0010($sp)           
/* 004A4 8098D474 0C00A33B */  jal     func_80028CEC              
/* 004A8 8098D478 AFBE0014 */  sw      $s8, 0x0014($sp)           
/* 004AC 8098D47C 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 004B0 8098D480 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
/* 004B4 8098D484 1641FFA3 */  bne     $s2, $at, .L8098D314       
/* 004B8 8098D488 00000000 */  nop
/* 004BC 8098D48C 8FBF007C */  lw      $ra, 0x007C($sp)           
/* 004C0 8098D490 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 004C4 8098D494 D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 004C8 8098D498 D7B80038 */  ldc1    $f24, 0x0038($sp)          
/* 004CC 8098D49C D7BA0040 */  ldc1    $f26, 0x0040($sp)          
/* 004D0 8098D4A0 D7BC0048 */  ldc1    $f28, 0x0048($sp)          
/* 004D4 8098D4A4 D7BE0050 */  ldc1    $f30, 0x0050($sp)          
/* 004D8 8098D4A8 8FB00058 */  lw      $s0, 0x0058($sp)           
/* 004DC 8098D4AC 8FB1005C */  lw      $s1, 0x005C($sp)           
/* 004E0 8098D4B0 8FB20060 */  lw      $s2, 0x0060($sp)           
/* 004E4 8098D4B4 8FB30064 */  lw      $s3, 0x0064($sp)           
/* 004E8 8098D4B8 8FB40068 */  lw      $s4, 0x0068($sp)           
/* 004EC 8098D4BC 8FB5006C */  lw      $s5, 0x006C($sp)           
/* 004F0 8098D4C0 8FB60070 */  lw      $s6, 0x0070($sp)           
/* 004F4 8098D4C4 8FB70074 */  lw      $s7, 0x0074($sp)           
/* 004F8 8098D4C8 8FBE0078 */  lw      $s8, 0x0078($sp)           
/* 004FC 8098D4CC 03E00008 */  jr      $ra                        
/* 00500 8098D4D0 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000
