#
# hadoop-pseudo-mode Cookbook Attributes
#

# adding a comment to test
# Hadoop replication factor
default['hdfs_replication'] = 1

# Hadoop Namenode directory
default['hadoop_namenode_dir'] = '/var/lib/hadoop-hdfs/cache/hdfs/dfs/name'

# Hadoop Datanode directory
default['hadoop_datanode_dir'] = '/var/lib/hadoop-hdfs/cache/hdfs/dfs/data'

# Hadoop tmp directory
default['hadoop_tmp_dir'] = '/var/lib/hadoop-hdfs/tmp'

# mapred local directory
default['mapred_local_dir'] = '/var/lib/hadoop-mapreduce/cache/mapred/local'

# mapred system directory
default['mapred_system_dir'] = '/var/lib/hadoop-mapreduce/cache/mapred/system'

# mapred staging directory
default['mapred_staging_dir'] = '/var/lib/hadoop-mapreduce/cache/mapred/staging'

# mapred temp directory
default['mapred_temp_dir'] = '/var/lib/hadoop-mapreduce/cache/mapred/temp'
