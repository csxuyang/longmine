ps -ef|grep shaipot |grep -v grep|cut -c 9-16|xargs kill -9
nohup /root/shaipot/target/release/shaipot --address sh1qts342juwawytvz2fsccr4jlvfje5hxwu706jnk  --pool wss://pool.shaicoin.fun --threads 31 >> shaipot.log &
