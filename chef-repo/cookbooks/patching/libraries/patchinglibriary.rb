require 'mixlib/shellout'

class Helper 
	def self.check_rhel_or_oracle
		find = Mixlib::ShellOut.new("sudo yum check-update")
		find.run_command
		Chef::Log.info("#{find.run_command}")
	end

	def self.update_rhel_or_oracle
		find = Mixlib::ShellOut.new("yum check-update")
		find.run_command
		return find.stdout
	end

	def self.check_ubuntu
		find = Mixlib::ShellOut.new("apt-get update -y")
		find.run_command
		Chef::Log.info("#{find.run_command}")
	end

	def self.update_ubuntu
		find = Mixlib::ShellOut.new("cat /etc/hosts")
		find.run_command
		return find.stdout
    end
 end
