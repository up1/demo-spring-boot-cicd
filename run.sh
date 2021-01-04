#!/bin/sh
kill -9 `cat demo.tpid`
APP_NAME=demo
APP_JAR=$APP_NAME".jar"
nohup java -jar $APP_JAR > $APP_NAME".log" 2>&1 &
echo $! > $APP_NAME".tpid"
while ! timeout 1 bash -c "echo > /dev/tcp/localhost/8080"; do sleep 3; done
echo $APP_NAME Start Success!