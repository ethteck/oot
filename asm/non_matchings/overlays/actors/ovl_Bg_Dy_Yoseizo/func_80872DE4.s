.rdata 

glabel D_80875540
    .asciz "[33m☆☆☆☆☆ もうど ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_8087556C
    .asciz "[32m ☆☆☆☆☆ 回転切り速度ＵＰ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_808755A0
    .asciz "[33m ☆☆☆☆☆ 魔法ゲージメーター倍増 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_808755D8
    .asciz "[35m ☆☆☆☆☆ ダメージ半減 ☆☆☆☆☆ \n[m"
    .balign 4

.text
glabel func_80872DE4
/* 005B4 80872DE4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 005B8 80872DE8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 005BC 80872DEC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 005C0 80872DF0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 005C4 80872DF4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 005C8 80872DF8 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 005CC 80872DFC 0C00B7D5 */  jal     func_8002DF54              
/* 005D0 80872E00 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 005D4 80872E04 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 005D8 80872E08 3C050001 */  lui     $a1, 0x0001                ## $a1 = 00010000
/* 005DC 80872E0C 3C048087 */  lui     $a0, %hi(D_80875540)       ## $a0 = 80870000
/* 005E0 80872E10 00AE2821 */  addu    $a1, $a1, $t6              
/* 005E4 80872E14 94A504C6 */  lhu     $a1, 0x04C6($a1)           ## 000104C6
/* 005E8 80872E18 0C00084C */  jal     osSyncPrintf
              
