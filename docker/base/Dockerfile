FROM ubuntu:20.04

# Set environment variables to non-interactive (this prevents some prompts)
ENV DEBIAN_FRONTEND=non-interactive

# Install dependencies
RUN apt-get update && \
    apt-get install -y ssh wget openjdk-11-jdk && \
    apt-get clean

# Set JAVA_HOME
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/
RUN export JAVA_HOME

# Download and extract Hadoop
RUN wget https://downloads.apache.org/hadoop/common/hadoop-3.3.6/hadoop-3.3.6.tar.gz && \
    tar -xvf hadoop-3.3.6.tar.gz && \
    mv hadoop-3.3.6 /opt/hadoop && \
    rm hadoop-3.3.6.tar.gz

# Set Hadoop environment variables
ENV HADOOP_USER sabaicode
ENV HADOOP_HOME=/opt/hadoop
ENV HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
ENV PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin

RUN addgroup --gid 1099 ${HADOOP_USER} && useradd -m -u 1099 -g ${HADOOP_USER} ${HADOOP_USER} \
    && echo "${HADOOP_USER} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN echo 'export HADOOP_MAPRED_HOME=${HADOOP_HOME}' >> ~/.bashrc && \
    echo 'export HADOOP_COMMON_HOME=${HADOOP_HOME}' >> ~/.bashrc && \
    echo 'export HADOOP_HDFS_HOME=${HADOOP_HOME}' >> ~/.bashrc && \
    echo 'export YARN_HOME=${HADOOP_HOME}' >> ~/.bashrc

# Expose necessary ports
# EXPOSE 9870

# Set working directory
WORKDIR $HADOOP_HOME

# Default command
# ADD entrypoint.sh /entrypoint.sh
# RUN chmod a+x /entrypoint.sh
# ENTRYPOINT ["/entrypoint.sh"]
# USER $HADOOP_USER

CMD [ "tail", "-f", "/dev/null" ]
