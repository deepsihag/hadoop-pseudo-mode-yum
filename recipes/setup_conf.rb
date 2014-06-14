#
# Cookbook Name:: hadoop-pseudo-mode-yum
# Recipe:: setup_conf
#


# create core-site.xml
template "/etc/hadoop/conf/core-site.xml" do
  source "core-site.xml.erb"
  mode "0644"
  variables(
    :hadoop_tmp_dir => node['hadoop_tmp_dir']
  )
end

# create hdfs-site.xml
template "/etc/hadoop/conf/hdfs-site.xml" do
  source "hdfs-site.xml.erb"
  mode "0644"
  variables(
    :hdfs_replication => node['hdfs_replication'],
	:hadoop_namenode_dir => node['hadoop_namenode_dir'],
	:hadoop_datanode_dir => node['hadoop_datanode_dir']
  )
end

# create mapred-site.xml
template "/etc/hadoop/conf/mapred-site.xml" do
  source "mapred-site.xml.erb"
  mode "0644"
  variables(
    :mapred_local_dir => node['mapred_local_dir'],
	:mapred_system_dir => node['mapred_system_dir'],
	:mapred_staging_dir => node['mapred_staging_dir'],
	:mapred_temp_dir => node['mapred_temp_dir']
  )
end

# create masters
template "/etc/hadoop/conf/masters" do
  source "masters.erb"
  mode "0644"
end

# create slaves
template "/etc/hadoop/conf/slaves" do
  source "slaves.erb"
  mode "0644"
end