#
# Cookbook Name:: datavault
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
chef_gem "chef_vault"
require "chef_vault"

vault = ChefVault::Item.load('delta_user_details','user1')
Chef::Log.info("user name is = #{vault['user']['details']['name']}")
Chef::Log.info("user name is = #{vault['user']['details']['lastname']}")
Chef::log.info("user name is = #{vault['user']['details']['password']}")