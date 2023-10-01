FROM sabaicode/hadoop_base:latest

EXPOSE 9870 50070
RUN mkdir -p /opt/hadoop/data/namenode
# RUN ./bin/hdfs namenode -format -force
CMD [ "hdfs", "namenode" ]
# CMD [ "tail", "-f", "/dev/null" ]