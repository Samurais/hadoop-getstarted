# Apache Hadoop Get started

![](https://camo.githubusercontent.com/ae91a5698ad80d3fe8e0eb5a4c6ee7170e088a7d/687474703a2f2f37786b6571692e636f6d312e7a302e676c622e636c6f7564646e2e636f6d2f61692f53637265656e25323053686f74253230323031372d30342d30342532306174253230382e32302e3437253230504d2e706e67)

# Welcome

## Standalone setup
For standalone setup with 2.8.1, check out ```etc```.
```
wget https://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/core/hadoop-2.8.1/hadoop-2.8.1.tar.gz
```

Further reading [post](http://blog.chatbot.io/development/2017/07/31/hadoop-get-started/)
.

## TL; DR

```
## enable ssh
ssh localhost

## config
etc/hadoop/hadoop-env.sh # set JAVA_HOME
etc/hadoop/core-site.xml
etc/hadoop/mapred-site.xml
etc/hadoop/yarn-site.xml
etc/hadoop/slaves

## init
$HADOOP_HOME/bin/hdfs namenode -format

$HADOOP_HOME/bin/hdfs getconf -namenodes

## start

$HADOOP_HOME/sbin/start-dfs.sh

$HADOOP_HOME/sbin/mr-jobhistory-daemon.sh --config $HADOOP_CONF_DIR start historyserver

$HADOOP_HOME/sbin/start-yarn.sh
```

### validate status
```
jps # print processes

open http://IP:8088 # yarn client
```

## Streaming demo
```
demo/
```
