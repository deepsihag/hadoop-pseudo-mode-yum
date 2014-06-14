#
# Cookbook Name:: hadoop-pseudo-mode-yum
# Recipe:: setup_reboot_on
#


# to set all services to auto start on reboot
execute "chkconfig namenode" do  
  command " chkconfig hadoop-hdfs-namenode on"
  action :run
end

execute "chkconfig datanode" do  
  command " chkconfig hadoop-hdfs-datanode on"
  action :run
end

execute "chkconfig sec-namenode" do  
  command " chkconfig hadoop-hdfs-secondarynamenode on"
  action :run
end

execute "chkconfig jobtracker" do  
  command " chkconfig hadoop-0.20-mapreduce-jobtracker on"
  action :run
end

execute "chkconfig tasktracker" do  
  command " chkconfig hadoop-0.20-mapreduce-tasktracker on"
  action :run
end