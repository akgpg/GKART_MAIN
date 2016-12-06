create or replace trigger gkt_ads_trig_bir before insert on gkt_item for each row 
/*
Description : This trigger will be fired before the insert event into gkt_address table.

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  21-09-2016  Initial creation
****************************************************************************************************************/

begin
  
  gkt_ads_capi.gkt_ads001_ins(p_id => :new.id);
  gkt_ads_capi.gkt_ads002_ins( p_date_creation => :new.date_creation
                              ,p_creator_name  => :new.creator_name
                             );
  gkt_ads_capi.gkt_ads003_upd( p_date_last_change  => :new.date_last_change
                              ,p_last_changer_name => :new.last_changer_name
                             );                          

end gkt_ads_trig_bis;