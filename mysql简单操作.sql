#创建用户
CREATE USER 'elppm_user'@'%' IDENTIFIED BY 'elppm'; 

#授予全部权限
GRANT ALL ON *.* TO 'elppm_user'@'%'; 