create or replace package gkt_itm_capi is
/*
Description : This capi package(specification) will hold all of the trigger function which are associated with the table gkt_item

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  21-09-2016  Initial creation
****************************************************************************************************************/

procedure gkt_itm001_ins(p_id out number); 
procedure gkt_itm002_ins( p_date_creation     out date
                         ,p_creator_name      out varchar2
                        ); 
procedure gkt_itm003_upd( p_date_last_change  out date
                         ,p_last_changer_name out varchar2
                        );                         


end gkt_itm_capi;