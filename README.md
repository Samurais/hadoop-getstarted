# Apache Hadoop Get started

## Welcome

### Standalone setup
For standalone setup with 2.8.1, check out ```etc```.

[post](http://blog.chatbot.io/development/2017/07/31/hadoop-get-started/)

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
