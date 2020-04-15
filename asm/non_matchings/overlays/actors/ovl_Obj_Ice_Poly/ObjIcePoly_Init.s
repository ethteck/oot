glabel ObjIcePoly_Init
/* 00000 80B94260 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 80B94264 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00008 80B94268 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0000C 80B9426C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00010 80B94270 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00014 80B94274 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80B94278 305800FF */  andi    $t8, $v0, 0x00FF           ## $t8 = 00000000
/* 0001C 80B9427C A498001C */  sh      $t8, 0x001C($a0)           ## 0000001C
/* 00020 80B94280 00027A03 */  sra     $t7, $v0,  8               
/* 00024 80B94284 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00028 80B94288 A08F0151 */  sb      $t7, 0x0151($a0)           ## 00000151
/* 0002C 80B9428C 04400003 */  bltz    $v0, .L80B9429C            
/* 00030 80B94290 28410003 */  slti    $at, $v0, 0x0003           
/* 00034 80B94294 14200005 */  bne     $at, $zero, .L80B942AC     
/* 00038 80B94298 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B9429C:
/* 0003C 80B9429C 0C00B55C */  jal     Actor_Kill
              
/* 00040 80B942A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00044 80B942A4 1000005A */  beq     $zero, $zero, .L80B94410   
/* 00048 80B942A8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B942AC:
/* 0004C 80B942AC 0002C880 */  sll     $t9, $v0,  2               
/* 00050 80B942B0 3C0580B9 */  lui     $a1, %hi(D_80B94B88)       ## $a1 = 80B90000
/* 00054 80B942B4 00B92821 */  addu    $a1, $a1, $t9              
/* 00058 80B942B8 0C00B58B */  jal     Actor_SetScale
              
