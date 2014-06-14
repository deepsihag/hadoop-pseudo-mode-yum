#
# Cookbook Name:: hadoop-pseudo-mode-yum
# Recipe:: install_cdh
#


#install jdk 1.7.0
yum_package "java-1.7.0-openjdk" do

end

os_version=node[:os_version]
os_version=os_version.split('.')



#install 1-click CDH package
if os_version.last.eql?('x86_64')
package "1-click install x86" do
source "/tmp/cloudera-cdh-4-0.x86_64.rpm"
end
elsif os_version.last.eql?('i386')
package "1-click install i386" do
source "/tmp/cloudera-cdh-4-0.i386.rpm"
end
end

#Add a Repository Key
execute "Add a Repository Key" do
cwd "/tmp"
only_if "rpm --import http://archive.cloudera.com/cdh4/redhat/6/x86_64/cdh/RPM-GPG-KEY-cloudera"
command "echo Repository Key added"
end

#install Hadoop with Mapreduce
package "hadoop-0.20-mapreduce-jobtracker" do
end

package "hadoop-hdfs-namenode" do
end

package "hadoop-hdfs-secondarynamenode" do
end

package "hadoop-0.20-mapreduce-tasktracker" do
end

package "hadoop-hdfs-datanode" do
end

package "hadoop-client" do
end
