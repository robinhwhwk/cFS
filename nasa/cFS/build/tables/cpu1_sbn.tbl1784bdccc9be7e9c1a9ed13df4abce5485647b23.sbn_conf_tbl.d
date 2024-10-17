# Template for table configuration

cfetables: staging/cpu1/cf/sbn_conf_tbl.tbl

staging/cpu1/cf/sbn_conf_tbl.tbl: CFE_TABLE_SCID      := 0x42
staging/cpu1/cf/sbn_conf_tbl.tbl: CFE_TABLE_PRID      := 1
staging/cpu1/cf/sbn_conf_tbl.tbl: CFE_TABLE_CPUNAME   := cpu1
staging/cpu1/cf/sbn_conf_tbl.tbl: CFE_TABLE_APPNAME   := sbn
staging/cpu1/cf/sbn_conf_tbl.tbl: CFE_TABLE_BASENAME  := sbn_conf_tbl

# Rules to build staging/cpu1/cf/sbn_conf_tbl.tbl
elf/cpu1/sbn_conf_tbl.c.o: /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/apps/sbn/libtblobj_cpu1_sbn.tbl1784bdccc9be7e9c1a9ed13df4abce5485647b23.a
staging/cpu1/cf/sbn_conf_tbl.tbl: elf/cpu1/sbn_conf_tbl.c.o


