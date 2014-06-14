#
# Cookbook Name:: hadoop-pseudo-mode-yum
# Recipe:: prepare_mapreduce_hdfs
#


#creating /var directory on hdfs, if not created
execute "prepare hdfs" do
command "echo sudo -u hdfs hadoop fs -mkdir /var executed"
only_if "hadoop fs -mkdir /var", :user => 'hdfs'
end

#setting permission to /var firectory on hdfs
execute "permission hdfs" do
command "hadoop fs -chmod -R 1777 /var"
user "hdfs"
end