glabel func_80B97630
/* 00A90 80B97630 3C0E80B9 */  lui     $t6, %hi(func_80B97648)    ## $t6 = 80B90000
/* 00A94 80B97634 25CE7648 */  addiu   $t6, $t6, %lo(func_80B97648) ## $t6 = 80B97648
/* 00A98 80B97638 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 00A9C 80B9763C AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 00AA0 80B97640 03E00008 */  jr      $ra                        
/* 00AA4 80B97644 A48F01B2 */  sh      $t7, 0x01B2($a0)           ## 000001B2
