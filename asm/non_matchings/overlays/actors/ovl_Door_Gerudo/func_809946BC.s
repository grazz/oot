.late_rodata
glabel D_80994BBC
 .word 0x7F7FFFFF # might be a float?

.text
glabel func_809946BC
/* 000DC 809946BC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 000E0 809946C0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000E4 809946C4 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 000E8 809946C8 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 000EC 809946CC AFA70044 */  sw      $a3, 0x0044($sp)           
/* 000F0 809946D0 8C821C44 */  lw      $v0, 0x1C44($a0)           ## 00001C44
/* 000F4 809946D4 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 000F8 809946D8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000FC 809946DC C4440024 */  lwc1    $f4, 0x0024($v0)           ## 00000024
/* 00100 809946E0 27A5001C */  addiu   $a1, $sp, 0x001C           ## $a1 = FFFFFFE4
/* 00104 809946E4 27A60028 */  addiu   $a2, $sp, 0x0028           ## $a2 = FFFFFFF0
/* 00108 809946E8 E7A40028 */  swc1    $f4, 0x0028($sp)           
/* 0010C 809946EC C4460028 */  lwc1    $f6, 0x0028($v0)           ## 00000028
/* 00110 809946F0 460C3200 */  add.s   $f8, $f6, $f12             
/* 00114 809946F4 E7A8002C */  swc1    $f8, 0x002C($sp)           
/* 00118 809946F8 C44A002C */  lwc1    $f10, 0x002C($v0)          ## 0000002C
/* 0011C 809946FC 0C00B6F4 */  jal     func_8002DBD0              
/* 00120 80994700 E7AA0030 */  swc1    $f10, 0x0030($sp)          
/* 00124 80994704 C7A0001C */  lwc1    $f0, 0x001C($sp)           
/* 00128 80994708 C7B00044 */  lwc1    $f16, 0x0044($sp)          
/* 0012C 8099470C C7B20048 */  lwc1    $f18, 0x0048($sp)          
/* 00130 80994710 46000005 */  abs.s   $f0, $f0                   
/* 00134 80994714 3C018099 */  lui     $at, %hi(D_80994BBC)       ## $at = 80990000
/* 00138 80994718 4600803C */  c.lt.s  $f16, $f0                  
/* 0013C 8099471C C7A00020 */  lwc1    $f0, 0x0020($sp)           
/* 00140 80994720 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00144 80994724 45010006 */  bc1t    .L80994740                 
/* 00148 80994728 00000000 */  nop
/* 0014C 8099472C 46000005 */  abs.s   $f0, $f0                   
/* 00150 80994730 4600903C */  c.lt.s  $f18, $f0                  
/* 00154 80994734 C7A00024 */  lwc1    $f0, 0x0024($sp)           
/* 00158 80994738 45000003 */  bc1f    .L80994748                 
/* 0015C 8099473C 00000000 */  nop
.L80994740:
/* 00160 80994740 10000001 */  beq     $zero, $zero, .L80994748   
/* 00164 80994744 C4204BBC */  lwc1    $f0, %lo(D_80994BBC)($at)  
.L80994748:
/* 00168 80994748 03E00008 */  jr      $ra                        
/* 0016C 8099474C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
