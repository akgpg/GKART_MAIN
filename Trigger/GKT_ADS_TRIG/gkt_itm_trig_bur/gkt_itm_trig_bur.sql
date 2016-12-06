create or replace trigger gkt_ads_trig_bur before update on gkt_address for each row 
/*
Description : This trigger will be fired before the update event in gkt_address table.

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  22-09-2016  Initial creation
****************************************************************************************************************/

begin
  
  gkt_ads_capi.gkt_ads003_upd( p_date_last_change  => :new.date_last_change
                              ,p_last_changer_name => :new.last_changer_name
                             );

end gkt_ads_trig_bis;