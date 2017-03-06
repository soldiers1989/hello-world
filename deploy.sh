#!/bin/bash
startTime=`date "+%Y-%m-%d %H:%M:%S"`
echo $startTime '-------------- begin to deploy ' $1  ' -------------------' >> ~/microservice/deploy.log

#jarName
#jarName=$(echo $1 | awk -F '/' '{print $2}')
#echo "jarName  is:[" $jarName ']' >> ~/microservice/deploy.log

#module name,eg:icpci
module=$(echo $1 | awk -F '-' '{print $1}')
echo "module  is:[" $module ']' >> ~/microservice/deploy.log

#microservice version, eg:0.0.1
version=$(echo $1 | awk -F '-' '{print $3}')
echo "microservice name  is:[" $module$version ']' >> ~/microservice/deploy.log

#assign exec right
sudo chown -R mobileadmin:mobileadmin /dev/pts
chmod 755 ~/microservice/*.jar

#scp local to remote
#scp $1 mobileadmin@10.2.109.113:/data01/mobileadmin/microservice/$1

#execute remote shell
#ssh mobileadmin@10.2.109.113 'sh /data01/mobileadmin/microservice/deploy.sh $1 >/dev/null 2>&1 &'

# stop micro service
screen -S $module$version -X quit

#start micro service
screen -dmS $module$version java -Xms64m -Xmx512m -XX:+UseG1GC -jar ~/microservice/$1
sleep 15

endTime=`date "+%Y-%m-%d %H:%M:%S"`
echo $endTime '-------------- deploy ' $1 ' succfully -------------------' >> ~/microservice/deploy.log
