.late_rodata
glabel D_8095C6C0
    .float 0.1

glabel D_8095C6C4
    .float 0.1

glabel D_8095C6C8
    .float 0.05

glabel D_8095C6CC
 .word 0x3983126F

.text
glabel func_80951C04
/* 02944 80951C04 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 02948 80951C08 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 0294C 80951C0C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 02950 80951C10 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 02954 80951C14 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 02958 80951C18 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0295C 80951C1C AFAF0054 */  sw      $t7, 0x0054($sp)           
/* 02960 80951C20 90980114 */  lbu     $t8, 0x0114($a0)           ## 00000114
/* 02964 80951C24 17000016 */  bne     $t8, $zero, .L80951C80     
/* 02968 80951C28 3C088096 */  lui     $t0, %hi(D_8096693E)       ## $t0 = 80960000
/* 0296C 80951C2C 2508693E */  addiu   $t0, $t0, %lo(D_8096693E)  ## $t0 = 8096693E
/* 02970 80951C30 95190000 */  lhu     $t9, 0x0000($t0)           ## 8096693E
/* 02974 80951C34 240F0010 */  addiu   $t7, $zero, 0x0010         ## $t7 = 00000010
/* 02978 80951C38 27290001 */  addiu   $t1, $t9, 0x0001           ## $t1 = 00000001
/* 0297C 80951C3C A5090000 */  sh      $t1, 0x0000($t0)           ## 8096693E
/* 02980 80951C40 808A0196 */  lb      $t2, 0x0196($a0)           ## 00000196
/* 02984 80951C44 5140000E */  beql    $t2, $zero, .L80951C80     
/* 02988 80951C48 AE0F02AC */  sw      $t7, 0x02AC($s0)           ## 000002AC
/* 0298C 80951C4C 948B0112 */  lhu     $t3, 0x0112($a0)           ## 00000112
/* 02990 80951C50 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02994 80951C54 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 02998 80951C58 316C4000 */  andi    $t4, $t3, 0x4000           ## $t4 = 00000000
/* 0299C 80951C5C 11800007 */  beq     $t4, $zero, .L80951C7C     
/* 029A0 80951C60 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 029A4 80951C64 240D00A0 */  addiu   $t5, $zero, 0x00A0         ## $t5 = 000000A0
/* 029A8 80951C68 0C00D09B */  jal     func_8003426C              
/* 029AC 80951C6C AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 029B0 80951C70 820E0196 */  lb      $t6, 0x0196($s0)           ## 00000196
/* 029B4 80951C74 10000002 */  beq     $zero, $zero, .L80951C80   
/* 029B8 80951C78 A20E0114 */  sb      $t6, 0x0114($s0)           ## 00000114
.L80951C7C:
/* 029BC 80951C7C AE0F02AC */  sw      $t7, 0x02AC($s0)           ## 000002AC
.L80951C80:
/* 029C0 80951C80 9202029D */  lbu     $v0, 0x029D($s0)           ## 0000029D
/* 029C4 80951C84 3C088096 */  lui     $t0, %hi(D_8096693E)       ## $t0 = 80960000
/* 029C8 80951C88 2508693E */  addiu   $t0, $t0, %lo(D_8096693E)  ## $t0 = 8096693E
/* 029CC 80951C8C 30580002 */  andi    $t8, $v0, 0x0002           ## $t8 = 00000000
/* 029D0 80951C90 53000034 */  beql    $t8, $zero, .L80951D64     
/* 029D4 80951C94 9202029C */  lbu     $v0, 0x029C($s0)           ## 0000029C
/* 029D8 80951C98 8E090294 */  lw      $t1, 0x0294($s0)           ## 00000294
/* 029DC 80951C9C 3059FFFD */  andi    $t9, $v0, 0xFFFD           ## $t9 = 00000000
/* 029E0 80951CA0 A219029D */  sb      $t9, 0x029D($s0)           ## 0000029D
/* 029E4 80951CA4 852A0000 */  lh      $t2, 0x0000($t1)           ## 00000000
/* 029E8 80951CA8 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 029EC 80951CAC 3C028096 */  lui     $v0, %hi(D_8095C22C)       ## $v0 = 80960000
/* 029F0 80951CB0 1541000F */  bne     $t2, $at, .L80951CF0       
/* 029F4 80951CB4 2442C22C */  addiu   $v0, $v0, %lo(D_8095C22C)  ## $v0 = 8095C22C
/* 029F8 80951CB8 950B0000 */  lhu     $t3, 0x0000($t0)           ## 8096693E
/* 029FC 80951CBC 240D00A0 */  addiu   $t5, $zero, 0x00A0         ## $t5 = 000000A0
/* 02A00 80951CC0 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 02A04 80951CC4 316CFE00 */  andi    $t4, $t3, 0xFE00           ## $t4 = 00000000
/* 02A08 80951CC8 A50C0000 */  sh      $t4, 0x0000($t0)           ## 8096693E
/* 02A0C 80951CCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A10 80951CD0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02A14 80951CD4 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 02A18 80951CD8 0C00D09B */  jal     func_8003426C              
/* 02A1C 80951CDC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02A20 80951CE0 3C0E0FC0 */  lui     $t6, 0x0FC0                ## $t6 = 0FC00000
/* 02A24 80951CE4 35CE0712 */  ori     $t6, $t6, 0x0712           ## $t6 = 0FC00712
/* 02A28 80951CE8 10000018 */  beq     $zero, $zero, .L80951D4C   
/* 02A2C 80951CEC AE0E02AC */  sw      $t6, 0x02AC($s0)           ## 000002AC
.L80951CF0:
/* 02A30 80951CF0 904F0000 */  lbu     $t7, 0x0000($v0)           ## 00000000
/* 02A34 80951CF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A38 80951CF8 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 02A3C 80951CFC 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 02A40 80951D00 A0580000 */  sb      $t8, 0x0000($v0)           ## 00000000
/* 02A44 80951D04 92030114 */  lbu     $v1, 0x0114($s0)           ## 00000114
/* 02A48 80951D08 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 02A4C 80951D0C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02A50 80951D10 1060000C */  beq     $v1, $zero, .L80951D44     
/* 02A54 80951D14 240C000C */  addiu   $t4, $zero, 0x000C         ## $t4 = 0000000C
/* 02A58 80951D18 96190112 */  lhu     $t9, 0x0112($s0)           ## 00000112
/* 02A5C 80951D1C 246AFFFB */  addiu   $t2, $v1, 0xFFFB           ## $t2 = FFFFFFFB
/* 02A60 80951D20 33294000 */  andi    $t1, $t9, 0x4000           ## $t1 = 00000000
/* 02A64 80951D24 15200007 */  bne     $t1, $zero, .L80951D44     
/* 02A68 80951D28 00000000 */  nop
/* 02A6C 80951D2C A20A0196 */  sb      $t2, 0x0196($s0)           ## 00000196
/* 02A70 80951D30 820B0196 */  lb      $t3, 0x0196($s0)           ## 00000196
/* 02A74 80951D34 296100A1 */  slti    $at, $t3, 0x00A1           
/* 02A78 80951D38 14200002 */  bne     $at, $zero, .L80951D44     
/* 02A7C 80951D3C 00000000 */  nop
/* 02A80 80951D40 A2000196 */  sb      $zero, 0x0196($s0)         ## 00000196
.L80951D44:
/* 02A84 80951D44 0C00D09B */  jal     func_8003426C              
/* 02A88 80951D48 AFAC0010 */  sw      $t4, 0x0010($sp)           
.L80951D4C:
/* 02A8C 80951D4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A90 80951D50 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02A94 80951D54 2405393E */  addiu   $a1, $zero, 0x393E         ## $a1 = 0000393E
/* 02A98 80951D58 3C088096 */  lui     $t0, %hi(D_8096693E)       ## $t0 = 80960000
/* 02A9C 80951D5C 2508693E */  addiu   $t0, $t0, %lo(D_8096693E)  ## $t0 = 8096693E
/* 02AA0 80951D60 9202029C */  lbu     $v0, 0x029C($s0)           ## 0000029C
.L80951D64:
/* 02AA4 80951D64 304D0002 */  andi    $t5, $v0, 0x0002           ## $t5 = 00000000
/* 02AA8 80951D68 11A00017 */  beq     $t5, $zero, .L80951DC8     
/* 02AAC 80951D6C 304EFFFD */  andi    $t6, $v0, 0xFFFD           ## $t6 = 00000000
/* 02AB0 80951D70 A20E029C */  sb      $t6, 0x029C($s0)           ## 0000029C
/* 02AB4 80951D74 950F0000 */  lhu     $t7, 0x0000($t0)           ## 8096693E
/* 02AB8 80951D78 8FA90054 */  lw      $t1, 0x0054($sp)           
/* 02ABC 80951D7C 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 02AC0 80951D80 25F80018 */  addiu   $t8, $t7, 0x0018           ## $t8 = 00000018
/* 02AC4 80951D84 3319FFF0 */  andi    $t9, $t8, 0xFFF0           ## $t9 = 00000010
/* 02AC8 80951D88 A5190000 */  sh      $t9, 0x0000($t0)           ## 8096693E
/* 02ACC 80951D8C 8E0A0290 */  lw      $t2, 0x0290($s0)           ## 00000290
/* 02AD0 80951D90 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 02AD4 80951D94 552A000D */  bnel    $t1, $t2, .L80951DCC       
/* 02AD8 80951D98 95020000 */  lhu     $v0, 0x0000($t0)           ## 8096693E
/* 02ADC 80951D9C 44810000 */  mtc1    $at, $f0                   ## $f0 = 8.00
/* 02AE0 80951DA0 8607008A */  lh      $a3, 0x008A($s0)           ## 0000008A
/* 02AE4 80951DA4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02AE8 80951DA8 44060000 */  mfc1    $a2, $f0                   
/* 02AEC 80951DAC 0C00BDC7 */  jal     func_8002F71C              
/* 02AF0 80951DB0 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 02AF4 80951DB4 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 02AF8 80951DB8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02AFC 80951DBC 2405083E */  addiu   $a1, $zero, 0x083E         ## $a1 = 0000083E
/* 02B00 80951DC0 3C088096 */  lui     $t0, %hi(D_8096693E)       ## $t0 = 80960000
/* 02B04 80951DC4 2508693E */  addiu   $t0, $t0, %lo(D_8096693E)  ## $t0 = 8096693E
.L80951DC8:
/* 02B08 80951DC8 95020000 */  lhu     $v0, 0x0000($t0)           ## 8096693E
.L80951DCC:
/* 02B0C 80951DCC 2841000B */  slti    $at, $v0, 0x000B           
/* 02B10 80951DD0 1420002B */  bne     $at, $zero, .L80951E80     
/* 02B14 80951DD4 304B0007 */  andi    $t3, $v0, 0x0007           ## $t3 = 00000000
/* 02B18 80951DD8 15600029 */  bne     $t3, $zero, .L80951E80     
/* 02B1C 80951DDC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02B20 80951DE0 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 02B24 80951DE4 C6060068 */  lwc1    $f6, 0x0068($s0)           ## 00000068
/* 02B28 80951DE8 46062032 */  c.eq.s  $f4, $f6                   
/* 02B2C 80951DEC 00000000 */  nop
/* 02B30 80951DF0 45020024 */  bc1fl   .L80951E84                 
/* 02B34 80951DF4 260F0024 */  addiu   $t7, $s0, 0x0024           ## $t7 = 00000024
/* 02B38 80951DF8 8E0D0024 */  lw      $t5, 0x0024($s0)           ## 00000024
/* 02B3C 80951DFC 27A70048 */  addiu   $a3, $sp, 0x0048           ## $a3 = FFFFFFF0
/* 02B40 80951E00 3C01439B */  lui     $at, 0x439B                ## $at = 439B0000
/* 02B44 80951E04 ACED0000 */  sw      $t5, 0x0000($a3)           ## FFFFFFF0
/* 02B48 80951E08 8E0C0028 */  lw      $t4, 0x0028($s0)           ## 00000028
/* 02B4C 80951E0C 44819000 */  mtc1    $at, $f18                  ## $f18 = 310.00
/* 02B50 80951E10 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 02B54 80951E14 ACEC0004 */  sw      $t4, 0x0004($a3)           ## FFFFFFF4
/* 02B58 80951E18 8E0D002C */  lw      $t5, 0x002C($s0)           ## 0000002C
/* 02B5C 80951E1C 3C058096 */  lui     $a1, %hi(D_8095DF50)       ## $a1 = 80960000
/* 02B60 80951E20 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 02B64 80951E24 ACED0008 */  sw      $t5, 0x0008($a3)           ## FFFFFFF8
/* 02B68 80951E28 C60A0054 */  lwc1    $f10, 0x0054($s0)          ## 00000054
/* 02B6C 80951E2C C60800BC */  lwc1    $f8, 0x00BC($s0)           ## 000000BC
/* 02B70 80951E30 C7A6004C */  lwc1    $f6, 0x004C($sp)           
/* 02B74 80951E34 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 02B78 80951E38 460A4402 */  mul.s   $f16, $f8, $f10            
/* 02B7C 80951E3C C7AA0048 */  lwc1    $f10, 0x0048($sp)          
/* 02B80 80951E40 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 02B84 80951E44 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 02B88 80951E48 24A5DF50 */  addiu   $a1, $a1, %lo(D_8095DF50)  ## $a1 = 8095DF50
/* 02B8C 80951E4C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 02B90 80951E50 46109100 */  add.s   $f4, $f18, $f16            
/* 02B94 80951E54 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 02B98 80951E58 3C01435C */  lui     $at, 0x435C                ## $at = 435C0000
/* 02B9C 80951E5C 46043200 */  add.s   $f8, $f6, $f4              
/* 02BA0 80951E60 44812000 */  mtc1    $at, $f4                   ## $f4 = 220.00
/* 02BA4 80951E64 C7A60050 */  lwc1    $f6, 0x0050($sp)           
/* 02BA8 80951E68 46125400 */  add.s   $f16, $f10, $f18           
/* 02BAC 80951E6C E7A8004C */  swc1    $f8, 0x004C($sp)           
/* 02BB0 80951E70 46043200 */  add.s   $f8, $f6, $f4              
/* 02BB4 80951E74 E7B00048 */  swc1    $f16, 0x0048($sp)          
/* 02BB8 80951E78 0C256CC6 */  jal     func_8095B318              
/* 02BBC 80951E7C E7A80050 */  swc1    $f8, 0x0050($sp)           
.L80951E80:
/* 02BC0 80951E80 260F0024 */  addiu   $t7, $s0, 0x0024           ## $t7 = 00000024
.L80951E84:
/* 02BC4 80951E84 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 02BC8 80951E88 AFAF0044 */  sw      $t7, 0x0044($sp)           
/* 02BCC 80951E8C 3C018096 */  lui     $at, %hi(D_8095C6C0)       ## $at = 80960000
/* 02BD0 80951E90 C42AC6C0 */  lwc1    $f10, %lo(D_8095C6C0)($at) 
/* 02BD4 80951E94 460A003C */  c.lt.s  $f0, $f10                  
/* 02BD8 80951E98 00000000 */  nop
/* 02BDC 80951E9C 45000003 */  bc1f    .L80951EAC                 
/* 02BE0 80951EA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02BE4 80951EA4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02BE8 80951EA8 24053143 */  addiu   $a1, $zero, 0x3143         ## $a1 = 00003143
.L80951EAC:
/* 02BEC 80951EAC 86050030 */  lh      $a1, 0x0030($s0)           ## 00000030
/* 02BF0 80951EB0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02BF4 80951EB4 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 02BF8 80951EB8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02BFC 80951EBC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02C00 80951EC0 240700C8 */  addiu   $a3, $zero, 0x00C8         ## $a3 = 000000C8
/* 02C04 80951EC4 86050034 */  lh      $a1, 0x0034($s0)           ## 00000034
/* 02C08 80951EC8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02C0C 80951ECC 260400B8 */  addiu   $a0, $s0, 0x00B8           ## $a0 = 000000B8
/* 02C10 80951ED0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02C14 80951ED4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02C18 80951ED8 240700C8 */  addiu   $a3, $zero, 0x00C8         ## $a3 = 000000C8
/* 02C1C 80951EDC 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 02C20 80951EE0 260400BC */  addiu   $a0, $s0, 0x00BC           ## $a0 = 000000BC
/* 02C24 80951EE4 3C05C47A */  lui     $a1, 0xC47A                ## $a1 = C47A0000
/* 02C28 80951EE8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02C2C 80951EEC 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 02C30 80951EF0 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 02C34 80951EF4 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 02C38 80951EF8 3C188096 */  lui     $t8, %hi(D_8096693E)       ## $t8 = 80960000
/* 02C3C 80951EFC 9718693E */  lhu     $t8, %lo(D_8096693E)($t8)  
/* 02C40 80951F00 33190100 */  andi    $t9, $t8, 0x0100           ## $t9 = 00000000
/* 02C44 80951F04 57200009 */  bnel    $t9, $zero, .L80951F2C     
/* 02C48 80951F08 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
/* 02C4C 80951F0C 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 02C50 80951F10 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02C54 80951F14 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 02C58 80951F18 352A0001 */  ori     $t2, $t1, 0x0001           ## $t2 = 00000001
/* 02C5C 80951F1C AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 02C60 80951F20 10000007 */  beq     $zero, $zero, .L80951F40   
/* 02C64 80951F24 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 02C68 80951F28 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
.L80951F2C:
/* 02C6C 80951F2C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 02C70 80951F30 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02C74 80951F34 01616024 */  and     $t4, $t3, $at              
/* 02C78 80951F38 AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000004
/* 02C7C 80951F3C E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
.L80951F40:
/* 02C80 80951F40 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02C84 80951F44 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02C88 80951F48 10400007 */  beq     $v0, $zero, .L80951F68     
/* 02C8C 80951F4C 3C0D8096 */  lui     $t5, %hi(D_809668D1)       ## $t5 = 80960000
/* 02C90 80951F50 91AD68D1 */  lbu     $t5, %lo(D_809668D1)($t5)  
/* 02C94 80951F54 29A10009 */  slti    $at, $t5, 0x0009           
/* 02C98 80951F58 54200004 */  bnel    $at, $zero, .L80951F6C     
/* 02C9C 80951F5C 860E01AC */  lh      $t6, 0x01AC($s0)           ## 000001AC
/* 02CA0 80951F60 0C254840 */  jal     func_80952100              
/* 02CA4 80951F64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80951F68:
/* 02CA8 80951F68 860E01AC */  lh      $t6, 0x01AC($s0)           ## 000001AC
.L80951F6C:
/* 02CAC 80951F6C 25CF0C31 */  addiu   $t7, $t6, 0x0C31           ## $t7 = 00000C31
/* 02CB0 80951F70 A60F01AC */  sh      $t7, 0x01AC($s0)           ## 000001AC
/* 02CB4 80951F74 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 02CB8 80951F78 860401AC */  lh      $a0, 0x01AC($s0)           ## 000001AC
/* 02CBC 80951F7C 3C018096 */  lui     $at, %hi(D_8095C6C4)       ## $at = 80960000
/* 02CC0 80951F80 C424C6C4 */  lwc1    $f4, %lo(D_8095C6C4)($at)  
/* 02CC4 80951F84 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02CC8 80951F88 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 02CCC 80951F8C 46040202 */  mul.s   $f8, $f0, $f4              
/* 02CD0 80951F90 860401AC */  lh      $a0, 0x01AC($s0)           ## 000001AC
/* 02CD4 80951F94 460A4480 */  add.s   $f18, $f8, $f10            
/* 02CD8 80951F98 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02CDC 80951F9C E61201A0 */  swc1    $f18, 0x01A0($s0)          ## 000001A0
/* 02CE0 80951FA0 3C018096 */  lui     $at, %hi(D_8095C6C8)       ## $at = 80960000
/* 02CE4 80951FA4 C430C6C8 */  lwc1    $f16, %lo(D_8095C6C8)($at) 
/* 02CE8 80951FA8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02CEC 80951FAC 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 02CF0 80951FB0 46100182 */  mul.s   $f6, $f0, $f16             
/* 02CF4 80951FB4 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 02CF8 80951FB8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02CFC 80951FBC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02D00 80951FC0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02D04 80951FC4 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
/* 02D08 80951FC8 240A0005 */  addiu   $t2, $zero, 0x0005         ## $t2 = 00000005
/* 02D0C 80951FCC 46043200 */  add.s   $f8, $f6, $f4              
/* 02D10 80951FD0 E60801A4 */  swc1    $f8, 0x01A4($s0)           ## 000001A4
/* 02D14 80951FD4 8FB8005C */  lw      $t8, 0x005C($sp)           
/* 02D18 80951FD8 0338C821 */  addu    $t9, $t9, $t8              
/* 02D1C 80951FDC 8F391DE4 */  lw      $t9, 0x1DE4($t9)           ## 00011DE4
/* 02D20 80951FE0 03002025 */  or      $a0, $t8, $zero            ## $a0 = 00000000
/* 02D24 80951FE4 33290003 */  andi    $t1, $t9, 0x0003           ## $t1 = 00000000
/* 02D28 80951FE8 5520000B */  bnel    $t1, $zero, .L80952018     
/* 02D2C 80951FEC 8FAB0044 */  lw      $t3, 0x0044($sp)           
/* 02D30 80951FF0 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
/* 02D34 80951FF4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 02D38 80951FF8 44815000 */  mtc1    $at, $f10                  ## $f10 = 50.00
/* 02D3C 80951FFC AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 02D40 80952000 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 02D44 80952004 E7A00014 */  swc1    $f0, 0x0014($sp)           
/* 02D48 80952008 E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 02D4C 8095200C 0C253E19 */  jal     func_8094F864              
/* 02D50 80952010 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 02D54 80952014 8FAB0044 */  lw      $t3, 0x0044($sp)           
.L80952018:
/* 02D58 80952018 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 02D5C 8095201C 44818000 */  mtc1    $at, $f16                  ## $f16 = 45.00
/* 02D60 80952020 8D6D0000 */  lw      $t5, 0x0000($t3)           ## 00000000
/* 02D64 80952024 2605028C */  addiu   $a1, $s0, 0x028C           ## $a1 = 0000028C
/* 02D68 80952028 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02D6C 8095202C AE0D0038 */  sw      $t5, 0x0038($s0)           ## 00000038
/* 02D70 80952030 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 00000004
/* 02D74 80952034 AE0C003C */  sw      $t4, 0x003C($s0)           ## 0000003C
/* 02D78 80952038 C612003C */  lwc1    $f18, 0x003C($s0)          ## 0000003C
/* 02D7C 8095203C 8D6D0008 */  lw      $t5, 0x0008($t3)           ## 00000008
/* 02D80 80952040 46109180 */  add.s   $f6, $f18, $f16            
/* 02D84 80952044 AE0D0040 */  sw      $t5, 0x0040($s0)           ## 00000040
/* 02D88 80952048 E606003C */  swc1    $f6, 0x003C($s0)           ## 0000003C
/* 02D8C 8095204C 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 02D90 80952050 AFA50040 */  sw      $a1, 0x0040($sp)           
/* 02D94 80952054 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 02D98 80952058 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02D9C 8095205C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02DA0 80952060 00812821 */  addu    $a1, $a0, $at              
/* 02DA4 80952064 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 02DA8 80952068 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 02DAC 8095206C 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 02DB0 80952070 92030114 */  lbu     $v1, 0x0114($s0)           ## 00000114
/* 02DB4 80952074 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 02DB8 80952078 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 02DBC 8095207C 14600004 */  bne     $v1, $zero, .L80952090     
/* 02DC0 80952080 00000000 */  nop
/* 02DC4 80952084 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 02DC8 80952088 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 02DCC 8095208C 92030114 */  lbu     $v1, 0x0114($s0)           ## 00000114
.L80952090:
/* 02DD0 80952090 10600005 */  beq     $v1, $zero, .L809520A8     
/* 02DD4 80952094 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 02DD8 80952098 960F0112 */  lhu     $t7, 0x0112($s0)           ## 00000112
/* 02DDC 8095209C 31F94000 */  andi    $t9, $t7, 0x4000           ## $t9 = 00000000
/* 02DE0 809520A0 57200005 */  bnel    $t9, $zero, .L809520B8     
/* 02DE4 809520A4 860901F8 */  lh      $t1, 0x01F8($s0)           ## 000001F8
.L809520A8:
/* 02DE8 809520A8 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 02DEC 809520AC 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 02DF0 809520B0 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 02DF4 809520B4 860901F8 */  lh      $t1, 0x01F8($s0)           ## 000001F8
.L809520B8:
/* 02DF8 809520B8 3C018096 */  lui     $at, %hi(D_8095C6CC)       ## $at = 80960000
/* 02DFC 809520BC C42AC6CC */  lwc1    $f10, %lo(D_8095C6CC)($at) 
/* 02E00 809520C0 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 02E04 809520C4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02E08 809520C8 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 02E0C 809520CC 46802220 */  cvt.s.w $f8, $f4                   
/* 02E10 809520D0 260400E4 */  addiu   $a0, $s0, 0x00E4           ## $a0 = 000000E4
/* 02E14 809520D4 2405313C */  addiu   $a1, $zero, 0x313C         ## $a1 = 0000313C
/* 02E18 809520D8 460A4482 */  mul.s   $f18, $f8, $f10            
/* 02E1C 809520DC 46109180 */  add.s   $f6, $f18, $f16            
/* 02E20 809520E0 44063000 */  mfc1    $a2, $f6                   
/* 02E24 809520E4 0C03D0DB */  jal     func_800F436C              
/* 02E28 809520E8 00000000 */  nop
/* 02E2C 809520EC 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 02E30 809520F0 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 02E34 809520F4 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 02E38 809520F8 03E00008 */  jr      $ra                        
/* 02E3C 809520FC 00000000 */  nop
