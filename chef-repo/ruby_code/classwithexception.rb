class SuperSeriosProblem < Exception #our new custom exception class
end

class Oracle
def break_stuff
	raise SuperSeriosProblem.new("whoa, this is Broken!")
	puts "i am here"
end
end

foo=Oracle.new
begin
	foo.break_stuff
raise SuperSeriosProblem => ex #which we are now handling
puts "#{ex.message}"
end


