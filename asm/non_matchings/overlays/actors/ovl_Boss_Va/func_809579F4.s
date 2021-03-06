glabel func_809579F4
/* 08734 809579F4 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 08738 809579F8 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 0873C 809579FC AFB10030 */  sw      $s1, 0x0030($sp)           
/* 08740 80957A00 AFB0002C */  sw      $s0, 0x002C($sp)           
/* 08744 80957A04 8C8F0118 */  lw      $t7, 0x0118($a0)           ## 00000118
/* 08748 80957A08 27AE0040 */  addiu   $t6, $sp, 0x0040           ## $t6 = FFFFFFF0
/* 0874C 80957A0C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 08750 80957A10 8DF901D8 */  lw      $t9, 0x01D8($t7)           ## 000001D8
/* 08754 80957A14 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 08758 80957A18 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 0875C 80957A1C ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 08760 80957A20 8DF801DC */  lw      $t8, 0x01DC($t7)           ## 000001DC
/* 08764 80957A24 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 08768 80957A28 8DF901E0 */  lw      $t9, 0x01E0($t7)           ## 000001E0
/* 0876C 80957A2C ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF8
/* 08770 80957A30 8C840118 */  lw      $a0, 0x0118($a0)           ## 00000118
/* 08774 80957A34 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 08778 80957A38 0C01E027 */  jal     Math_Vec3f_Pitch
              
/* 0877C 80957A3C 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 08780 80957A40 920802E9 */  lbu     $t0, 0x02E9($s0)           ## 000002E9
/* 08784 80957A44 A6020030 */  sh      $v0, 0x0030($s0)           ## 00000030
/* 08788 80957A48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0878C 80957A4C 31090002 */  andi    $t1, $t0, 0x0002           ## $t1 = 00000000
/* 08790 80957A50 11200005 */  beq     $t1, $zero, .L80957A68     
/* 08794 80957A54 00000000 */  nop
/* 08798 80957A58 0C253F1C */  jal     func_8094FC70              
/* 0879C 80957A5C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 087A0 80957A60 10000067 */  beq     $zero, $zero, .L80957C00   
/* 087A4 80957A64 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80957A68:
/* 087A8 80957A68 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 087AC 80957A6C 00000000 */  nop
/* 087B0 80957A70 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 087B4 80957A74 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 087B8 80957A78 C60401A4 */  lwc1    $f4, 0x01A4($s0)           ## 000001A4
/* 087BC 80957A7C 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 087C0 80957A80 46060202 */  mul.s   $f8, $f0, $f6              
/* 087C4 80957A84 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 087C8 80957A88 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 087CC 80957A8C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 087D0 80957A90 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 087D4 80957A94 46082280 */  add.s   $f10, $f4, $f8             
/* 087D8 80957A98 E60A01A4 */  swc1    $f10, 0x01A4($s0)          ## 000001A4
/* 087DC 80957A9C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 087E0 80957AA0 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 087E4 80957AA4 0C0329C8 */  jal     func_800CA720              
/* 087E8 80957AA8 C60C01A4 */  lwc1    $f12, 0x01A4($s0)          ## 000001A4
/* 087EC 80957AAC 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 087F0 80957AB0 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 087F4 80957AB4 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 087F8 80957AB8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 087FC 80957ABC 46060102 */  mul.s   $f4, $f0, $f6              
/* 08800 80957AC0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 08804 80957AC4 02212821 */  addu    $a1, $s1, $at              
/* 08808 80957AC8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0880C 80957ACC 260602D8 */  addiu   $a2, $s0, 0x02D8           ## $a2 = 000002D8
/* 08810 80957AD0 46049200 */  add.s   $f8, $f18, $f4             
/* 08814 80957AD4 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 08818 80957AD8 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 0881C 80957ADC 3C0A0001 */  lui     $t2, 0x0001                ## $t2 = 00010000
/* 08820 80957AE0 01515021 */  addu    $t2, $t2, $s1              
/* 08824 80957AE4 8D4A1DE4 */  lw      $t2, 0x1DE4($t2)           ## 00011DE4
/* 08828 80957AE8 260401F0 */  addiu   $a0, $s0, 0x01F0           ## $a0 = 000001F0
/* 0882C 80957AEC 24050028 */  addiu   $a1, $zero, 0x0028         ## $a1 = 00000028
/* 08830 80957AF0 314B0003 */  andi    $t3, $t2, 0x0003           ## $t3 = 00000000
/* 08834 80957AF4 15600016 */  bne     $t3, $zero, .L80957B50     
/* 08838 80957AF8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0883C 80957AFC 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
/* 08840 80957B00 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 08844 80957B04 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 08848 80957B08 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 0884C 80957B0C 44815000 */  mtc1    $at, $f10                  ## $f10 = 25.00
/* 08850 80957B10 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 08854 80957B14 44818000 */  mtc1    $at, $f16                  ## $f16 = 20.00
/* 08858 80957B18 860701F0 */  lh      $a3, 0x01F0($s0)           ## 000001F0
/* 0885C 80957B1C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 08860 80957B20 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 08864 80957B24 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 08868 80957B28 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 0886C 80957B2C AFAD0020 */  sw      $t5, 0x0020($sp)           
/* 08870 80957B30 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 08874 80957B34 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 08878 80957B38 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0887C 80957B3C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 08880 80957B40 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 08884 80957B44 E7B00014 */  swc1    $f16, 0x0014($sp)          
/* 08888 80957B48 0C253E19 */  jal     func_8094F864              
/* 0888C 80957B4C E7A6001C */  swc1    $f6, 0x001C($sp)           
.L80957B50:
/* 08890 80957B50 8E0E0198 */  lw      $t6, 0x0198($s0)           ## 00000198
/* 08894 80957B54 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFF0
/* 08898 80957B58 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 0889C 80957B5C AE0F0198 */  sw      $t7, 0x0198($s0)           ## 00000198
/* 088A0 80957B60 0C01E027 */  jal     Math_Vec3f_Pitch
              
