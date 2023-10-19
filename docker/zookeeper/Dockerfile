# Use an official Java runtime as a parent image
FROM openjdk:11-jdk

# # Use an official Java runtime as a parent image
# FROM ubuntu:20.04

# # Set environment variables to non-interactive (this prevents some prompts)
# ENV DEBIAN_FRONTEND=non-interactive

# # Install dependencies
# RUN apt-get update && \
#     apt-get install -y ssh wget openjdk-11-jdk && \
#     apt-get clean
    
# # Set JAVA_HOME
# ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/
# RUN export JAVA_HOME

# Set environment variables for ZooKeeper
ENV ZOOKEEPER_VERSION 3.8.3
ENV ZOOKEEPER_HOME /opt/zookeeper

# Install necessary utilities
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

# Download and install ZooKeeper
RUN wget -q "https://dlcdn.apache.org/zookeeper/zookeeper-$ZOOKEEPER_VERSION/apache-zookeeper-$ZOOKEEPER_VERSION-bin.tar.gz" \
    && tar -xzf "apache-zookeeper-$ZOOKEEPER_VERSION-bin.tar.gz" -C /opt/ \
    && mv "/opt/apache-zookeeper-$ZOOKEEPER_VERSION-bin" $ZOOKEEPER_HOME \
    && rm "apache-zookeeper-$ZOOKEEPER_VERSION-bin.tar.gz"

# Copy over custom configurations if any (e.g., zoo.cfg)
# ADD ./zoo.cfg $ZOOKEEPER_HOME/conf/

# Expose ports
EXPOSE 2181 2888 3888

# Set the working directory inside the container
WORKDIR $ZOOKEEPER_HOME

# Command to run on container start
CMD [ "./bin/zkServer.sh", "start" ]