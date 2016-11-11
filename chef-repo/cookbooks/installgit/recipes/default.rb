#
# Cookbook Name:: installgit
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#remote_file is a resource 

remote_file "C:\Git-2.10.2-64-bit.exe" do
	source "https://github.com/git-for-windows/git/releases/download/v2.10.2.windows.1/Git-2.10.2-64-bit.exe"
	action :create
	not_if { File.exists?('C:\Git-2.10.2-64-bit.exe')}
end

execute 'install_git' do
   command "C:\\Git-2.10.2-64-bit.exe /SILENT"
end