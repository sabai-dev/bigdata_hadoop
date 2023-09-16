FROM sabaicode/hadoop_base:latest

EXPOSE 9870 50070
RUN mkdir -p /opt/hadoop/data/namenode
RUN ./bin/hdfs namenode -format
CMD [ "hdfs", "namenode" ]