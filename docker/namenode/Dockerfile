FROM sabaicode/hadoop_base:latest

EXPOSE 9870 50070
RUN mkdir -p /opt/hadoop/data/namenode

ADD start.sh /start.sh
RUN chmod a+x /start.sh
CMD [ "./start.sh"]
# CMD [ "tail", "-f", "/dev/null" ]