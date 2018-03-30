#商户报名表
SELECT am.*,a.activity_name,m.merchant_name,s.scenic_name FROM bs_activity a,bs_activity_merchant am, bs_merchant m, bs_scenic_spot s where a.id=am.aid and am.pid=m.id and m.sid=s.id;

select * from `bs_activity`;
select * from `bs_activity_record`;
select * from `sys_user`;

#查询游客活动参与记录(查详情列表)
SELECT 
    r.aid,a.activity_name, u.user_name, u.telphone,r.create_time,r.treasure,r.state
FROM
    bs_activity_record r,
    bs_activity a,
    sys_user u
WHERE
    r.aid = a.id AND r.uid = u.id and r.activity_type=1
union all
SELECT 
    r.aid,a.activity_name, u.user_name, u.telphone,r.create_time,l.name treasure,r.state
FROM
    bs_activity_record r,
    bs_activity a,
    bs_activity_line l,
    sys_user u
WHERE
    r.aid = a.id and r.line_id=l.id AND r.uid = u.id and r.activity_type=2;
    
#查询游客活动参与记录(查详情列表)
select * from (
SELECT 
    r.aid,a.activity_name, u.user_name, u.telphone,r.create_time,r.treasure,r.state
FROM
    bs_activity_record r,
    bs_activity a,
    sys_user u
WHERE
    r.aid = a.id AND r.uid = u.id and r.activity_type=1
union all
SELECT 
    r.aid,a.activity_name, u.user_name, u.telphone,r.create_time,l.name treasure,r.state
FROM
    bs_activity_record r,
    bs_activity a,
    bs_activity_line l,
    sys_user u
WHERE
    r.aid = a.id and r.line_id=l.id AND r.uid = u.id and r.activity_type=2
) t
where t.aid=2 and (t.telphone like '%137%' or t.user_name like '%137%') and t.create_time >= '2018-03-22 10:00:00' and t.create_time <= '2018-03-29 10:00:00' and t.state=1;


#查询游客活动参与记录(统计)
SELECT 
    r.aid,a.activity_name, u.user_name, u.telphone,max(r.create_time) create_time,r.treasure,count(r.treasure) treasure_num,r.state
FROM
    bs_activity_record r,
    bs_activity a,
    sys_user u
WHERE
    r.aid = a.id AND r.uid = u.id and r.activity_type=1
GROUP BY r.aid,a.activity_name ,r.treasure, r.state,u.user_name , u.telphone
union all
SELECT 
    r.aid,a.activity_name, u.user_name, u.telphone,max(r.create_time) create_time,l.name treasure,count(l.name) treasure_num,r.state
FROM
    bs_activity_record r,
    bs_activity a,
    bs_activity_line l,
    sys_user u
WHERE
    r.aid = a.id and r.line_id=l.id AND r.uid = u.id and r.activity_type=2
GROUP BY r.aid,a.activity_name , l.name, r.state,u.user_name , u.telphone;

#查询游客活动参与记录(统计)
select * from (
SELECT 
    r.aid,a.activity_name, u.user_name, u.telphone,max(r.create_time) create_time,r.treasure,count(r.treasure) treasure_num,r.state
FROM
    bs_activity_record r,
    bs_activity a,
    sys_user u
WHERE
    r.aid = a.id AND r.uid = u.id and r.activity_type=1
GROUP BY r.aid,a.activity_name ,r.treasure, r.state,u.user_name , u.telphone
union all
SELECT 
    r.aid,a.activity_name, u.user_name, u.telphone,max(r.create_time) create_time,l.name treasure,count(l.name) treasure_num,r.state
FROM
    bs_activity_record r,
    bs_activity a,
    bs_activity_line l,
    sys_user u
WHERE
    r.aid = a.id and r.line_id=l.id AND r.uid = u.id and r.activity_type=2
GROUP BY r.aid,a.activity_name , l.name, r.state,u.user_name , u.telphone) t
where t.aid=1 and t.telphone like '%137%' and t.create_time >= '2018-03-22 10:00:00' and t.create_time <= '2018-03-29 10:00:00' and t.state=1;