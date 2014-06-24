class TestClass
	
	attr_reader :name
	
	def initialize(options = {})
		@name = options[:name]
	end
	
	def say_hi
		puts "Hello, " + name
	end
end