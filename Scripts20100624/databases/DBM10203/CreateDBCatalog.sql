connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
spool /u00/app/oracle/admin/DBM10203/scripts/CreateDBCatalog.log
@/u00/app/oracle/product/10.2.0.3/rdbms/admin/catalog.sql;
@/u00/app/oracle/product/10.2.0.3/rdbms/admin/catblock.sql;
@/u00/app/oracle/product/10.2.0.3/rdbms/admin/catproc.sql;
@/u00/app/oracle/product/10.2.0.3/rdbms/admin/catoctk.sql;
@/u00/app/oracle/product/10.2.0.3/rdbms/admin/owminst.plb;
connect "SYSTEM"/"&&systemPassword"
@/u00/app/oracle/product/10.2.0.3/sqlplus/admin/pupbld.sql;
connect "SYSTEM"/"&&systemPassword"
set echo on
spool /u00/app/oracle/admin/DBM10203/scripts/sqlPlusHelp.log
@/u00/app/oracle/product/10.2.0.3/sqlplus/admin/help/hlpbld.sql helpus.sql;
spool off
spool off
