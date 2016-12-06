/*
Description : This table is created to store unit name and its description.
Alias Name  : UNT

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  21-09-2016  Initial creation
****************************************************************************************************************/
create table gkt_unit( code              varchar2(10)   constraint gkt_unt_pk primary key
                     , description       varchar2(1000) not null
                     , date_creation     date           not null
                     , date_last_change  date           not null
                     , creator_name      varchar2(30)   not null
                     , last_changer_name varchar2(30)   not null
                     );
                    