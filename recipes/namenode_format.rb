#
# Cookbook Name:: hadoop-pseudo-mode-yum
# Recipe:: namenode_format
#


#formatting the Namenode, if not formatted
execute "namenode format" do
command "hadoop namenode -format"
user "hdfs"
action :run
not_if { ::Dir.exists?"#{node['hadoop_namenode_dir']}" }
end