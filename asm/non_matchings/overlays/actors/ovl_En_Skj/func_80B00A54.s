glabel func_80B00A54
/* 027A4 80B00A54 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 027A8 80B00A58 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 027AC 80B00A5C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 027B0 80B00A60 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 027B4 80B00A64 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 027B8 80B00A68 8CB01C44 */  lw      $s0, 0x1C44($a1)           ## 00001C44
/* 027BC 80B00A6C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 027C0 80B00A70 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 027C4 80B00A74 0C2BFA3B */  jal     func_80AFE8EC              
/* 027C8 80B00A78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 027CC 80B00A7C 1040001E */  beq     $v0, $zero, .L80B00AF8     
/* 027D0 80B00A80 3C0380B0 */  lui     $v1, %hi(D_80B01648)       ## $v1 = 80B00000
/* 027D4 80B00A84 24631648 */  addiu   $v1, $v1, %lo(D_80B01648)  ## $v1 = 80B01648
/* 027D8 80B00A88 8C6F0004 */  lw      $t7, 0x0004($v1)           ## 80B0164C
/* 027DC 80B00A8C 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 027E0 80B00A90 3C010200 */  lui     $at, 0x0200                ## $at = 02000000
/* 027E4 80B00A94 A1E402D7 */  sb      $a0, 0x02D7($t7)           ## 000002D7
/* 027E8 80B00A98 8C78000C */  lw      $t8, 0x000C($v1)           ## 80B01654
/* 027EC 80B00A9C 3C0A80B0 */  lui     $t2, %hi(func_80B00B0C)    ## $t2 = 80B00000
/* 027F0 80B00AA0 254A0B0C */  addiu   $t2, $t2, %lo(func_80B00B0C) ## $t2 = 80B00B0C
/* 027F4 80B00AA4 A30402D7 */  sb      $a0, 0x02D7($t8)           ## 000002D7
/* 027F8 80B00AA8 8E020680 */  lw      $v0, 0x0680($s0)           ## 00000680
/* 027FC 80B00AAC 24040004 */  addiu   $a0, $zero, 0x0004         ## $a0 = 00000004
/* 02800 80B00AB0 0002C9C0 */  sll     $t9, $v0,  7               
/* 02804 80B00AB4 0721000F */  bgez    $t9, .L80B00AF4            
/* 02808 80B00AB8 00414025 */  or      $t0, $v0, $at              ## $t0 = 02000000
/* 0280C 80B00ABC 0C03D6FC */  jal     func_800F5BF0              
/* 02810 80B00AC0 AE080680 */  sw      $t0, 0x0680($s0)           ## 00000680
/* 02814 80B00AC4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02818 80B00AC8 0C2C0282 */  jal     func_80B00A08              
/* 0281C 80B00ACC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02820 80B00AD0 AE1106A8 */  sw      $s1, 0x06A8($s0)           ## 000006A8
/* 02824 80B00AD4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02828 80B00AD8 240510BE */  addiu   $a1, $zero, 0x10BE         ## $a1 = 000010BE
/* 0282C 80B00ADC 0C042DA0 */  jal     func_8010B680              
/* 02830 80B00AE0 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 02834 80B00AE4 3C0980B0 */  lui     $t1, %hi(func_80B00BB0)    ## $t1 = 80B00000
/* 02838 80B00AE8 25290BB0 */  addiu   $t1, $t1, %lo(func_80B00BB0) ## $t1 = 80B00BB0
/* 0283C 80B00AEC 10000002 */  beq     $zero, $zero, .L80B00AF8   
/* 02840 80B00AF0 AE290274 */  sw      $t1, 0x0274($s1)           ## 00000274
.L80B00AF4:
/* 02844 80B00AF4 AE2A0274 */  sw      $t2, 0x0274($s1)           ## 00000274
.L80B00AF8:
/* 02848 80B00AF8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0284C 80B00AFC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 02850 80B00B00 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 02854 80B00B04 03E00008 */  jr      $ra                        
/* 02858 80B00B08 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