/* 005EC 80872E1C 24845540 */  addiu   $a0, $a0, %lo(D_80875540)  ## $a0 = 80875540
/* 005F0 80872E20 8FAF0024 */  lw      $t7, 0x0024($sp)           
/* 005F4 80872E24 2401003B */  addiu   $at, $zero, 0x003B         ## $at = 0000003B
/* 005F8 80872E28 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 005FC 80872E2C 85F800A4 */  lh      $t8, 0x00A4($t7)           ## 000000A4
/* 00600 80872E30 8FA80020 */  lw      $t0, 0x0020($sp)           
/* 00604 80872E34 53010023 */  beql    $t8, $at, .L80872EC4       
/* 00608 80872E38 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 0060C 80872E3C 850202EC */  lh      $v0, 0x02EC($t0)           ## 000002EC
/* 00610 80872E40 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 00614 80872E44 24A5E660 */  addiu   $a1, $a1, 0xE660           ## $a1 = 8015E660
/* 00618 80872E48 10400009 */  beq     $v0, $zero, .L80872E70     
/* 0061C 80872E4C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00620 80872E50 1041000D */  beq     $v0, $at, .L80872E88       
/* 00624 80872E54 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 00628 80872E58 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0062C 80872E5C 10410011 */  beq     $v0, $at, .L80872EA4       
/* 00630 80872E60 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 00634 80872E64 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 00638 80872E68 10000054 */  beq     $zero, $zero, .L80872FBC   
/* 0063C 80872E6C 24A5E660 */  addiu   $a1, $a1, 0xE660           ## $a1 = 8015E660
.L80872E70:
/* 00640 80872E70 94B90EF2 */  lhu     $t9, 0x0EF2($a1)           ## 8015F552
/* 00644 80872E74 33290100 */  andi    $t1, $t9, 0x0100           ## $t1 = 00000000
/* 00648 80872E78 15200050 */  bne     $t1, $zero, .L80872FBC     
/* 0064C 80872E7C 00000000 */  nop
/* 00650 80872E80 1000004E */  beq     $zero, $zero, .L80872FBC   
/* 00654 80872E84 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80872E88:
/* 00658 80872E88 24A5E660 */  addiu   $a1, $a1, 0xE660           ## $a1 = 8015CCC0
/* 0065C 80872E8C 94AA0EF2 */  lhu     $t2, 0x0EF2($a1)           ## 8015DBB2
/* 00660 80872E90 314B0200 */  andi    $t3, $t2, 0x0200           ## $t3 = 00000000
/* 00664 80872E94 15600049 */  bne     $t3, $zero, .L80872FBC     
/* 00668 80872E98 00000000 */  nop
/* 0066C 80872E9C 10000047 */  beq     $zero, $zero, .L80872FBC   
/* 00670 80872EA0 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80872EA4:
/* 00674 80872EA4 24A5E660 */  addiu   $a1, $a1, 0xE660           ## $a1 = 8015B320
/* 00678 80872EA8 94AC0EF2 */  lhu     $t4, 0x0EF2($a1)           ## 8015C212
/* 0067C 80872EAC 318D0400 */  andi    $t5, $t4, 0x0400           ## $t5 = 00000000
/* 00680 80872EB0 15A00042 */  bne     $t5, $zero, .L80872FBC     
/* 00684 80872EB4 00000000 */  nop
/* 00688 80872EB8 10000040 */  beq     $zero, $zero, .L80872FBC   
/* 0068C 80872EBC 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00690 80872EC0 8FAE0020 */  lw      $t6, 0x0020($sp)           
.L80872EC4:
/* 00694 80872EC4 85C202EC */  lh      $v0, 0x02EC($t6)           ## 000002EC
/* 00698 80872EC8 1040000A */  beq     $v0, $zero, .L80872EF4     
/* 0069C 80872ECC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 006A0 80872ED0 1041001D */  beq     $v0, $at, .L80872F48       
/* 006A4 80872ED4 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 006A8 80872ED8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 006AC 80872EDC 10410029 */  beq     $v0, $at, .L80872F84       
/* 006B0 80872EE0 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 006B4 80872EE4 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 006B8 80872EE8 24A5E660 */  addiu   $a1, $a1, 0xE660           ## $a1 = 8015E660
/* 006BC 80872EEC 10000033 */  beq     $zero, $zero, .L80872FBC   
/* 006C0 80872EF0 01C04025 */  or      $t0, $t6, $zero            ## $t0 = 00000000
.L80872EF4:
/* 006C4 80872EF4 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 006C8 80872EF8 24A5E660 */  addiu   $a1, $a1, 0xE660           ## $a1 = 8015E660
/* 006CC 80872EFC 90AF003A */  lbu     $t7, 0x003A($a1)           ## 8015E69A
/* 006D0 80872F00 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 006D4 80872F04 3C048087 */  lui     $a0, %hi(D_8087556C)       ## $a0 = 80870000
/* 006D8 80872F08 11E00005 */  beq     $t7, $zero, .L80872F20     
/* 006DC 80872F0C 00000000 */  nop
/* 006E0 80872F10 8F18FA90 */  lw      $t8, -0x0570($t8)          ## 8015FA90
/* 006E4 80872F14 871912D8 */  lh      $t9, 0x12D8($t8)           ## 801612D8
/* 006E8 80872F18 13200009 */  beq     $t9, $zero, .L80872F40     
/* 006EC 80872F1C 00000000 */  nop
.L80872F20:
/* 006F0 80872F20 0C00084C */  jal     osSyncPrintf
              
/* 006F4 80872F24 2484556C */  addiu   $a0, $a0, %lo(D_8087556C)  ## $a0 = 8087556C
/* 006F8 80872F28 8FAA0020 */  lw      $t2, 0x0020($sp)           
/* 006FC 80872F2C 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 00700 80872F30 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00704 80872F34 24A5E660 */  addiu   $a1, $a1, 0xE660           ## $a1 = 8015E660
/* 00708 80872F38 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 0070C 80872F3C A54902EA */  sh      $t1, 0x02EA($t2)           ## 000002EA
.L80872F40:
/* 00710 80872F40 1000001E */  beq     $zero, $zero, .L80872FBC   
/* 00714 80872F44 8FA80020 */  lw      $t0, 0x0020($sp)           
.L80872F48:
/* 00718 80872F48 24A5E660 */  addiu   $a1, $a1, 0xE660           ## $a1 = 8015CCC0
/* 0071C 80872F4C 90AB003C */  lbu     $t3, 0x003C($a1)           ## 8015CCFC
/* 00720 80872F50 3C048087 */  lui     $a0, %hi(D_808755A0)       ## $a0 = 80870000
/* 00724 80872F54 15600009 */  bne     $t3, $zero, .L80872F7C     
/* 00728 80872F58 00000000 */  nop
/* 0072C 80872F5C 0C00084C */  jal     osSyncPrintf
              
