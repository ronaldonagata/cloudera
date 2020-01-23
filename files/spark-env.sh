export STANDALONE_SPARK_MASTER_HOST=`hostname`

export SPARK_MASTER_IP=$STANDALONE_SPARK_MASTER_HOST

### Let's run everything with JVM runtime, instead of Scala
export SPARK_LAUNCH_WITH_SCALA=0
export SPARK_LIBRARY_PATH=${SPARK_HOME}/lib
export SPARK_MASTER_WEBUI_PORT=18080
export SPARK_MASTER_PORT=7077
export SPARK_WORKER_PORT=7078
export SPARK_WORKER_WEBUI_PORT=18081
export SPARK_WORKER_DIR=/var/run/spark/work
export SPARK_LOG_DIR=/var/log/spark
export SPARK_PID_DIR='/var/run/spark/'


if [ -n "$HADOOP_HOME" ]; then
  export LD_LIBRARY_PATH=:/usr/lib/hadoop/lib/native
fi

export HADOOP_CONF_DIR=${HADOOP_CONF_DIR:-/etc/hadoop/conf}

if [[ -d $SPARK_HOME/python ]]
then
    for i in
    do
        SPARK_DIST_CLASSPATH=${SPARK_DIST_CLASSPATH}:$i
    done
fi

SPARK_DIST_CLASSPATH="$SPARK_DIST_CLASSPATH:$SPARK_LIBRARY_PATH/spark-assembly.jar"
SPARK_DIST_CLASSPATH="$SPARK_DIST_CLASSPATH:"
SPARK_DIST_CLASSPATH="$SPARK_DIST_CLASSPATH:/usr/lib/hadoop/lib/*"
SPARK_DIST_CLASSPATH="$SPARK_DIST_CLASSPATH:/usr/lib/hadoop/*"
SPARK_DIST_CLASSPATH="$SPARK_DIST_CLASSPATH:/usr/lib/hadoop-hdfs/lib/*"
SPARK_DIST_CLASSPATH="$SPARK_DIST_CLASSPATH:/usr/lib/hadoop-hdfs/*"
SPARK_DIST_CLASSPATH="$SPARK_DIST_CLASSPATH:/usr/lib/hadoop-mapreduce/lib/*"
SPARK_DIST_CLASSPATH="$SPARK_DIST_CLASSPATH:/usr/lib/hadoop-mapreduce/*"
SPARK_DIST_CLASSPATH="$SPARK_DIST_CLASSPATH:/usr/lib/hadoop-yarn/lib/*"
SPARK_DIST_CLASSPATH="$SPARK_DIST_CLASSPATH:/usr/lib/hadoop-yarn/*"
SPARK_DIST_CLASSPATH="$SPARK_DIST_CLASSPATH:/usr/lib/hive/lib/*"
SPARK_DIST_CLASSPATH="$SPARK_DIST_CLASSPATH:/usr/lib/flume-ng/lib/*"
SPARK_DIST_CLASSPATH="$SPARK_DIST_CLASSPATH:/usr/lib/paquet/lib/*"
SPARK_DIST_CLASSPATH="$SPARK_DIST_CLASSPATH:/usr/lib/avro/lib/*"