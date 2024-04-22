#!/bin/bash
ps -ef|grep config-xkr.json |grep -v grep|cut -c 9-16|`xargs kill -9` 
~/longmine/xmrig -c ~/longmine/config-xkr.json -l ~/longmine/xkr.log -B
echo "run done"
