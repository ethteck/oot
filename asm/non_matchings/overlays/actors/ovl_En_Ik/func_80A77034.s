glabel func_80A77034
/* 02D24 80A77034 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02D28 80A77038 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 02D2C 80A7703C 44810000 */  mtc1    $at, $f0                   ## $f0 = 30.00
/* 02D30 80A77040 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02D34 80A77044 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 02D38 80A77048 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02D3C 80A7704C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02D40 80A77050 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 02D44 80A77054 44070000 */  mfc1    $a3, $f0                   
/* 02D48 80A77058 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 02D4C 80A7705C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02D50 80A77060 3C064296 */  lui     $a2, 0x4296                ## $a2 = 42960000
/* 02D54 80A77064 0C00B92D */  jal     func_8002E4B4              
/* 02D58 80A77068 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 02D5C 80A7706C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02D60 80A77070 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02D64 80A77074 03E00008 */  jr      $ra                        
/* 02D68 80A77078 00000000 */  nop
