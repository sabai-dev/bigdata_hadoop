# FROM openjdk:11
FROM sabaicode/hadoop_namenode:latest

ENV SQOOP_VERSION 1.4.7
ENV POSTGRESQL_JDBC_VERSION 42.5.4
RUN apt-get update && apt-get install -y wget unzip && rm -rf /var/lib/apt/lists/*

# Download and set up Sqoop 
RUN wget https://archive.apache.org/dist/sqoop/$SQOOP_VERSION/sqoop-$SQOOP_VERSION.bin__hadoop-2.6.0.tar.gz && \
tar -xzf sqoop-$SQOOP_VERSION.bin__hadoop-2.6.0.tar.gz && \
mv sqoop-$SQOOP_VERSION.bin__hadoop-2.6.0 /opt/sqoop && \ 
rm sqoop-$SQOOP_VERSION.bin__hadoop-2.6.0.tar.gz

# Download PostgreSQL JDBC driver 
RUN wget https://jdbc.postgresql.org/download/postgresql-$POSTGRESQL_JDBC_VERSION.jar -O /opt/sqoop/lib/postgresql-$POSTGRESQL_JDBC_VERSION.jar

# Fix "Exception in thread "main" java.lang.NoClassDefFoundError: org/apache/commons/lang/StringUtils"
RUN wget http://mirrors.tuna.tsinghua.edu.cn/apache//commons/lang/binaries/commons-lang-2.6-bin.zip -P /tmp && \
unzip /tmp/commons-lang-2.6-bin.zip -d /tmp && \
mv /tmp/commons-lang-2.6/commons-lang-2.6.jar /opt/sqoop/lib/

ENV SQOOP_HOME /opt/sqoop
ENV PATH $PATH:$SQOOP_HOME/bin

CMD [ "bash" ]