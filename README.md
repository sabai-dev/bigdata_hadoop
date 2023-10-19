# bigdata_hadoop

Order To Start Hadoop Cluster with Zookeeper

1. Start Zookeeper: ZooKeeper is a distributed coordination service, which is used by Hadoop HA to manage the active and standby states of NameNodes. Therefore, it's crucial to start ZooKeeper
    $zkServer.sh start
2. Start JournalNode: JournalNodes store the edit logs of the NameNode. In an HA cluster, changes made to the HDFS namespace are recorded on all the JournalNodes.
    $hdfs journalnode
3. Format the active NameNode
    $hdfs --daemon start namenode
4. Sync the initial state to the standby NameNode

5. Start both NameNodes (separate terminals)
    $hdfs haadmin -transitionToActive nn1 #Run in namenode1 to set it as default active namenode
6. Start DataNodes
    $
7. Test the HA Setup: Force a manual failover to ensure failover is working
    $hdfs haadmin -failover nn1 nn2
8. Making the NameNode Active
    $hdfs haadmin -transitionToActive <namenodeID>
9. List all NameNodes and their current statuses (active or standby) 
    $hdfs haadmin -getAllServiceState