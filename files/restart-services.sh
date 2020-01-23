DAEMONS="${DAEMONS} \
    zookeeper-server \
    hadoop-hdfs-datanode \
    hadoop-hdfs-journalnode \
    hadoop-hdfs-namenode \
    hadoop-hdfs-secondarynamenode \
    hadoop-httpfs \
    hadoop-mapreduce-historyserver \
    hadoop-yarn-nodemanager \
    hadoop-yarn-resourcemanager \
    hbase-master \
    hbase-rest \
    hbase-thrift \
    hive-metastore \
    hive-server2 \
    sqoop2-server \
    spark-history-server \
    hbase-regionserver \
    hue \
    impala-state-store \
    oozie \
    solr-server \
    impala-catalog \
    impala-server"

for daemon in ${DAEMONS}; do
    sudo service ${daemon} restart
done
