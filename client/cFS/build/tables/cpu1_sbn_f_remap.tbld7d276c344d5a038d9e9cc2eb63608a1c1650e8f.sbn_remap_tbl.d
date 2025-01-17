# Template for table configuration

cfetables: staging/cpu1/cf/sbn_remap_tbl.tbl

staging/cpu1/cf/sbn_remap_tbl.tbl: CFE_TABLE_SCID      := 0x42
staging/cpu1/cf/sbn_remap_tbl.tbl: CFE_TABLE_PRID      := 1
staging/cpu1/cf/sbn_remap_tbl.tbl: CFE_TABLE_CPUNAME   := cpu1
staging/cpu1/cf/sbn_remap_tbl.tbl: CFE_TABLE_APPNAME   := sbn_f_remap
staging/cpu1/cf/sbn_remap_tbl.tbl: CFE_TABLE_BASENAME  := sbn_remap_tbl

# Rules to build staging/cpu1/cf/sbn_remap_tbl.tbl
elf/cpu1/sbn_remap_tbl.c.o: /home/hkim3019/cFS/client/cFS/build/native/default_cpu1/apps/sbn_f_remap/libtblobj_cpu1_sbn_f_remap.tbld7d276c344d5a038d9e9cc2eb63608a1c1650e8f.a
staging/cpu1/cf/sbn_remap_tbl.tbl: elf/cpu1/sbn_remap_tbl.c.o


