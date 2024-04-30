#!/bin/bash
if [ ! -d "/root/longmine" ]; then
  git clone https://github.com/csxuyang/longmine.git
fi
cd ./longmine/ && git pull
PROC_NAME=config-xkr.json
ProcNumber=`ps -ef |grep -w $PROC_NAME|grep -v grep|wc -l`
if [ $ProcNumber -le 0 ];then
   echo "xkr is not run"
   /root/longmine/xmrig -c /root/longmine/config-xkr.json -l /root/longmine/xkr.log -B
   ehco "xkr start"
else
   echo "xkr is running.."
fi

