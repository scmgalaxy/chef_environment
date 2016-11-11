module OracleInc
	class Oracle
		attr_accessor :oracle_level
		def initialize(oracle_level)
			@oracle_level=oracle_level
		end
end
end

class WebLogic < OracleInc::Oracle
	def insideweblogic
			#puts oracleobj.oracle_level
	end
end

webLogicobj=WebLogic.new(10)
oracleobj=OracleInc::Oracle.new(20)

puts webLogicobj.oracle_level
puts oracleobj.oracle_level

#puts oracle_level.insideweblogic