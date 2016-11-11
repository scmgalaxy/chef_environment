action :prepare do 
	#directory new_resource.working_dir do
	#action :create
	#recursie
	Chef::Log.info("i am in prepare action")
end

action :cleanup do
	#Chef::Log.info("i am in cleanup actio #{new_resource}")
	  Chef::Log.info("I am in cleanup action #{new_resource.working_dir}")
	  Chef::Log.info("i am in cleanup action #{new_resource.config_file}")
	end
