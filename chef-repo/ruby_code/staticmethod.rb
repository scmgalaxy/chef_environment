module AwesomeModule
	class Awesomeclass
		attr_accessor :awesome_level
		def initialize(awesome_level)
			@awesome_level=awesome_level
		end
		def self.mystatic_method
			puts " i am static method"
		end
		def mynonstatic_method
			puts "i am in non static method"
		end
 end
end

foo=AwesomeModule::Awesomeclass.new(10)
bar=AwesomeModule::Awesomeclass.new(20)

foo.awesome_level=40
puts foo.awesome_level
puts bar.awesome_level

AwesomeModule::Awesomeclass.mystatic_method
AwesomeModule::Awesomeclass.mynonstatic_method