/* 00730 80872F60 248455A0 */  addiu   $a0, $a0, %lo(D_808755A0)  ## $a0 = 808755A0
/* 00734 80872F64 8FAD0020 */  lw      $t5, 0x0020($sp)           
/* 00738 80872F68 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 0073C 80872F6C 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00740 80872F70 24A5E660 */  addiu   $a1, $a1, 0xE660           ## $a1 = 8015E660
/* 00744 80872F74 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00748 80872F78 A5AC02EA */  sh      $t4, 0x02EA($t5)           ## 000002EA
.L80872F7C:
/* 0074C 80872F7C 1000000F */  beq     $zero, $zero, .L80872FBC   
/* 00750 80872F80 8FA80020 */  lw      $t0, 0x0020($sp)           
.L80872F84:
/* 00754 80872F84 24A5E660 */  addiu   $a1, $a1, 0xE660           ## $a1 = 8015CCC0
/* 00758 80872F88 90AE003D */  lbu     $t6, 0x003D($a1)           ## 8015CCFD
/* 0075C 80872F8C 3C048087 */  lui     $a0, %hi(D_808755D8)       ## $a0 = 80870000
/* 00760 80872F90 55C0000A */  bnel    $t6, $zero, .L80872FBC     
/* 00764 80872F94 8FA80020 */  lw      $t0, 0x0020($sp)           
/* 00768 80872F98 0C00084C */  jal     osSyncPrintf
              
