#!/bin/bash
now=`date '+%Y-%m-%d %H:%M:%S'`

grepFlag='gateway'
thisLog='/data01/mobileadmin/watchdog.log'
 
#脚本所在目录
baseDir="/data01/mobileadmin"
sleepTime=60
 
if [ ! -f "$baseDir/watchdog.sh" ]; then
    echo "$baseDir/watchdog.sh missing, check again" > "$thisLog"
    exit
fi
 
#user=`whoami`
user="root"
if [ "$user" != "root" ]; then
    echo "this tool must run as *root*"
    exit
fi
 
while [ 0 -lt 1 ]
do
    now=`date '+%Y-%m-%d %H:%M:%S'`
    ret=`ps aux | grep "$grepFlag" | grep -v grep | wc -l`
    if [ $ret -eq 0 ]; then
        cd $baseDir
        echo "$now process not exists ,restart process now... " > "$thisLog"
        nohup java -jar gateway-service-0.0.1-RELEASE.jar &
        echo "$now restart done ..... "  > "$thisLog"
        cd $curDir
    else
        echo "$now process exists , sleep $sleepTime seconds " > "$thisLog"
    fi
    sleep $sleepTime
done
