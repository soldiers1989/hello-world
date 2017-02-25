create table automobiles(
       part_id number(5)
         constraint pk_auto_part_id primary key,
       parent_id number(5)
         constraint fk_auto_ppid_ references  automobiles(part_id),
       part_cname varchar2(30) not null,
       part_ename varchar2(30) not null,
       mp_cost number(9,2),
       desribe varchar2(20)    
);
commit;

--插入数据
insert into automobiles values( 1,null,'汽车','mobile',84321.99,'Assembly');
insert into automobiles values( 2,1,'车身','bodywork',19892.99,'Manufacture');
insert into automobiles values( 3,1,'发送机','engine',42128,'Purchase');
insert into automobiles values( 4,1,'附件','attached',15212,'Assembly');
insert into automobiles values( 5,2,'保险杠','bumper',4812.95,'Purchase');
insert into automobiles values( 6,2,'底盘','chassis',12795.11,'Manufacture');
insert into automobiles values( 7,2,'行李箱','Boot',812.11,'Manufacture');
commit;

--分层sql脚本语句练习
-- 查询根节点ID=1的树
select level,part_id,parent_id,part_cname,part_ename,mp_cost,desribe
from automobiles
start with part_id=1 -- start with 根结点的限定语句，当然可以放宽限定条件，以取得多个根结点，实际就是多棵树
connect by prior part_id=parent_id -- 其中用prior表示上一条记录，比如 connect by prior id=parentid就是说上一条记录的ID是本条记录的parentid，即本记录的父亲是上一条记录
order by level; -- level 层级


--缩进显示
-- 根据层级缩进显示名称，左边补空格实现缩进
select level,
    lpad(' ',2*level-1)||part_cname||' '||part_ename as partName
from automobiles
start with part_id=1
connect by prior part_id=parent_id
order by level;


--使用子查询  当然也可以在from中加入条件来达到子查询的效果
-- 查询根节点中文名包含‘身’的树
select level,lpad(' ',2*level-1)||part_cname||' '||part_ename as partName from automobiles
start with part_id=(select part_id from automobiles where part_cname like '%身%')
connect by prior  part_id=parent_id
order by level;



--自底向上的遍历
-- 查询出“子-父”的结构
select level,lpad(' ',2*level-1)||part_cname||' '||part_ename as partName
from automobiles
start with part_id=(select part_id from automobiles where part_cname like '%身%')
connect by prior parent_id=part_id
order by level;


--删除指定的节点
-- 自底向上的遍历,且过滤掉指定节点
select level,part_id,lpad(' ',2*level-1)||part_cname||' '||part_ename as partName from automobiles
where part_cname <> '底盘'
start with part_id=6
connect by prior parent_id=part_id
order by level;


--删除分支
select level,part_id,lpad(' ',2*level-1)||part_cname||' '||part_ename as partName from automobiles
start with part_id=6
connect by prior parent_id=part_id and part_cname <> '底盘'
order by level;