#!/bin/bash

sudo cp /etc/hive/conf/hive-site.xml /usr/local/spark/conf

sudo cp /etc/hbase/conf/hbase-site.xml /usr/local/spark/conf

sudo cp /etc/hadoop/conf/core-site.xml /usr/local/spark/conf
sudo cp /etc/hadoop/conf/hdfs-site.xml /usr/local/spark/conf
sudo cp /etc/hadoop/conf/mapred-site.xml /usr/local/spark/conf
sudo cp /etc/hadoop/conf/yarn-site.xml /usr/local/spark/conf

sudo yum install -y mlocate
sudo updatedb

/usr/bin/docker-quickstart

sudo su hdfs -c 'hdfs dfs -chmod -R 777 /tmp/hive'
exit

