glabel func_80984DB8
/* 001D8 80984DB8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 001DC 80984DBC AFA40038 */  sw      $a0, 0x0038($sp)           
/* 001E0 80984DC0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 001E4 80984DC4 248402DC */  addiu   $a0, $a0, 0x02DC           ## $a0 = 000002DC
/* 001E8 80984DC8 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 001EC 80984DCC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 001F0 80984DD0 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 001F4 80984DD4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 001F8 80984DD8 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 001FC 80984DDC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00200 80984DE0 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00204 80984DE4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00208 80984DE8 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 0020C 80984DEC AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00210 80984DF0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00214 80984DF4 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00218 80984DF8 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 0021C 80984DFC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00220 80984E00 24840002 */  addiu   $a0, $a0, 0x0002           ## $a0 = 00000002
/* 00224 80984E04 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 00228 80984E08 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 0022C 80984E0C AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00230 80984E10 248402E2 */  addiu   $a0, $a0, 0x02E2           ## $a0 = 000002E2
/* 00234 80984E14 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00238 80984E18 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0023C 80984E1C 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00240 80984E20 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00244 80984E24 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00248 80984E28 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0024C 80984E2C 24190064 */  addiu   $t9, $zero, 0x0064         ## $t9 = 00000064
/* 00250 80984E30 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00254 80984E34 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00258 80984E38 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 0025C 80984E3C 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00260 80984E40 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00264 80984E44 24840002 */  addiu   $a0, $a0, 0x0002           ## $a0 = 00000002
/* 00268 80984E48 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0026C 80984E4C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00270 80984E50 03E00008 */  jr      $ra                        
/* 00274 80984E54 00000000 */  nop
