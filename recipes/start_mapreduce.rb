#
# Cookbook Name:: hadoop-pseudo-mode-yum
# Recipe:: start_mapreduce
#


#to start all mapreduce services
service "hadoop-0.20-mapreduce-jobtracker" do
action :start
end

service "hadoop-0.20-mapreduce-tasktracker " do
action :start
end