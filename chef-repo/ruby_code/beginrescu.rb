class Oracle
 def break_stuff
 	puts "i am here"
 	raise "Whoa, this is broken"
 end
end

foo=Oracle.new
begin
	foo.break_stuff
rescue 
	puts "look like there is an Exception"
end
