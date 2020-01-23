FROM cloudera/quickstart:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN sudo mkdir opt/tools

COPY programs/jdk-8u241-linux-x64 /usr/java/
COPY programs/spark-2.4.4-bin-hadoop2.6 /usr/local/spark
COPY files/spark-env.sh /usr/local/spark/conf
COPY files/pyspark /usr/bin
COPY files/spark-shell /usr/bin
COPY files/spark-submit /usr/bin
COPY files/restart-services.sh /home/cloudera

RUN sudo yum -y remove java && \
    echo 'export JAVA_HOME=/usr/java/jdk1.8.0_241' >> /home/cloudera/.bashrc && \
    echo 'export PATH=$PATH:$JAVA_HOME/bin' >> /home/cloudera/.bashrc && \
    sudo update-alternatives --install /usr/bin/java java /usr/java/jdk1.8.0_241/bin/java 100 && \
    sudo update-alternatives --install /usr/bin/javac javac /usr/java/jdk1.8.0_241/bin/javac 100 && \
    sudo chmod 777 -R /usr/java/ && \
    sudo chmod 755 /usr/bin/pyspark && \
    sudo chmod 755 /usr/bin/spark-shell && \
    sudo chmod 755 /home/cloudera/restart-services.sh && \
    sudo chmod 755 /usr/bin/spark-submit && \
    source /home/cloudera/.bashrc && \
    echo 'export JAVA_HOME=/usr/java/jdk1.8.0_241' >> /etc/default/cloudera-scm-server && \
    echo 'export JAVA_HOME=/usr/java/jdk1.8.0_241' >> etc/profile

COPY files/docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]