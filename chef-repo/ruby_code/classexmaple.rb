module Oracle_Repo
class Oracle
 attr_accessor :my_variable	
 def initialize(name)
 	puts "i am constructor"
 	@my_variable=name
 	#@my_variable1=surname
 end
#def myGetter
 	#@my_variable
 	#puts "values #{@my_variable}, suname #{@my_variable1}"
 #end

#def mySetter(new_set_value) #setter method 
 	#@my_variable=new_set_value
 #end
 

 end
end
instance1=Oracle_Repo::Oracle.new("chef_instace")
instance2=Oracle_Repo::Oracle.new("web_logic_instance")
instance_image1=Oracle_Repo::Oracle.new("web_logic_instance")
instance_image2=Oracle_Repo::Oracle.new("web_logic_instance")
#instance2.mySetter("docker_instance")
#puts instance1.myGetter
#puts instance2.myGetter

instance1.my_variable="my_vagrant"

#instance2=Oracle.new("mahanti")
#puts instance1.myGetter
#puts instance2.myGetter
puts instance1.my_variable

puts instance_image1.my_variable
#puts instance_image2.my_variable

#puts "type #{instance1.class}"


