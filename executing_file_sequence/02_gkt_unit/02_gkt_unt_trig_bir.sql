create or replace trigger gkt_unt_trig_bir before insert on gkt_unit for each row 
/*
Description : This trigger will be fired before the insert event into gkt_unit table.

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  22-09-2016  Initial creation
****************************************************************************************************************/

begin
  /* updating who columns*/
   :new.date_creation      := sysdate;
   :new.creator_name       := user;
   :new.date_last_change   := sysdate;
   :new.last_changer_name  := user;
   ------
end gkt_unt_trig_bir;