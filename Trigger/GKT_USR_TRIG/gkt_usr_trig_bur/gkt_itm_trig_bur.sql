create or replace trigger gkt_usr_trig_bur before update on gkt_user for each row 
/*
***************************************************************************************************************
Description : This trigger will be fired before the update event in gkt_user table.

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  22-11-2016  Initial creation
****************************************************************************************************************/

begin
  
  gkt_usr_capi.gkt_usr003_upd( p_date_last_change  => :new.date_last_change
                              ,p_last_changer_name => :new.last_changer_name
                             );

end gkt_usr_trig_bis;