/* 088A4 80957B64 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 088A8 80957B68 8E030198 */  lw      $v1, 0x0198($s0)           ## 00000198
/* 088AC 80957B6C A6020030 */  sh      $v0, 0x0030($s0)           ## 00000030
/* 088B0 80957B70 5C600023 */  bgtzl   $v1, .L80957C00            
/* 088B4 80957B74 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 088B8 80957B78 14600003 */  bne     $v1, $zero, .L80957B88     
/* 088BC 80957B7C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 088C0 80957B80 1000001E */  beq     $zero, $zero, .L80957BFC   
/* 088C4 80957B84 A600019C */  sh      $zero, 0x019C($s0)         ## 0000019C
.L80957B88:
/* 088C8 80957B88 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 088CC 80957B8C 44819000 */  mtc1    $at, $f18                  ## $f18 = 15.00
/* 088D0 80957B90 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 088D4 80957B94 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 088D8 80957B98 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 088DC 80957B9C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 088E0 80957BA0 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 088E4 80957BA4 AFB90020 */  sw      $t9, 0x0020($sp)           
/* 088E8 80957BA8 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 088EC 80957BAC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 088F0 80957BB0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 088F4 80957BB4 24070055 */  addiu   $a3, $zero, 0x0055         ## $a3 = 00000055
/* 088F8 80957BB8 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 088FC 80957BBC E7A8001C */  swc1    $f8, 0x001C($sp)           
/* 08900 80957BC0 0C253E19 */  jal     func_8094F864              
/* 08904 80957BC4 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 08908 80957BC8 8608019C */  lh      $t0, 0x019C($s0)           ## 0000019C
/* 0890C 80957BCC 240B0080 */  addiu   $t3, $zero, 0x0080         ## $t3 = 00000080
/* 08910 80957BD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 08914 80957BD4 29010010 */  slti    $at, $t0, 0x0010           
/* 08918 80957BD8 14200008 */  bne     $at, $zero, .L80957BFC     
/* 0891C 80957BDC 3C058095 */  lui     $a1, %hi(func_80956EE0)    ## $a1 = 80950000
/* 08920 80957BE0 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 08924 80957BE4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 08928 80957BE8 A60B019C */  sh      $t3, 0x019C($s0)           ## 0000019C
/* 0892C 80957BEC 01215024 */  and     $t2, $t1, $at              
/* 08930 80957BF0 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 08934 80957BF4 0C253CB0 */  jal     func_8094F2C0              
/* 08938 80957BF8 24A56EE0 */  addiu   $a1, $a1, %lo(func_80956EE0) ## $a1 = 80956EE0
.L80957BFC:
/* 0893C 80957BFC 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80957C00:
/* 08940 80957C00 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 08944 80957C04 8FB10030 */  lw      $s1, 0x0030($sp)           
/* 08948 80957C08 03E00008 */  jr      $ra                        
/* 0894C 80957C0C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
