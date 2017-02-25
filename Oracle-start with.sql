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

--��������
insert into automobiles values( 1,null,'����','mobile',84321.99,'Assembly');
insert into automobiles values( 2,1,'����','bodywork',19892.99,'Manufacture');
insert into automobiles values( 3,1,'���ͻ�','engine',42128,'Purchase');
insert into automobiles values( 4,1,'����','attached',15212,'Assembly');
insert into automobiles values( 5,2,'���ո�','bumper',4812.95,'Purchase');
insert into automobiles values( 6,2,'����','chassis',12795.11,'Manufacture');
insert into automobiles values( 7,2,'������','Boot',812.11,'Manufacture');
commit;

--�ֲ�sql�ű������ϰ
-- ��ѯ���ڵ�ID=1����
select level,part_id,parent_id,part_cname,part_ename,mp_cost,desribe
from automobiles
start with part_id=1 -- start with �������޶���䣬��Ȼ���Էſ��޶���������ȡ�ö������㣬ʵ�ʾ��Ƕ����
connect by prior part_id=parent_id -- ������prior��ʾ��һ����¼������ connect by prior id=parentid����˵��һ����¼��ID�Ǳ�����¼��parentid��������¼�ĸ�������һ����¼
order by level; -- level �㼶


--������ʾ
-- ���ݲ㼶������ʾ���ƣ���߲��ո�ʵ������
select level,
    lpad(' ',2*level-1)||part_cname||' '||part_ename as partName
from automobiles
start with part_id=1
connect by prior part_id=parent_id
order by level;


--ʹ���Ӳ�ѯ  ��ȻҲ������from�м����������ﵽ�Ӳ�ѯ��Ч��
-- ��ѯ���ڵ�������������������
select level,lpad(' ',2*level-1)||part_cname||' '||part_ename as partName from automobiles
start with part_id=(select part_id from automobiles where part_cname like '%��%')
connect by prior  part_id=parent_id
order by level;



--�Ե����ϵı���
-- ��ѯ������-�����Ľṹ
select level,lpad(' ',2*level-1)||part_cname||' '||part_ename as partName
from automobiles
start with part_id=(select part_id from automobiles where part_cname like '%��%')
connect by prior parent_id=part_id
order by level;


--ɾ��ָ���Ľڵ�
-- �Ե����ϵı���,�ҹ��˵�ָ���ڵ�
select level,part_id,lpad(' ',2*level-1)||part_cname||' '||part_ename as partName from automobiles
where part_cname <> '����'
start with part_id=6
connect by prior parent_id=part_id
order by level;


--ɾ����֧
select level,part_id,lpad(' ',2*level-1)||part_cname||' '||part_ename as partName from automobiles
start with part_id=6
connect by prior parent_id=part_id and part_cname <> '����'
order by level;