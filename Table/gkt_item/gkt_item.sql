/*
Description : This table is created to store the item details.
Alias Name  : ITM

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  21-09-2016  Initial creation
****************************************************************************************************************/
create table gkt_item( id                number(10)     constraint gkt_itm_pk primary key
                     , catagory          varchar2(30)   not null
                     , name              varchar2(30)   not null
                     , description       varchar2(1000) 
                     , pic_url           varchar2(1000)
                     , total_item        number(6)      not null
                     , unit1             varchar2(10)   not null
                     , price             number(6,2)    not null
                     , unit2             varchar2(20)   not null
                     , date_creation     date           not null
                     , date_last_change  date           not null
                     , creator_name      varchar2(30)   not null
                     , last_changer_name varchar2(30)   not null
                     , constraint gkt_itm_uk unique(name,description)
                    );
                    