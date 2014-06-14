#
# Cookbook Name:: hadoop-pseudo-mode-yum
# Recipe:: start_hdfs
#


#to start all hdfs services
service "hadoop-hdfs-namenode" do
action :start
end

service "hadoop-hdfs-datanode" do
action :start
end

service "hadoop-hdfs-secondarynamenode" do
action :start
end