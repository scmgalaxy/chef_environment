
=begin
module Awesomemodule #define a method called add
	class Oracle
		def self.add(a,b) #return parameters 
			a+b
		end
    end
end
=end

def systeminfo # rubocop:disable MethodLength
 Chef::Log.debug "Looking for systeminfo for node #{node.name}"
 nodename = data_bag('firstdatabag')
 Chef::Log.debug "All nodename: #{nodename.inspect}"
 nodename = nodename.map do |item_id|
   nodename = data_bag_item('firstdatabag', item_id)
   Chef::Log.debug "systeminfo #{item_id}: #{nodename}"
   nodename['node'] == node.name ? nodename : nil
 end.compact
 nodename = search(:firstdatabag, "id:#{node.name}")
 Chef::Log.info "Found #{nodename.count} databags for node:#{node.name}"
 nodename
end


