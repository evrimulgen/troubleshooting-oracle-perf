connect SYS/change_on_install as SYSDBA
set echo on
spool /u00/app/oracle/admin/DBA9207/scripts/spatial.log
@/u00/app/oracle/product/9.2.0.7/md/admin/mdinst.sql;
spool off
exit;