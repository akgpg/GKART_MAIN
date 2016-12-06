create or replace package gkt_usr_p is
/*
Description : This package will hold all of the function and procedure related to table gkt_user  
Alias Name  : USR

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  27-11-2016  Initial creation
****************************************************************************************************************/

function get_user_details(p_user_name varchar2) return sys_refcursor;



end gkt_usr_p;