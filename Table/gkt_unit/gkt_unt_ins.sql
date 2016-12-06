SET DEFINE OFF;
SPOOL gkt_unt_ins.log
PROMPT begin gkt_unt_ins.sql
Insert into gkt_unit (CODE,DESCRIPTION) values ('RS','RUPEES');
Insert into gkt_unit (CODE,DESCRIPTION) values ('KG','KILO GRAM');
Insert into gkt_unit (CODE,DESCRIPTION) values ('GM','GRAM');
Insert into gkt_unit (CODE,DESCRIPTION) values ('PIC','PIECE');
Insert into gkt_unit (CODE,DESCRIPTION) values ('PKT','PACKET');

COMMIT;

PROMPT end gkt_unt_ins.sql
spool off
SET DEFINE ON;