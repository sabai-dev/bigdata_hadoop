FROM sabaicode/hadoop_base:latest

EXPOSE 9870 50070
RUN mkdir -p /opt/hadoop/data/namenode

ADD docker/namenode/start.sh /start.sh
ADD docker/namenode/fence.sh /fence.sh
RUN chmod a+x /fence.sh
RUN chmod a+x /start.sh
CMD [ "./start.sh"]
# CMD [ "tail", "-f", "/dev/null" ]