create or replace package body gkt_ads_capi is
/*
Description : This capi package(body) will hold all of the trigger function which are associated with the table gkt_address.

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  21-09-2016  Initial creation
****************************************************************************************************************/

procedure gkt_ads001_ins(p_id out number) is 
/*
Description : This procedure will set the id value for the gkt_address table when an insert event is occured on that table.

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  21-09-2016  Initial creation
****************************************************************************************************************/
begin
  p_id := gkt_ads_seq.nextval();
exception
  when others then
    null; -- add a procedure which will  store the debug information.
  
end gkt_ads001_ins;
---------------------------------------------------------------------------------------------------------------------
procedure gkt_ads002_ins( p_date_creation     out date
                         ,p_creator_name      out varchar2
                        )
is                       
/*
Description : This procedure will update the who cloumns when the record is being insrted for the first time.

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  21-09-2016  Initial creation
****************************************************************************************************************/
begin
  p_date_creation := sysdate;
  p_creator_name  := user;
exception
  when others then
    null; -- add a procedure which will  store the debug information.
  
end gkt_ads002_ins;
-----------------------------------------------------------------------------------------------------------------------
procedure gkt_ads003_upd( p_date_last_change  out date
                         ,p_last_changer_name out varchar2
                        )
is                       
/*
Description : This procedure will update the who cloumns when someone tries to change the record

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  21-09-2016  Initial creation
****************************************************************************************************************/
begin
  p_date_last_change  := sysdate;
  p_last_changer_name := user;
exception
  when others then
    null; -- add a procedure which will  store the debug information.
  
end gkt_ads003_upd;
--------------------------------------------------------------------------------------------------------------------------------


end gkt_ads_capi; --End of packagae body




