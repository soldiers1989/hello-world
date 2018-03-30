select * from `bs_award_records`;
select * from `bs_activity`;
select * from `bs_award_set`;

#查询用户兑奖记录列表
SELECT 
    r.aid,
    a.activity_name,
    u.user_name,
    u.telphone,
    r.create_time,
    s.reward_name,
    r.num,
    r.state
FROM
    bs_award_records r,
    bs_activity a,
    bs_award_set s,
    sys_user u
WHERE
    r.aid = a.id AND r.gid=s.id and r.uid = u.id;
    
#查询兑奖详情(审核页面)
SELECT 
    r.*,
    a.activity_name,
    u.user_name,
    u.telphone,
    u.user_address,
    u.receiver,
    u.receiver_telephone,
    s.reward_name
FROM
    bs_award_records r,
    bs_activity a,
    bs_award_set s,
    sys_user u
WHERE
    r.aid = a.id AND r.gid = s.id AND r.uid = u.id and r.id=1