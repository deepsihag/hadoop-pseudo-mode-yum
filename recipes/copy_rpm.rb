#
# Cookbook Name:: hadoop-pseudo-mode-yum
# Recipe:: copy_rpm
#

os_version=node[:os_version]
os_version=os_version.split('.')

if os_version.last.eql?('x86_64')
cookbook_file "cloudera-cdh-4-0.x86_64.rpm" do
  path "/tmp/cloudera-cdh-4-0.x86_64.rpm"
  action :create_if_missing
end
elsif os_version.last.eql?('i386')
cookbook_file "cloudera-cdh-4-0.i386.rpm" do
  path "/tmp/cloudera-cdh-4-0.i386.rpm"
  action :create_if_missing
end
end
