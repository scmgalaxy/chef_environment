module Awesomemodule #define a method called add
	def add(a,b) #return parameters 
		a+b
	end
end

class Awesomeclass
include Awesomemodule
 attr_accessor :a,:b
 def initialize(a,b)
 	@a=a
 	@b=b
 	puts "this is here"
 	end
 def add_numbers
 	add(@a,@b)
 end

end

awesomeclassobj=Awesomeclass.new(1,2)
puts "Result is #{awesomeclassobj.add_numbers}"
