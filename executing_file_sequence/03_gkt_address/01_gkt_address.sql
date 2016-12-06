/*
Description : This table is created to store the Address of the customer
Alias Name  : ADS

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  22-09-2016  Initial creation
****************************************************************************************************************/
create table gkt_address( id                number(10)     constraint gkt_ads_pk primary key
                        , ads_type          varchar2(20)   not null--permanent, current, shipping etc.
						, usr_id            number(10)     constraint gkt_usr_fk1 references gkt_user(id)
                        , first_line        varchar2(100)  not null
                        , second_line       varchar2(100) 
                        , city              varchar2(30)   not null
                        , state             varchar2(20)   not null
                        , country           varchar2(20)   not null
                        , pin               number(10)     not null
                        , date_creation     date           not null
                        , date_last_change  date           not null
                        , creator_name      varchar2(30)   not null
                        , last_changer_name varchar2(30)   not null
                       );
                    