--oracle存储过程调用游标例子。

--1：首先你需要创建一个包，并定义你返回的游标的类型、存储过程

create or replace package TEST_PKG is

--定义游标

type t_cur is REF CURSOR;

--存储过程声明

procedure test_proc (p_cur in out t_cur);

end TEST_PKG;


--2：然后你再创建包体

create or replace package body TEST_PKG is

--在包体中定价过程

procedure test_proc (p_cur in out t_cur)

as

begin

open p_cur for select * from test where rownum=1;

end test_proc;

end TEST_PKG ;


--3.调用返回游标的过程

create or replace procedure test1_proc as

p_cur1 test_pkg.t_cur;

p_id varchar2(100);

p_name varchar2(100);

begin

test_pkg.test_proc(p_cur1);

loop

fetch p_cur1 into p_id,p_name;

exit when p_cur1%notfound;

dbms_output.put_line(p_id);

dbms_output.put_line(p_name);

end loop;

end test1_proc;


--4.执行调用的过程

set serveroutput on

exec test1_proc;