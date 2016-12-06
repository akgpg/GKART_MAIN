create or replace package body gkt_usr_capi is
/*
***************************************************************************************************************
Description : This capi package(body) will hold all of the trigger function which are associated with the table gkt_usr.

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  22-11-2016  Initial creation
****************************************************************************************************************/

procedure gkt_usr001_ins(p_id out number) is 
/*
***************************************************************************************************************
Description : This procedure will set the id value for the gkt_usr table when an insert event is occured on that table.

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  22-11-2016  Initial creation
****************************************************************************************************************/
begin
  p_id := gkt_usr_seq.nextval();
exception
  when others then
    null; -- add a procedure which will  store the debug information.
  
end gkt_usr001_ins;
---------------------------------------------------------------------------------------------------------------------
procedure gkt_usr002_ins( p_date_creation     out date
                         ,p_creator_name      out varchar2
                        )
is                       
/*
***************************************************************************************************************
Description : This procedure will update the who cloumns when the record is being insrted for the first time.

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  22-11-2016  Initial creation
****************************************************************************************************************/
begin
  p_date_creation := sysdate;
  p_creator_name  := user;
exception
  when others then
    null; -- add a procedure which will  store the debug information.
  
end gkt_usr002_ins;
-----------------------------------------------------------------------------------------------------------------------
procedure gkt_usr003_upd( p_date_last_change  out date
                         ,p_last_changer_name out varchar2
                        )
is                       
/*
***************************************************************************************************************
Description : This procedure will update the who cloumns when someone tries to change the record

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  22-11-2016  Initial creation
****************************************************************************************************************/
begin
  p_date_last_change  := sysdate;
  p_last_changer_name := user;
exception
  when others then
    null; -- add a procedure which will  store the debug information.
  
end gkt_usr003_upd;
--------------------------------------------------------------------------------------------------------------------------------


end gkt_usr_capi; --End of packagae body




