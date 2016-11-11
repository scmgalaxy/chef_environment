class Returnclass
     def initialize(name)
         @my_variable=name
     end

     def myGetter #getter method
 	    @my_variable
     end

     def mySetter(new_set_value) #setter method 
 	   @my_variable=new_set_value
     end
end

obj1=Returnclass.new("Jagan")
obj2=Returnclass.new("mahanti")
obj2.mySetter("chef")
puts obj1.myGetter
puts obj2.myGetter