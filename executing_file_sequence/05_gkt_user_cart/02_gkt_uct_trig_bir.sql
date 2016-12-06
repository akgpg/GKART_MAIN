create or replace trigger gkt_uct_trig_bir before insert on gkt_unit for each row 
/*
Description : This trigger will be fired before the insert event into gkt_user_cart table.

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  23-11-2016  Initial creation
****************************************************************************************************************/

begin
  /* updating who columns*/
   :new.date_creation      := sysdate;
   :new.creator_name       := user;
   :new.date_last_change   := sysdate;
   :new.last_changer_name  := user;
   ------
end gkt_uct_trig_bir;