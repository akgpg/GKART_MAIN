create or replace package body gkt_usr_p is
/*
Description : This package will hold all of the function and procedure related to table gkt_user  
Alias Name  : USR

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  27-11-2016  Initial creation
****************************************************************************************************************/
function get_user_details(p_user_name varchar2) return sys_refcursor is
/*
Description : return all user information for a given user name  

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  27-11-2016  Initial creation
****************************************************************************************************************/
   ref_cur sys_refcursor;
begin
   open ref_cur for select * 
                  from gkt_user 
                  where user_name = p_user_name;
 
   return ref_cur;
end get_user_details;


end gkt_usr_p;--end package body