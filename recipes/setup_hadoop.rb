#
# Cookbook Name:: hadoop-pseudo-mode-yum
# Recipe:: setup_hadoop
#


include_recipe "hadoop-pseudo-mode-yum::copy_rpm"
include_recipe "hadoop-pseudo-mode-yum::install_cdh"
include_recipe "hadoop-pseudo-mode-yum::setup_conf"
include_recipe "hadoop-pseudo-mode-yum::namenode_format"
include_recipe "hadoop-pseudo-mode-yum::start_hdfs"
include_recipe "hadoop-pseudo-mode-yum::prepare_mapreduce_hdfs"
include_recipe "hadoop-pseudo-mode-yum::start_mapreduce"
include_recipe "hadoop-pseudo-mode-yum::setup_reboot_on"