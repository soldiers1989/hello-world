#集字卡
SELECT * FROM `bs_activity`;
SELECT * FROM `bs_activity_card`;
SELECT * FROM `bs_award_set`;

SELECT * FROM `bs_activity`;
SELECT * FROM `bs_activity_line`;
SELECT * FROM `bs_award_set`;

truncate table bs_activity;
truncate table bs_activity_card;
truncate table bs_award_set;

#查询商户报名信息
SELECT * FROM `bs_activity`;
SELECT * FROM `bs_activity_merchant`;
SELECT * FROM `bs_merchant`;
SELECT * FROM `bs_scenic_spot`;

select * from sys_user;
select * from sys_role;
select * from sys_union;

#查询用户角色 rid 角色ID,oid:用户ID
#角色,1:政府;2:平台;3:景区;4:商户;5:游客
select * from sys_union where type=4 and oid=1;

