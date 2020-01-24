# Cloudera Repo
The main ideia of this repo is to dockerized the cloudera solution.

Just to start I updated java and the spark version of the cloudera quick start image in the master branch. The main goal is always keeping improving this repo. 

# Steps

1. Build the image with the script build_image.sh
```
./build_image.sh
```
2. Start container with the script start_cloudera.sh
```
./start_image.sh
```

# Services in this Image

* Zookeeper-server 
* Hadoop-hdfs-datanode 
* Hadoop-hdfs-journalnode 
* Hadoop-hdfs-namenode 
* Hadoop-hdfs-secondarynamenode 
* Hadoop-httpfs 
* Hadoop-mapreduce-historyserver 
* Hadoop-yarn-nodemanager 
* Hadoop-yarn-resourcemanager 
* Hbase-master 
* Hbase-rest 
* Hbase-thrift 
* Hive-metastore 
* Hive-server2 
* Sqoop2-server 
* Spark-history-server 
* Hbase-regionserver 
* Hue 
* Impala-state-store 
* Oozie 
* Solr-server 
* Impala-catalog 
* Impala-server

## Obs

* It's worth the time to see what is being done in "files/docker-entrypoint.sh" and "Dokcerfile"