/* 0076C 80872F9C 248455D8 */  addiu   $a0, $a0, %lo(D_808755D8)  ## $a0 = 808755D8
/* 00770 80872FA0 8FB80020 */  lw      $t8, 0x0020($sp)           
/* 00774 80872FA4 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 00778 80872FA8 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0077C 80872FAC 24A5E660 */  addiu   $a1, $a1, 0xE660           ## $a1 = 8015E660
/* 00780 80872FB0 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00784 80872FB4 A70F02EA */  sh      $t7, 0x02EA($t8)           ## 000002EA
/* 00788 80872FB8 8FA80020 */  lw      $t0, 0x0020($sp)           
.L80872FBC:
/* 0078C 80872FBC 5060008F */  beql    $v1, $zero, .L808731FC     
/* 00790 80872FC0 8FAD0024 */  lw      $t5, 0x0024($sp)           
/* 00794 80872FC4 8CB91360 */  lw      $t9, 0x1360($a1)           ## 8015F9C0
/* 00798 80872FC8 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 0079C 80872FCC 2B210004 */  slti    $at, $t9, 0x0004           
/* 007A0 80872FD0 10200085 */  beq     $at, $zero, .L808731E8     
/* 007A4 80872FD4 00000000 */  nop
/* 007A8 80872FD8 852A00A4 */  lh      $t2, 0x00A4($t1)           ## 000000A4
/* 007AC 80872FDC 2401003B */  addiu   $at, $zero, 0x003B         ## $at = 0000003B
/* 007B0 80872FE0 850202EC */  lh      $v0, 0x02EC($t0)           ## 000002EC
/* 007B4 80872FE4 11410041 */  beq     $t2, $at, .L808730EC       
/* 007B8 80872FE8 00000000 */  nop
/* 007BC 80872FEC 10400009 */  beq     $v0, $zero, .L80873014     
/* 007C0 80872FF0 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 007C4 80872FF4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 007C8 80872FF8 10410018 */  beq     $v0, $at, .L8087305C       
/* 007CC 80872FFC 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 007D0 80873000 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 007D4 80873004 10410027 */  beq     $v0, $at, .L808730A4       
/* 007D8 80873008 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 007DC 8087300C 10000076 */  beq     $zero, $zero, .L808731E8   
/* 007E0 80873010 00000000 */  nop
.L80873014:
/* 007E4 80873014 3C020200 */  lui     $v0, 0x0200                ## $v0 = 02000000
/* 007E8 80873018 24420160 */  addiu   $v0, $v0, 0x0160           ## $v0 = 02000160
/* 007EC 8087301C 00025900 */  sll     $t3, $v0,  4               
/* 007F0 80873020 000B6702 */  srl     $t4, $t3, 28               
/* 007F4 80873024 000C6880 */  sll     $t5, $t4,  2               
/* 007F8 80873028 01CD7021 */  addu    $t6, $t6, $t5              
/* 007FC 8087302C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00800 80873030 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 00804 80873034 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00808 80873038 00417824 */  and     $t7, $v0, $at              
/* 0080C 8087303C 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 00810 80873040 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00814 80873044 01CFC021 */  addu    $t8, $t6, $t7              
/* 00818 80873048 0301C821 */  addu    $t9, $t8, $at              
/* 0081C 8087304C 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00820 80873050 AD391D68 */  sw      $t9, 0x1D68($t1)           ## 00001D68
/* 00824 80873054 10000064 */  beq     $zero, $zero, .L808731E8   
/* 00828 80873058 A0AA1414 */  sb      $t2, 0x1414($a1)           ## 8015FA74
.L8087305C:
/* 0082C 8087305C 3C020200 */  lui     $v0, 0x0200                ## $v0 = 02000000
/* 00830 80873060 24421020 */  addiu   $v0, $v0, 0x1020           ## $v0 = 02001020
/* 00834 80873064 00025900 */  sll     $t3, $v0,  4               
/* 00838 80873068 000B6702 */  srl     $t4, $t3, 28               
/* 0083C 8087306C 000C6880 */  sll     $t5, $t4,  2               
/* 00840 80873070 01CD7021 */  addu    $t6, $t6, $t5              
/* 00844 80873074 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00848 80873078 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 0084C 8087307C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00850 80873080 00417824 */  and     $t7, $v0, $at              
/* 00854 80873084 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 00858 80873088 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0085C 8087308C 01CFC021 */  addu    $t8, $t6, $t7              
/* 00860 80873090 0301C821 */  addu    $t9, $t8, $at              
/* 00864 80873094 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00868 80873098 AD391D68 */  sw      $t9, 0x1D68($t1)           ## 00001D68
/* 0086C 8087309C 10000052 */  beq     $zero, $zero, .L808731E8   
/* 00870 808730A0 A0AA1414 */  sb      $t2, 0x1414($a1)           ## 8015FA74
.L808730A4:
/* 00874 808730A4 3C020200 */  lui     $v0, 0x0200                ## $v0 = 02000000
/* 00878 808730A8 24421F40 */  addiu   $v0, $v0, 0x1F40           ## $v0 = 02001F40
/* 0087C 808730AC 00025900 */  sll     $t3, $v0,  4               
/* 00880 808730B0 000B6702 */  srl     $t4, $t3, 28               
/* 00884 808730B4 000C6880 */  sll     $t5, $t4,  2               
/* 00888 808730B8 01CD7021 */  addu    $t6, $t6, $t5              
/* 0088C 808730BC 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00890 808730C0 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 00894 808730C4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00898 808730C8 00417824 */  and     $t7, $v0, $at              
/* 0089C 808730CC 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 008A0 808730D0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 008A4 808730D4 01CFC021 */  addu    $t8, $t6, $t7              
/* 008A8 808730D8 0301C821 */  addu    $t9, $t8, $at              
/* 008AC 808730DC 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 008B0 808730E0 AD391D68 */  sw      $t9, 0x1D68($t1)           ## 00001D68
/* 008B4 808730E4 10000040 */  beq     $zero, $zero, .L808731E8   
/* 008B8 808730E8 A0AA1414 */  sb      $t2, 0x1414($a1)           ## 8015FA74
.L808730EC:
/* 008BC 808730EC 10400009 */  beq     $v0, $zero, .L80873114     
/* 008C0 808730F0 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 008C4 808730F4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 008C8 808730F8 10410018 */  beq     $v0, $at, .L8087315C       
/* 008CC 808730FC 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 008D0 80873100 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 008D4 80873104 10410027 */  beq     $v0, $at, .L808731A4       
/* 008D8 80873108 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 008DC 8087310C 10000036 */  beq     $zero, $zero, .L808731E8   
/* 008E0 80873110 00000000 */  nop
.L80873114:
/* 008E4 80873114 3C020200 */  lui     $v0, 0x0200                ## $v0 = 02000000
/* 008E8 80873118 24420130 */  addiu   $v0, $v0, 0x0130           ## $v0 = 02000130
/* 008EC 8087311C 00025900 */  sll     $t3, $v0,  4               
/* 008F0 80873120 000B6702 */  srl     $t4, $t3, 28               
/* 008F4 80873124 000C6880 */  sll     $t5, $t4,  2               
/* 008F8 80873128 01CD7021 */  addu    $t6, $t6, $t5              
/* 008FC 8087312C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00900 80873130 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 00904 80873134 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00908 80873138 00417824 */  and     $t7, $v0, $at              
/* 0090C 8087313C 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 00910 80873140 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00914 80873144 01CFC021 */  addu    $t8, $t6, $t7              
/* 00918 80873148 0301C821 */  addu    $t9, $t8, $at              
/* 0091C 8087314C 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00920 80873150 AD391D68 */  sw      $t9, 0x1D68($t1)           ## 00001D68
/* 00924 80873154 10000024 */  beq     $zero, $zero, .L808731E8   
/* 00928 80873158 A0AA1414 */  sb      $t2, 0x1414($a1)           ## 8015FA74
.L8087315C:
/* 0092C 8087315C 3C020200 */  lui     $v0, 0x0200                ## $v0 = 02000000
/* 00930 80873160 244213E0 */  addiu   $v0, $v0, 0x13E0           ## $v0 = 020013E0
/* 00934 80873164 00025900 */  sll     $t3, $v0,  4               
/* 00938 80873168 000B6702 */  srl     $t4, $t3, 28               
/* 0093C 8087316C 000C6880 */  sll     $t5, $t4,  2               
/* 00940 80873170 01CD7021 */  addu    $t6, $t6, $t5              
/* 00944 80873174 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00948 80873178 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 0094C 8087317C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00950 80873180 00417824 */  and     $t7, $v0, $at              
/* 00954 80873184 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 00958 80873188 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0095C 8087318C 01CFC021 */  addu    $t8, $t6, $t7              
/* 00960 80873190 0301C821 */  addu    $t9, $t8, $at              
/* 00964 80873194 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00968 80873198 AD391D68 */  sw      $t9, 0x1D68($t1)           ## 00001D68
/* 0096C 8087319C 10000012 */  beq     $zero, $zero, .L808731E8   
/* 00970 808731A0 A0AA1414 */  sb      $t2, 0x1414($a1)           ## 8015FA74
.L808731A4:
/* 00974 808731A4 3C020200 */  lui     $v0, 0x0200                ## $v0 = 02000000
/* 00978 808731A8 244225D0 */  addiu   $v0, $v0, 0x25D0           ## $v0 = 020025D0
/* 0097C 808731AC 00025900 */  sll     $t3, $v0,  4               
/* 00980 808731B0 000B6702 */  srl     $t4, $t3, 28               
/* 00984 808731B4 000C6880 */  sll     $t5, $t4,  2               
/* 00988 808731B8 01CD7021 */  addu    $t6, $t6, $t5              
/* 0098C 808731BC 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00990 808731C0 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 00994 808731C4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00998 808731C8 00417824 */  and     $t7, $v0, $at              
/* 0099C 808731CC 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 009A0 808731D0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 009A4 808731D4 01CFC021 */  addu    $t8, $t6, $t7              
/* 009A8 808731D8 0301C821 */  addu    $t9, $t8, $at              
/* 009AC 808731DC 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 009B0 808731E0 AD391D68 */  sw      $t9, 0x1D68($t1)           ## 00001D68
/* 009B4 808731E4 A0AA1414 */  sb      $t2, 0x1414($a1)           ## 8015FA74
.L808731E8:
/* 009B8 808731E8 3C0B8087 */  lui     $t3, %hi(func_80873EA4)    ## $t3 = 80870000
/* 009BC 808731EC 256B3EA4 */  addiu   $t3, $t3, %lo(func_80873EA4) ## $t3 = 80873EA4
/* 009C0 808731F0 10000022 */  beq     $zero, $zero, .L8087327C   
/* 009C4 808731F4 AD0B014C */  sw      $t3, 0x014C($t0)           ## 0000014C
/* 009C8 808731F8 8FAD0024 */  lw      $t5, 0x0024($sp)           
.L808731FC:
/* 009CC 808731FC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 009D0 80873200 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 009D4 80873204 002D0821 */  addu    $at, $at, $t5              
/* 009D8 80873208 A02C0AE3 */  sb      $t4, 0x0AE3($at)           ## 00010AE3
/* 009DC 8087320C 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 009E0 80873210 2401003B */  addiu   $at, $zero, 0x003B         ## $at = 0000003B
/* 009E4 80873214 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 009E8 80873218 85CF00A4 */  lh      $t7, 0x00A4($t6)           ## 801600A4
/* 009EC 8087321C 2405219C */  addiu   $a1, $zero, 0x219C         ## $a1 = 0000219C
/* 009F0 80873220 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 009F4 80873224 15E10009 */  bne     $t7, $at, .L8087324C       
/* 009F8 80873228 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 009FC 8087322C 01C02025 */  or      $a0, $t6, $zero            ## $a0 = 80160000
/* 00A00 80873230 2405219B */  addiu   $a1, $zero, 0x219B         ## $a1 = 0000219B
/* 00A04 80873234 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 00A08 80873238 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00A0C 8087323C 0C02003E */  jal     func_800800F8              
/* 00A10 80873240 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00A14 80873244 10000004 */  beq     $zero, $zero, .L80873258   
/* 00A18 80873248 8FA40020 */  lw      $a0, 0x0020($sp)           
.L8087324C:
/* 00A1C 8087324C 0C02003E */  jal     func_800800F8              
/* 00A20 80873250 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00A24 80873254 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80873258:
/* 00A28 80873258 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00A2C 8087325C 2405287F */  addiu   $a1, $zero, 0x287F         ## $a1 = 0000287F
/* 00A30 80873260 8FA20020 */  lw      $v0, 0x0020($sp)           
/* 00A34 80873264 3C188087 */  lui     $t8, %hi(func_80874BE0)    ## $t8 = 80870000
/* 00A38 80873268 3C198087 */  lui     $t9, %hi(func_8087328C)    ## $t9 = 80870000
/* 00A3C 8087326C 27184BE0 */  addiu   $t8, $t8, %lo(func_80874BE0) ## $t8 = 80874BE0
/* 00A40 80873270 2739328C */  addiu   $t9, $t9, %lo(func_8087328C) ## $t9 = 8087328C
/* 00A44 80873274 AC580134 */  sw      $t8, 0x0134($v0)           ## 00000134
/* 00A48 80873278 AC59014C */  sw      $t9, 0x014C($v0)           ## 0000014C
.L8087327C:
/* 00A4C 8087327C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A50 80873280 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00A54 80873284 03E00008 */  jr      $ra                        
/* 00A58 80873288 00000000 */  nop
