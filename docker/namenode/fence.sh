#!/bin/bash

# Check if the Hadoop process is running
if pgrep -x "java" > /dev/null; then
  # Terminate the Hadoop process
  pkill -f "org.apache.hadoop.hdfs.server.namenode.NameNode"
fi