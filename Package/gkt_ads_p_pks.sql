create or replace package gkt_ads_p is
/*
Description : This package will hold all of the function and procedure related to table gkt_address  


Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  04-12-2016  Initial creation
****************************************************************************************************************/
g_package varchar2(100) := 'gkt_ads_p';
procedure add_address( p_line1    varchar2
                      ,p_line2    varchar2
                      ,p_landmark varchar2
                      ,p_city     varchar2
                      ,p_state    varchar2
                      ,p_country  varchar2
                      ,p_contact  varchar2
                      ,p_pin      varchar2
                      ,p_user_name varchar2
                      );
                      



end gkt_ads_p;