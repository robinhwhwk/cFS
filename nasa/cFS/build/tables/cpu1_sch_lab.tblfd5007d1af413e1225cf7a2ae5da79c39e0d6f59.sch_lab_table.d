# Template for table configuration

cfetables: staging/cpu1/cf/sch_lab_table.tbl

staging/cpu1/cf/sch_lab_table.tbl: CFE_TABLE_SCID      := 0x42
staging/cpu1/cf/sch_lab_table.tbl: CFE_TABLE_PRID      := 1
staging/cpu1/cf/sch_lab_table.tbl: CFE_TABLE_CPUNAME   := cpu1
staging/cpu1/cf/sch_lab_table.tbl: CFE_TABLE_APPNAME   := sch_lab
staging/cpu1/cf/sch_lab_table.tbl: CFE_TABLE_BASENAME  := sch_lab_table

# Rules to build staging/cpu1/cf/sch_lab_table.tbl
elf/cpu1/sch_lab_table.c.o: /home/robin/src/sbn-instance-1/nasa/cFS/build/native/default_cpu1/apps/sch_lab/libtblobj_cpu1_sch_lab.tblfd5007d1af413e1225cf7a2ae5da79c39e0d6f59.a
staging/cpu1/cf/sch_lab_table.tbl: elf/cpu1/sch_lab_table.c.o


