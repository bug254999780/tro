# tro
http://120.26.198.195:8000/tro-upms-server

http://120.26.198.195:8000/tro-upms-server/manage/index
```


##

C:\Windows\System32\drivers\etc
hosts添加
127.0.0.1	upms.tro.cn	monitor.tro.cn

tail -f /root/tomcat/apache-tomcat-7.0.70/logs/catalina.out


tail -f /root/tomcat/apache-tomcat-7.0.70/logs/tro-upms-server.log



cd /app/service
tar -zxvf tro-monitor-rpc-service-assembly.tar.gz
tar -zxvf tro-upms-rpc-service-assembly.tar.gz

sed -i "s/\r//" tro-monitor-rpc-service/bin/start.sh
sed -i "s/\r//" tro-upms-rpc-service/bin/start.sh

tro-upms-rpc-service/bin/start.sh
tail -f /app/service/tro-upms-rpc-service/logs/stdout.log


tro-monitor-rpc-service/bin/start.sh
tail -f /app/service/tro-monitor-rpc-service/logs/stdout.log

rm -rf /root/tomcat/apache-tomcat-7.0.70-1111/webapps/tro-upms*
rm -rf /root/tomcat/apache-tomcat-7.0.70-1112/webapps/tro-monitor-admin*

rm -rf tro-*

cd /root/tomcat/apache-tomcat-7.0.70-1111/webapps/
sh /root/tomcat/apache-tomcat-7.0.70-1111/bin/startup.sh
tail -f /root/tomcat/apache-tomcat-7.0.70-1111/logs/catalina.out

cd /root/tomcat/apache-tomcat-7.0.70-1112/webapps/
sh /root/tomcat/apache-tomcat-7.0.70-1112/bin/startup.sh
tail -f /root/tomcat/apache-tomcat-7.0.70-1112/logs/catalina.out

```