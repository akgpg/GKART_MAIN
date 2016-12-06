create or replace trigger gkt_usr_trig_bir before insert on gkt_user for each row 
/*
***************************************************************************************************************
Description : This trigger will be fired before the insert event into gkt_user table.

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  22-11-2016  Initial creation
****************************************************************************************************************/

begin
  
  gkt_usr_capi.gkt_usr001_ins(p_id => :new.id);
  gkt_usr_capi.gkt_usr002_ins( p_date_creation => :new.date_creation
                              ,p_creator_name  => :new.creator_name
                             );
  gkt_usr_capi.gkt_usr003_upd( p_date_last_change  => :new.date_last_change
                              ,p_last_changer_name => :new.last_changer_name
                             );  	
  :new.user_name := lower(:new.first_name)||(:new.id+1000);	--- Creating user name						 

end gkt_usr_trig_bis;