/* 0005C 80B942BC 8CA54B88 */  lw      $a1, %lo(D_80B94B88)($a1)  
/* 00060 80B942C0 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 00064 80B942C4 3C0A80B9 */  lui     $t2, %hi(D_80B94B94)       ## $t2 = 80B90000
/* 00068 80B942C8 C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 0006C 80B942CC 00084840 */  sll     $t1, $t0,  1               
/* 00070 80B942D0 01495021 */  addu    $t2, $t2, $t1              
/* 00074 80B942D4 854A4B94 */  lh      $t2, %lo(D_80B94B94)($t2)  
/* 00078 80B942D8 26050154 */  addiu   $a1, $s0, 0x0154           ## $a1 = 00000154
/* 0007C 80B942DC 448A2000 */  mtc1    $t2, $f4                   ## $f4 = -0.00
/* 00080 80B942E0 00000000 */  nop
/* 00084 80B942E4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00088 80B942E8 46083280 */  add.s   $f10, $f6, $f8             
/* 0008C 80B942EC E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 00090 80B942F0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00094 80B942F4 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00098 80B942F8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0009C 80B942FC 3C0780B9 */  lui     $a3, %hi(D_80B94B30)       ## $a3 = 80B90000
/* 000A0 80B94300 24E74B30 */  addiu   $a3, $a3, %lo(D_80B94B30)  ## $a3 = 80B94B30
/* 000A4 80B94304 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 000A8 80B94308 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 000AC 80B9430C 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 000B0 80B94310 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000B4 80B94314 260501A0 */  addiu   $a1, $s0, 0x01A0           ## $a1 = 000001A0
/* 000B8 80B94318 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 000BC 80B9431C 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 000C0 80B94320 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 000C4 80B94324 3C0780B9 */  lui     $a3, %hi(D_80B94B5C)       ## $a3 = 80B90000
/* 000C8 80B94328 24E74B5C */  addiu   $a3, $a3, %lo(D_80B94B5C)  ## $a3 = 80B94B5C
/* 000CC 80B9432C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 000D0 80B94330 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 000D4 80B94334 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 000D8 80B94338 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000DC 80B9433C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000E0 80B94340 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 000E4 80B94344 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 000E8 80B94348 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000EC 80B9434C 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 000F0 80B94350 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 000F4 80B94354 860B0194 */  lh      $t3, 0x0194($s0)           ## 00000194
/* 000F8 80B94358 C6040050 */  lwc1    $f4, 0x0050($s0)           ## 00000050
/* 000FC 80B9435C 860E0196 */  lh      $t6, 0x0196($s0)           ## 00000196
/* 00100 80B94360 448B8000 */  mtc1    $t3, $f16                  ## $f16 = 0.00
/* 00104 80B94364 861901E0 */  lh      $t9, 0x01E0($s0)           ## 000001E0
/* 00108 80B94368 448E5000 */  mtc1    $t6, $f10                  ## $f10 = 0.00
/* 0010C 80B9436C 468084A0 */  cvt.s.w $f18, $f16                 
/* 00110 80B94370 860A01E2 */  lh      $t2, 0x01E2($s0)           ## 000001E2
/* 00114 80B94374 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00118 80B94378 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
/* 0011C 80B9437C A20200AE */  sb      $v0, 0x00AE($s0)           ## 000000AE
/* 00120 80B94380 46805420 */  cvt.s.w $f16, $f10                 
/* 00124 80B94384 46049182 */  mul.s   $f6, $f18, $f4             
/* 00128 80B94388 C6120054 */  lwc1    $f18, 0x0054($s0)          ## 00000054
/* 0012C 80B9438C A2020150 */  sb      $v0, 0x0150($s0)           ## 00000150
/* 00130 80B94390 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00134 80B94394 46128102 */  mul.s   $f4, $f16, $f18            
/* 00138 80B94398 C6100050 */  lwc1    $f16, 0x0050($s0)          ## 00000050
/* 0013C 80B9439C 4600320D */  trunc.w.s $f8, $f6                   
/* 00140 80B943A0 4600218D */  trunc.w.s $f6, $f4                   
/* 00144 80B943A4 440D4000 */  mfc1    $t5, $f8                   
/* 00148 80B943A8 44994000 */  mtc1    $t9, $f8                   ## $f8 = 0.00
/* 0014C 80B943AC 44183000 */  mfc1    $t8, $f6                   
/* 00150 80B943B0 468042A0 */  cvt.s.w $f10, $f8                  
/* 00154 80B943B4 448A3000 */  mtc1    $t2, $f6                   ## $f6 = 0.00
/* 00158 80B943B8 A60D0194 */  sh      $t5, 0x0194($s0)           ## 00000194
/* 0015C 80B943BC A6180196 */  sh      $t8, 0x0196($s0)           ## 00000196
/* 00160 80B943C0 46803220 */  cvt.s.w $f8, $f6                   
/* 00164 80B943C4 46105482 */  mul.s   $f18, $f10, $f16           
/* 00168 80B943C8 C60A0054 */  lwc1    $f10, 0x0054($s0)          ## 00000054
/* 0016C 80B943CC 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 00170 80B943D0 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00174 80B943D4 4600910D */  trunc.w.s $f4, $f18                  
/* 00178 80B943D8 4600848D */  trunc.w.s $f18, $f16                 
/* 0017C 80B943DC 44092000 */  mfc1    $t1, $f4                   
/* 00180 80B943E0 C6040054 */  lwc1    $f4, 0x0054($s0)           ## 00000054
/* 00184 80B943E4 440C9000 */  mfc1    $t4, $f18                  
/* 00188 80B943E8 46062202 */  mul.s   $f8, $f4, $f6              
/* 0018C 80B943EC A60901E0 */  sh      $t1, 0x01E0($s0)           ## 000001E0
/* 00190 80B943F0 A60C01E2 */  sh      $t4, 0x01E2($s0)           ## 000001E2
/* 00194 80B943F4 44054000 */  mfc1    $a1, $f8                   
/* 00198 80B943F8 0C00B56E */  jal     Actor_SetHeight
              
/* 0019C 80B943FC 00000000 */  nop
/* 001A0 80B94400 3C0D80B9 */  lui     $t5, %hi(func_80B94470)    ## $t5 = 80B90000
/* 001A4 80B94404 25AD4470 */  addiu   $t5, $t5, %lo(func_80B94470) ## $t5 = 80B94470
/* 001A8 80B94408 AE0D014C */  sw      $t5, 0x014C($s0)           ## 0000014C
/* 001AC 80B9440C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B94410:
/* 001B0 80B94410 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 001B4 80B94414 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 001B8 80B94418 03E00008 */  jr      $ra                        
/* 001BC 80B9441C 00000000 */  nop
