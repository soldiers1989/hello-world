--有俩种方法: 
--一种是声明系统游标,一种是声明自定义游标,然后后面操作一样,参数类型为 in out 或out 
--(1)声明个人系统游标.(推荐) 
--代码
create or replace p_temp_procedure
(
cur_arg out sys_refcursor; --方法1
)
begin
open cur_arg for select * from tablename;
end;

--调用
declare
cur_calling sys_refcursor;
begin
p_temp_procedure(cur_calling); --这样这个游标就有值了
for rec_next in cur_calling loop
....
end loop;
end;

--(2)在包头中申明一个游表类型,然后调用者申明一个这个类型的游标变量,传给返回游标的存储过程 ,存储过程out这个结果集,这种方法很麻烦.游标类型不能像索引表一样使用create or replace type方法来创建,所以只能在包中申明,并且需要使用/来执行,后面的存储过程才认这个游标类型.(不推荐,但是建议要知道并且要会这种方式,毕竟它有它存在的道理) 
--定义全局变量
create or replace package pkg_package
as
type type_cursor is ref cursor;  --定义了引用游标类型
type type_record is record  --定义了一种类似表结构的集合类型
(
test01 varchar2(32),
test02 varchar2(32),
test03 varchar2(32)
);
end;


--创建返回游标的存储过程 
create or replace procedure p_temp_procedure
(
cur_out_arg out pkg_package.type_cursor
)
is
begin
open cur_out_arg for select * from test;
end;

--调用
declare
cur_out_arg pkg_package.type_cursor;
rec_arg pkg_package.type_record;
begin
p_temp_procedure(cur_out_arg);
fetch cur_out_arg into rec_arg;
dbms_output.put_line(rec_arg.test01);
dbms_output.put_line(rec_arg.test02);
dbms_output.put_line(rec_arg.test03);
end;