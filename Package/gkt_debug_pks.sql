create or replace package gkt_debug is
/*
Description : This package will hold all debuging data


Name       Date        Description
---------- ----------  ------------------------------------------------
Amit Giri  04-12-2016  Initial creation
****************************************************************************************************************/

procedure data_log(p_log varchar2);
procedure error_log(p_log varchar2);

end gkt_debug;