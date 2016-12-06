create or replace trigger gkt_uct_trig_bur before insert on gkt_unit for each row 
/*
Description : This trigger will be fired before the update event of gkt_user table.

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  23-11-2016  Initial creation
****************************************************************************************************************/

begin
  /* updating who columns*/
   :new.date_last_change   := sysdate;
   :new.last_changer_name  := user;
   ------
end gkt_uct_trig_bur;