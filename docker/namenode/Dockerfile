FROM sabaicode/hadoop_base:latest
RUN mkdir -p /opt/hadoop/data/namenode
RUN ./bin/hdfs namenode -format
CMD [ "hdfs", "namenode" ]