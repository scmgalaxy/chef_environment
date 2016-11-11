#
# Cookbook Name:: democookbook
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#=begin
#Chef::Log::info("this is my first recipe new changes")
#Chef::Log::info("the addition of module is this one #{Awesomemodule::Oracle.add(30,40)}")

=begin
file "/tmp/jagan.txt" do 
	content "hello i am Jagan, under chef traning"
	owner "root"
	group "root"
	mode  "0755"
	action :create
end
=end
=begin
directory '/etc/apache2/newfolder' do
	owner 'root'
	group 'root'
	mode '0755'
	recursive true
	action :create
end

template '/etc/apache2/newfolder/motd.txt' do
	source 'motd.erb'
	owner 'root'
	group 'root'
	mode '0755'
	variables({
     :sudoers_groups => node[:democookbook][:sudo][:groups],
     :sudoers_users => node[:democookbook][:sudo][:users]
  })
end
=end


#Chef::Log.info(node['democookbook']['my_name'])
#Chef::Log.info("my host kernal info is #{node['kernel']['name']}")
#AwesomeModule::Oracle.add(30,40)
#=end	
#Chef::Log.info("my first argumentis #{objDatabag}")
#Chef::Log.info("my first argumentis #{objDatabag['username']}")

nodename=systeminfo
systeminfo.each do |nodename|
Chef::Log.info "My data bag info #{nodename['username']}"
Chef::Log.info "My data bag info #{nodename['password']}"
Chef::Log.info "My data bag info #{nodename['address']}"
end