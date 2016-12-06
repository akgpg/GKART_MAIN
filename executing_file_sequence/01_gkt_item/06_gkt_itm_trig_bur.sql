create or replace trigger gkt_itm_trig_bur before update on gkt_item for each row 
/*
Description : This trigger will be fired before the update event in gkt_item table.

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  21-09-2016  Initial creation
****************************************************************************************************************/

begin
  
  gkt_itm_capi.gkt_itm003_upd( p_date_last_change  => :new.date_last_change
                              ,p_last_changer_name => :new.last_changer_name
                             );

end gkt_itm_trig_bis;