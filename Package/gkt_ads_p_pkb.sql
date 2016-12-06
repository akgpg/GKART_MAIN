create or replace package body gkt_ads_p is
/*
Description : This package will hold all of the function and procedure related to table gkt_ads 


Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  04-12-2016  Initial creation
****************************************************************************************************************/
procedure add_address( p_line1    varchar2
                      ,p_line2    varchar2
                      ,p_landmark varchar2
                      ,p_city     varchar2
                      ,p_state    varchar2
                      ,p_country  varchar2
                      ,p_contact  varchar2
                      ,p_pin      varchar2
                      ,p_user_name varchar2
                      )   as
/*
Description :  This procedure will help to make the entry in address table.

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  04-12-2016  Initial creation
****************************************************************************************************************/
   l_track varchar2(1000) := g_package||'.add_address';
   cursor c_ads 
   is
      select usr.id 
      from   gkt_user usr
      where  usr.user_name= p_user_name
  ;
  l_usr_id gkt_user.id%type;
  
begin
   gkt_debug.data_log(l_track||' @ start  p_user_name= '||p_user_name);
   
   open  c_ads;
   fetch c_ads into l_usr_id;
   close c_ads;
   
   insert into gkt_address
   ( usr_id
   , first_line
   , second_line
   , land_mark
   , city
   , state
   , country
   , contact_number
   , pin
   )
   values
   ( l_usr_id
   , p_line1
   , p_line2
   , p_landmark
   , p_city
   , p_state
   , p_country
   , p_contact
   , p_pin
   );
   
   gkt_debug.data_log(l_track||' @ end');
exception
   when others then
       gkt_debug.error_log(sqlerrm);
       
end add_address ;
  
end gkt_ads_p;--end package body



