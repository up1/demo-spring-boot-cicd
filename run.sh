#!/bin/sh
rm -f tpid
APP_NAME=demo
APP_JAR=$APP_NAME".jar"
nohup java -jar $APP_JAR > $APP_NAME".log" 2>&1 &
echo $! > $APP_NAME".tpid"
echo $APP_NAME Start Success!