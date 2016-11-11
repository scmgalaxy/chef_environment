class Oracle
	def break_off
		#raise "this is broken"
		puts "i am in exception"
	end
end
foo=Oracle.new
foo.break_off # This will throw a RuntimeError