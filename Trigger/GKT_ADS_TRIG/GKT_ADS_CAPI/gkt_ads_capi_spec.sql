create or replace package gkt_ads_capi is
/*
Description : This capi package(specification) will hold all of the trigger function which are associated with the table gkt_address

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  21-09-2016  Initial creation
****************************************************************************************************************/

procedure gkt_ads001_ins(p_id out number); 
procedure gkt_ads002_ins( p_date_creation     out date
                         ,p_creator_name      out varchar2
                        ); 
procedure gkt_ads003_upd( p_date_last_change  out date
                         ,p_last_changer_name out varchar2
                        );                         


end gkt_ads_capi;