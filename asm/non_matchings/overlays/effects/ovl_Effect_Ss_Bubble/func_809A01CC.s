.rdata
glabel D_809A04A0
    .asciz "../z_eff_ss_bubble.c"
    .balign 4

glabel D_809A04B8
    .asciz "../z_eff_ss_bubble.c"
    .balign 4

glabel D_809A04D0
    .asciz "../z_eff_ss_bubble.c"
    .balign 4

.text
glabel func_809A01CC
/* 0018C 809A01CC 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00190 809A01D0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00194 809A01D4 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00198 809A01D8 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 0019C 809A01DC AFA40058 */  sw      $a0, 0x0058($sp)           
/* 001A0 809A01E0 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 001A4 809A01E4 84CF0040 */  lh      $t7, 0x0040($a2)           ## 00000040
/* 001A8 809A01E8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 001AC 809A01EC 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 001B0 809A01F0 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 001B4 809A01F4 8C900000 */  lw      $s0, 0x0000($a0)           ## 00000000
/* 001B8 809A01F8 00C08825 */  or      $s1, $a2, $zero            ## $s1 = 00000000
/* 001BC 809A01FC 468021A0 */  cvt.s.w $f6, $f4                   
/* 001C0 809A0200 3C06809A */  lui     $a2, %hi(D_809A04A0)       ## $a2 = 809A0000
/* 001C4 809A0204 24C604A0 */  addiu   $a2, $a2, %lo(D_809A04A0)  ## $a2 = 809A04A0
/* 001C8 809A0208 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 001CC 809A020C 2407009A */  addiu   $a3, $zero, 0x009A         ## $a3 = 0000009A
/* 001D0 809A0210 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 001D4 809A0214 46083283 */  div.s   $f10, $f6, $f8             
/* 001D8 809A0218 0C031AB1 */  jal     Graph_OpenDisps              
/* 001DC 809A021C E7AA0050 */  swc1    $f10, 0x0050($sp)          
/* 001E0 809A0220 C62C0000 */  lwc1    $f12, 0x0000($s1)          ## 00000000
/* 001E4 809A0224 C62E0004 */  lwc1    $f14, 0x0004($s1)          ## 00000004
/* 001E8 809A0228 8E260008 */  lw      $a2, 0x0008($s1)           ## 00000008
/* 001EC 809A022C 0C034261 */  jal     Matrix_Translate              
/* 001F0 809A0230 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 001F4 809A0234 C7AC0050 */  lwc1    $f12, 0x0050($sp)          
/* 001F8 809A0238 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 001FC 809A023C 44066000 */  mfc1    $a2, $f12                  
/* 00200 809A0240 0C0342A3 */  jal     Matrix_Scale              
/* 00204 809A0244 46006386 */  mov.s   $f14, $f12                 
/* 00208 809A0248 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0020C 809A024C 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 00210 809A0250 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 00214 809A0254 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00218 809A0258 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 0021C 809A025C 3C05809A */  lui     $a1, %hi(D_809A04B8)       ## $a1 = 809A0000
/* 00220 809A0260 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00224 809A0264 24A504B8 */  addiu   $a1, $a1, %lo(D_809A04B8)  ## $a1 = 809A04B8
/* 00228 809A0268 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0022C 809A026C 240600A7 */  addiu   $a2, $zero, 0x00A7         ## $a2 = 000000A7
/* 00230 809A0270 0C0346A2 */  jal     Matrix_NewMtx              
/* 00234 809A0274 AFA20038 */  sw      $v0, 0x0038($sp)           
/* 00238 809A0278 8FA30038 */  lw      $v1, 0x0038($sp)           
/* 0023C 809A027C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00240 809A0280 0C024F46 */  jal     func_80093D18              
/* 00244 809A0284 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00248 809A0288 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0024C 809A028C 3C09FA00 */  lui     $t1, 0xFA00                ## $t1 = FA000000
/* 00250 809A0290 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 00254 809A0294 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 00258 809A0298 AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 0025C 809A029C AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 00260 809A02A0 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00264 809A02A4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00268 809A02A8 3C0D9696 */  lui     $t5, 0x9696                ## $t5 = 96960000
/* 0026C 809A02AC 35AD9600 */  ori     $t5, $t5, 0x9600           ## $t5 = 96969600
/* 00270 809A02B0 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00274 809A02B4 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 00278 809A02B8 3C0CFB00 */  lui     $t4, 0xFB00                ## $t4 = FB000000
/* 0027C 809A02BC AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00280 809A02C0 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00284 809A02C4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00288 809A02C8 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 0028C 809A02CC 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 00290 809A02D0 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 00294 809A02D4 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 00298 809A02D8 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 0029C 809A02DC 8E380038 */  lw      $t8, 0x0038($s1)           ## 00000038
/* 002A0 809A02E0 3C040402 */  lui     $a0, 0x0402                ## $a0 = 04020000
/* 002A4 809A02E4 2484A160 */  addiu   $a0, $a0, 0xA160           ## $a0 = 0401A160
/* 002A8 809A02E8 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 002AC 809A02EC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 002B0 809A02F0 00044900 */  sll     $t1, $a0,  4               
/* 002B4 809A02F4 00095702 */  srl     $t2, $t1, 28               
/* 002B8 809A02F8 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 002BC 809A02FC AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 002C0 809A0300 000A5880 */  sll     $t3, $t2,  2               
/* 002C4 809A0304 3C0C8016 */  lui     $t4, %hi(gSegments)
/* 002C8 809A0308 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 002CC 809A030C 018B6021 */  addu    $t4, $t4, $t3              
/* 002D0 809A0310 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 002D4 809A0314 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 002D8 809A0318 8D8C6FA8 */  lw      $t4, %lo(gSegments)($t4)
/* 002DC 809A031C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 002E0 809A0320 00816824 */  and     $t5, $a0, $at              
/* 002E4 809A0324 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 002E8 809A0328 018D7021 */  addu    $t6, $t4, $t5              
/* 002EC 809A032C 01C17821 */  addu    $t7, $t6, $at              
/* 002F0 809A0330 3C06809A */  lui     $a2, %hi(D_809A04D0)       ## $a2 = 809A0000
/* 002F4 809A0334 24C604D0 */  addiu   $a2, $a2, %lo(D_809A04D0)  ## $a2 = 809A04D0
/* 002F8 809A0338 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 002FC 809A033C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00300 809A0340 240700B3 */  addiu   $a3, $zero, 0x00B3         ## $a3 = 000000B3
/* 00304 809A0344 0C031AD5 */  jal     Graph_CloseDisps              
/* 00308 809A0348 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 0030C 809A034C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00310 809A0350 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00314 809A0354 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00318 809A0358 03E00008 */  jr      $ra                        
/* 0031C 809A035C 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
