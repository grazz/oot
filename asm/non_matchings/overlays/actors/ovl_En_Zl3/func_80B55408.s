glabel func_80B55408
/* 02058 80B55408 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0205C 80B5540C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02060 80B55410 8C85011C */  lw      $a1, 0x011C($a0)           ## 0000011C
/* 02064 80B55414 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02068 80B55418 10A00004 */  beq     $a1, $zero, .L80B5542C     
/* 0206C 80B5541C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 02070 80B55420 0C00B55C */  jal     Actor_Kill
              
/* 02074 80B55424 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02078 80B55428 8FA60018 */  lw      $a2, 0x0018($sp)           
.L80B5542C:
/* 0207C 80B5542C 0C00B55C */  jal     Actor_Kill
              
/* 02080 80B55430 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 02084 80B55434 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02088 80B55438 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0208C 80B5543C 03E00008 */  jr      $ra                        
/* 02090 80B55440 00000000 */  nop
