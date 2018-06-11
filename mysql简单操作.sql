#创建用户
CREATE USER 'elppm_user'@'%' IDENTIFIED BY 'elppm'; 

#授予全部权限
GRANT ALL ON *.* TO 'elppm_user'@'%'; 

#查看MYSQL数据库中所有用户
SELECT DISTINCT CONCAT('User: ''',user,'''@''',host,''';') AS query FROM mysql.user;