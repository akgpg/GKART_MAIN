/*
Description : This table is created to store the the information of user_cart
Alias Name  : UCT

Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  23-09-2016  Initial creation
****************************************************************************************************************/
create table gkt_user_cart   ( usr_id            number(10)     constraint gkt_uct_fk1 references gkt_user(id)
							 , itm_id            number(10)     constraint gkt_uct_fk2 references gkt_item(id)
                             , date_creation     date           not null
                             , date_last_change  date           not null
                             , creator_name      varchar2(30)   not null
                             , last_changer_name varchar2(30)   not null
						     , constraint gkt_uct_pk primary key(usr_id,itm_id)
							 );
                    