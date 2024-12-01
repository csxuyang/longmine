ps -ef|grep ore-hq-client |grep -v grep|cut -c 9-16|`xargs kill -9`
nohup ore-hq-client mine --threads 32 >> ore.log &
