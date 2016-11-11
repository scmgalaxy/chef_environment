#
# Cookbook Name:: patching
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
# 
#chef_gem 'mixlib-shellout'

if %w{ubuntu debian}.include?(node['platform'])
	Chef::Log.info("i am in platform #{node['platform']}")
	Chef::Log.info(Helper.update_ubuntu)
elsif %w{oracle rhel centos redhat}.include?(node['platform'])
	Chef::Log.info("i am in platform #{node['platform']}")
	Chef::Log.info(Helper.update_rhel_or_oracle)
else
	Chef::Log.info("i am in different platform")
end