glabel func_808064F4
/* 027B4 808064F4 27BDFFF0 */  addiu   $sp, $sp, 0xFFF0           ## $sp = FFFFFFF0
/* 027B8 808064F8 3C030001 */  lui     $v1, 0x0001                ## $v1 = 00010000
/* 027BC 808064FC 34638000 */  ori     $v1, $v1, 0x8000           ## $v1 = 00018000
/* 027C0 80806500 AFB1000C */  sw      $s1, 0x000C($sp)           
/* 027C4 80806504 AFB00008 */  sw      $s0, 0x0008($sp)           
/* 027C8 80806508 00831021 */  addu    $v0, $a0, $v1              
/* 027CC 8080650C 84464A38 */  lh      $a2, 0x4A38($v0)           ## 00004A38
/* 027D0 80806510 3C058081 */  lui     $a1, %hi(D_80812480)       ## $a1 = 80810000
/* 027D4 80806514 24A52480 */  addiu   $a1, $a1, %lo(D_80812480)  ## $a1 = 80812480
/* 027D8 80806518 00063040 */  sll     $a2, $a2,  1               
/* 027DC 8080651C 00867021 */  addu    $t6, $a0, $a2              
/* 027E0 80806520 01C33821 */  addu    $a3, $t6, $v1              
/* 027E4 80806524 00A67821 */  addu    $t7, $a1, $a2              
/* 027E8 80806528 85E90000 */  lh      $t1, 0x0000($t7)           ## 00000000
/* 027EC 8080652C 84E84A52 */  lh      $t0, 0x4A52($a3)           ## 00004A52
/* 027F0 80806530 24100044 */  addiu   $s0, $zero, 0x0044         ## $s0 = 00000044
/* 027F4 80806534 24110041 */  addiu   $s1, $zero, 0x0041         ## $s1 = 00000041
/* 027F8 80806538 01095023 */  subu    $t2, $t0, $t1              
/* 027FC 8080653C 05400003 */  bltz    $t2, .L8080654C            
/* 02800 80806540 240D004C */  addiu   $t5, $zero, 0x004C         ## $t5 = 0000004C
/* 02804 80806544 10000002 */  beq     $zero, $zero, .L80806550   
/* 02808 80806548 01403025 */  or      $a2, $t2, $zero            ## $a2 = 00000000
.L8080654C:
/* 0280C 8080654C 000A3023 */  subu    $a2, $zero, $t2            
.L80806550:
/* 02810 80806550 84584A50 */  lh      $t8, 0x4A50($v0)           ## 00004A50
/* 02814 80806554 240C0045 */  addiu   $t4, $zero, 0x0045         ## $t4 = 00000045
/* 02818 80806558 3C0B8013 */  lui     $t3, 0x8013                ## $t3 = 80130000
/* 0281C 8080655C 00D8001A */  div     $zero, $a2, $t8            
/* 02820 80806560 17000002 */  bne     $t8, $zero, .L8080656C     
/* 02824 80806564 00000000 */  nop
/* 02828 80806568 0007000D */  break 7
.L8080656C:
/* 0282C 8080656C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 02830 80806570 17010004 */  bne     $t8, $at, .L80806584       
/* 02834 80806574 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02838 80806578 14C10002 */  bne     $a2, $at, .L80806584       
/* 0283C 8080657C 00000000 */  nop
/* 02840 80806580 0006000D */  break 6
.L80806584:
/* 02844 80806584 00005012 */  mflo    $t2                        
/* 02848 80806588 000A5400 */  sll     $t2, $t2, 16               
/* 0284C 8080658C 0109082A */  slt     $at, $t0, $t1              
/* 02850 80806590 14200004 */  bne     $at, $zero, .L808065A4     
/* 02854 80806594 000A5403 */  sra     $t2, $t2, 16               
/* 02858 80806598 010AC823 */  subu    $t9, $t0, $t2              
/* 0285C 8080659C 10000003 */  beq     $zero, $zero, .L808065AC   
/* 02860 808065A0 A4F94A52 */  sh      $t9, 0x4A52($a3)           ## 00004A52
.L808065A4:
/* 02864 808065A4 010A7021 */  addu    $t6, $t0, $t2              
/* 02868 808065A8 A4EE4A52 */  sh      $t6, 0x4A52($a3)           ## 00004A52
.L808065AC:
/* 0286C 808065AC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02870 808065B0 256BA4E0 */  addiu   $t3, $t3, 0xA4E0           ## $t3 = 8012A4E0
/* 02874 808065B4 240A005A */  addiu   $t2, $zero, 0x005A         ## $t2 = 0000005A
/* 02878 808065B8 844F4A38 */  lh      $t7, 0x4A38($v0)           ## 00004A38
.L808065BC:
/* 0287C 808065BC 00063840 */  sll     $a3, $a2,  1               
/* 02880 808065C0 0087C021 */  addu    $t8, $a0, $a3              
/* 02884 808065C4 10CF0020 */  beq     $a2, $t7, .L80806648       
/* 02888 808065C8 03034021 */  addu    $t0, $t8, $v1              
/* 0288C 808065CC 85194A74 */  lh      $t9, 0x4A74($t0)           ## 00004A74
/* 02890 808065D0 01677821 */  addu    $t7, $t3, $a3              
/* 02894 808065D4 272E0019 */  addiu   $t6, $t9, 0x0019           ## $t6 = 00000019
/* 02898 808065D8 A50E4A74 */  sh      $t6, 0x4A74($t0)           ## 00004A74
/* 0289C 808065DC 8C9901E0 */  lw      $t9, 0x01E0($a0)           ## 000001E0
/* 028A0 808065E0 95F80000 */  lhu     $t8, 0x0000($t7)           ## 00000000
/* 028A4 808065E4 03194821 */  addu    $t1, $t8, $t9              
/* 028A8 808065E8 912E001C */  lbu     $t6, 0x001C($t1)           ## 0000001C
/* 028AC 808065EC 514E0011 */  beql    $t2, $t6, .L80806634       
/* 028B0 808065F0 85074A74 */  lh      $a3, 0x4A74($t0)           ## 00004A74
/* 028B4 808065F4 912F001D */  lbu     $t7, 0x001D($t1)           ## 0000001D
/* 028B8 808065F8 518F000E */  beql    $t4, $t7, .L80806634       
/* 028BC 808065FC 85074A74 */  lh      $a3, 0x4A74($t0)           ## 00004A74
/* 028C0 80806600 9138001E */  lbu     $t8, 0x001E($t1)           ## 0000001E
/* 028C4 80806604 51B8000B */  beql    $t5, $t8, .L80806634       
/* 028C8 80806608 85074A74 */  lh      $a3, 0x4A74($t0)           ## 00004A74
/* 028CC 8080660C 9139001F */  lbu     $t9, 0x001F($t1)           ## 0000001F
/* 028D0 80806610 52190008 */  beql    $s0, $t9, .L80806634       
/* 028D4 80806614 85074A74 */  lh      $a3, 0x4A74($t0)           ## 00004A74
/* 028D8 80806618 912E0020 */  lbu     $t6, 0x0020($t1)           ## 00000020
/* 028DC 8080661C 522E0005 */  beql    $s1, $t6, .L80806634       
/* 028E0 80806620 85074A74 */  lh      $a3, 0x4A74($t0)           ## 00004A74
/* 028E4 80806624 912F0021 */  lbu     $t7, 0x0021($t1)           ## 00000021
/* 028E8 80806628 554F0008 */  bnel    $t2, $t7, .L8080664C       
/* 028EC 8080662C 24C60001 */  addiu   $a2, $a2, 0x0001           ## $a2 = 00000001
/* 028F0 80806630 85074A74 */  lh      $a3, 0x4A74($t0)           ## 00004A74
.L80806634:
/* 028F4 80806634 85184A86 */  lh      $t8, 0x4A86($t0)           ## 00004A86
/* 028F8 80806638 A5074A80 */  sh      $a3, 0x4A80($t0)           ## 00004A80
/* 028FC 8080663C 2719001F */  addiu   $t9, $t8, 0x001F           ## $t9 = 0000001F
/* 02900 80806640 A5194A86 */  sh      $t9, 0x4A86($t0)           ## 00004A86
/* 02904 80806644 A5074A7A */  sh      $a3, 0x4A7A($t0)           ## 00004A7A
.L80806648:
/* 02908 80806648 24C60001 */  addiu   $a2, $a2, 0x0001           ## $a2 = 00000002
.L8080664C:
/* 0290C 8080664C 00063400 */  sll     $a2, $a2, 16               
/* 02910 80806650 00063403 */  sra     $a2, $a2, 16               
/* 02914 80806654 28C10003 */  slti    $at, $a2, 0x0003           
/* 02918 80806658 5420FFD8 */  bnel    $at, $zero, .L808065BC     
/* 0291C 8080665C 844F4A38 */  lh      $t7, 0x4A38($v0)           ## 00004A38
/* 02920 80806660 844E4A6E */  lh      $t6, 0x4A6E($v0)           ## 00004A6E
/* 02924 80806664 84584A70 */  lh      $t8, 0x4A70($v0)           ## 00004A70
/* 02928 80806668 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0292C 8080666C 25CFFFE1 */  addiu   $t7, $t6, 0xFFE1           ## $t7 = FFFFFFFA
/* 02930 80806670 844E4A50 */  lh      $t6, 0x4A50($v0)           ## 00004A50
/* 02934 80806674 A44F4A6E */  sh      $t7, 0x4A6E($v0)           ## 00004A6E
/* 02938 80806678 2719001F */  addiu   $t9, $t8, 0x001F           ## $t9 = 0000001F
/* 0293C 8080667C A4594A70 */  sh      $t9, 0x4A70($v0)           ## 00004A70
/* 02940 80806680 00240821 */  addu    $at, $at, $a0              
/* 02944 80806684 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = 00000018
/* 02948 80806688 A42FCA50 */  sh      $t7, -0x35B0($at)          ## 0001CA50
/* 0294C 8080668C 84584A50 */  lh      $t8, 0x4A50($v0)           ## 00004A50
/* 02950 80806690 5700001C */  bnel    $t8, $zero, .L80806704     
/* 02954 80806694 8FB00008 */  lw      $s0, 0x0008($sp)           
/* 02958 80806698 84464A38 */  lh      $a2, 0x4A38($v0)           ## 00004A38
/* 0295C 8080669C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 02960 808066A0 00240821 */  addu    $at, $at, $a0              
/* 02964 808066A4 00063040 */  sll     $a2, $a2,  1               
/* 02968 808066A8 00A6C821 */  addu    $t9, $a1, $a2              
/* 0296C 808066AC 872E0000 */  lh      $t6, 0x0000($t9)           ## 0000001F
/* 02970 808066B0 00867821 */  addu    $t7, $a0, $a2              
/* 02974 808066B4 01E3C021 */  addu    $t8, $t7, $v1              
/* 02978 808066B8 24190008 */  addiu   $t9, $zero, 0x0008         ## $t9 = 00000008
/* 0297C 808066BC A70E4A52 */  sh      $t6, 0x4A52($t8)           ## 00004A52
/* 02980 808066C0 A439CA50 */  sh      $t9, -0x35B0($at)          ## 0001CA50
/* 02984 808066C4 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 02988 808066C8 00240821 */  addu    $at, $at, $a0              
/* 0298C 808066CC 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 02990 808066D0 A42FCA38 */  sh      $t7, -0x35C8($at)          ## 0001CA38
/* 02994 808066D4 844E4A66 */  lh      $t6, 0x4A66($v0)           ## 00004A66
/* 02998 808066D8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0299C 808066DC 00240821 */  addu    $at, $at, $a0              
/* 029A0 808066E0 A42ECA64 */  sh      $t6, -0x359C($at)          ## 0001CA64
/* 029A4 808066E4 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 029A8 808066E8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 029AC 808066EC A4584A6E */  sh      $t8, 0x4A6E($v0)           ## 00004A6E
/* 029B0 808066F0 A4404A70 */  sh      $zero, 0x4A70($v0)         ## 00004A70
/* 029B4 808066F4 00240821 */  addu    $at, $at, $a0              
/* 029B8 808066F8 24190015 */  addiu   $t9, $zero, 0x0015         ## $t9 = 00000015
/* 029BC 808066FC A439CA3E */  sh      $t9, -0x35C2($at)          ## 0001CA3E
/* 029C0 80806700 8FB00008 */  lw      $s0, 0x0008($sp)           
.L80806704:
/* 029C4 80806704 8FB1000C */  lw      $s1, 0x000C($sp)           
/* 029C8 80806708 03E00008 */  jr      $ra                        
/* 029CC 8080670C 27BD0010 */  addiu   $sp, $sp, 0x0010           ## $sp = 00000000
