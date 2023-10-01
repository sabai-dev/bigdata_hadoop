
# Use an official Ubuntu as a parent image
FROM sabaicode/hadoop_base:latest


# Update package repositories
RUN apt-get update

# Install Java
#RUN apt-get install -y openjdk-8-jre

# Install Apache Flume (adjust the URL as needed)
RUN wget https://downloads.apache.org/flume/1.11.0/apache-flume-1.11.0-bin.tar.gz && \
    tar -xzf apache-flume-1.11.0-bin.tar.gz && \
    mv apache-flume-1.11.0-bin /opt/flume && \
    rm apache-flume-1.11.0-bin.tar.gz

WORKDIR /opt/flume

# Set environment variables
# ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/
# RUN export JAVA_HOME
ENV FLUME_HOME /opt/flume
ENV PATH $PATH:$FLUME_HOME/bin


RUN export FLUME_HOME


# Expose the port used by Flume (if needed)
# EXPOSE 44444

# Run Flume as a daemon
#CMD ["/opt/apache-flume-1.9.0-bin/bin/flume-ng", "agent", "-n", "agent", "-c", "/etc/flume-ng/conf", "-f", "/etc/flume-ng/conf/flume.conf", "-Dflume.root.logger=INFO,console"]
CMD [ "tail", "-f", "/dev/null" ]