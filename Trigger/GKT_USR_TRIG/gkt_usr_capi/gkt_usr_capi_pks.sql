create or replace package gkt_usr_capi is
/*
***************************************************************************************************************
Description : This capi package(specification) will hold all of the trigger function which are associated with the table gkt_user

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  21-11-2016  Initial creation
****************************************************************************************************************/

procedure gkt_usr001_ins(p_id out number); 
procedure gkt_usr002_ins( p_date_creation     out date
                         ,p_creator_name      out varchar2
                        ); 
procedure gkt_usr003_upd( p_date_last_change  out date
                         ,p_last_changer_name out varchar2
                        );                         


end gkt_usr_capi;