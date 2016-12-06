/*
Description : This table is created to store the the information of user
Alias Name  : USR

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  22-09-2016  Initial creation
****************************************************************************************************************/
create table gkt_user   ( id                number(10)     constraint gkt_usr_pk primary key
                        , first_name        varchar2(20)   not null--permanent, current, shipping etc.
                        , last_name         varchar2(100)  not null
						, country_code      varchar2(5)    default '+91'
                        , mobile_no         number(10)     not null
                        , email_id          varchar2(30)   not null
                        , date_creation     date           not null
                        , date_last_change  date           not null
                        , creator_name      varchar2(30)   not null
                        , last_changer_name varchar2(30)   not null
						, constraint gkt_usr_uk1 unique(monbile_no,email_id)
                       );
                    