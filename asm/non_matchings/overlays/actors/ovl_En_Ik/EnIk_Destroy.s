glabel EnIk_Destroy
/* 00000 80A74310 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 80A74314 3C0145FA */  lui     $at, 0x45FA                ## $at = 45FA0000
/* 00008 80A74318 44812000 */  mtc1    $at, $f4                   ## $f4 = 8000.00
/* 0000C 80A7431C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00010 80A74320 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00014 80A74324 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00018 80A74328 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0001C 80A7432C 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00020 80A74330 24060113 */  addiu   $a2, $zero, 0x0113         ## $a2 = 00000113
/* 00024 80A74334 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 00028 80A74338 0C00D4FD */  jal     Actor_FindNearby
              
/* 0002C 80A7433C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00030 80A74340 54400004 */  bnel    $v0, $zero, .L80A74354     
/* 00034 80A74344 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00038 80A74348 0C03D6D6 */  jal     func_800F5B58              
/* 0003C 80A7434C 00000000 */  nop
/* 00040 80A74350 8FA50020 */  lw      $a1, 0x0020($sp)           
.L80A74354:
/* 00044 80A74354 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00048 80A74358 0C017232 */  jal     Collider_DestroyTris              
/* 0004C 80A7435C 24A503EC */  addiu   $a1, $a1, 0x03EC           ## $a1 = 000003EC
/* 00050 80A74360 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00054 80A74364 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00058 80A74368 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 0005C 80A7436C 24A50320 */  addiu   $a1, $a1, 0x0320           ## $a1 = 00000320
/* 00060 80A74370 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00064 80A74374 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00068 80A74378 0C017418 */  jal     Collider_DestroyQuad              
/* 0006C 80A7437C 24A5036C */  addiu   $a1, $a1, 0x036C           ## $a1 = 0000036C
/* 00070 80A74380 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00074 80A74384 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00078 80A74388 03E00008 */  jr      $ra                        
/* 0007C 80A7438C 00000000 */  nop
