glabel func_80933064
/* 06A94 80933064 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 06A98 80933068 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 06A9C 8093306C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 06AA0 80933070 84EE001C */  lh      $t6, 0x001C($a3)           ## 0000001C
/* 06AA4 80933074 3C058093 */  lui     $a1, %hi(D_80937854)       ## $a1 = 80930000
/* 06AA8 80933078 AFA70018 */  sw      $a3, 0x0018($sp)
/* 06AAC 8093307C 000E7880 */  sll     $t7, $t6,  2
/* 06AB0 80933080 00AF2821 */  addu    $a1, $a1, $t7
/* 06AB4 80933084 8CA57854 */  lw      $a1, %lo(D_80937854)($a1)
/* 06AB8 80933088 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 06ABC 8093308C 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 06AC0 80933090 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 06AC4 80933094 8FA70018 */  lw      $a3, 0x0018($sp)
/* 06AC8 80933098 3C188093 */  lui     $t8, %hi(func_809330B4)    ## $t8 = 80930000
/* 06ACC 8093309C 271830B4 */  addiu   $t8, $t8, %lo(func_809330B4) ## $t8 = 809330B4
/* 06AD0 809330A0 ACF80190 */  sw      $t8, 0x0190($a3)           ## 00000190
/* 06AD4 809330A4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 06AD8 809330A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 06ADC 809330AC 03E00008 */  jr      $ra
/* 06AE0 809330B0 00000000 */  nop
