glabel func_80865054
/* 00154 80865054 ACA4011C */  sw      $a0, 0x011C($a1)           ## 0000011C
/* 00158 80865058 ACA403AC */  sw      $a0, 0x03AC($a1)           ## 000003AC
/* 0015C 8086505C 8C8E011C */  lw      $t6, 0x011C($a0)           ## 0000011C
/* 00160 80865060 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00164 80865064 11C00005 */  beq     $t6, $zero, .L8086507C     
/* 00168 80865068 00000000 */  nop
/* 0016C 8086506C ACA00118 */  sw      $zero, 0x0118($a1)         ## 00000118
/* 00170 80865070 AC80011C */  sw      $zero, 0x011C($a0)         ## 0000011C
/* 00174 80865074 03E00008 */  jr      $ra                        
/* 00178 80865078 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8086507C:
/* 0017C 8086507C 03E00008 */  jr      $ra                        
/* 00180 80865080 00000000 */  nop
