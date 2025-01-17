# Template for table configuration

cfetables: staging/cpu1/cf/sbn_remap_tbl.tbl

staging/cpu1/cf/sbn_remap_tbl.tbl: CFE_TABLE_SCID      := 0x43
staging/cpu1/cf/sbn_remap_tbl.tbl: CFE_TABLE_PRID      := 1
staging/cpu1/cf/sbn_remap_tbl.tbl: CFE_TABLE_CPUNAME   := cpu1
staging/cpu1/cf/sbn_remap_tbl.tbl: CFE_TABLE_APPNAME   := sbn_f_remap
staging/cpu1/cf/sbn_remap_tbl.tbl: CFE_TABLE_BASENAME  := sbn_remap_tbl

# Rules to build staging/cpu1/cf/sbn_remap_tbl.tbl
elf/cpu1/sbn_remap_tbl.c.o: /home/hkim3019/cFS/server/cFS/build/native/default_cpu1/apps/sbn_f_remap/libtblobj_cpu1_sbn_f_remap.tblfd4819436736f827bfb62849b9cc242d7c123dd4.a
staging/cpu1/cf/sbn_remap_tbl.tbl: elf/cpu1/sbn_remap_tbl.c.o


