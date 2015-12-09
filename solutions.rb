class Animal
	attr_accessor :type, :state 

	def initialize(type)
		@type = type
		@state = state
	end

	def eat(food)
		puts "Now eating " + food
	end
	
	def sleep
		@state = "asleep"
	end
	
	def wake
		@state = "awake"
	end
end

class Person < Animal
	attr_accessor :type, :age, :gender, :name
	def initialize(age, gender, name)
		@type = "person"
		@age = age
		@gender = gender
		@name = name
	end

	def eat(food)
		if food == "person"
			puts "FOR SHAME!"
		else
			puts "Now eating " + food
		end
	end
end
