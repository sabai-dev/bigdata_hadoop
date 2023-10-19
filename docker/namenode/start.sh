#!/bin/bash

# Location where the NameNode metadata is stored. 
# You might want to pull this from hdfs-site.xml or set it directly.
NAMENODE_DIR="/opt/hadoop/data/namenode"

if [ ! -d "$NAMENODE_DIR" ]; then
    echo "NameNode directory doesn't exist!"
    tail -f /dev/null
elif [ -z "$(ls -A $NAMENODE_DIR)" ]; then
    echo "NameNode has not been formatted."
    ./bin/hdfs namenode -format -force
    hdfs namenode
else
    echo "NameNode is already formatted."
    hdfs namenode
fi

chmod +x /fence.sh