--模糊查询，查询包含2的数据
select * from mobile_singleconfig_t t where regexp_like(t.moduleids,'^2$|,2(,|$)|(^|,)2,');
-- 扩展表空间
alter tablespace MOBILEDATA01 add datafile '/data01/ora11g/oradata/mobile02.dbf' size 10G;
