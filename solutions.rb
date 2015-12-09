class Animal
	@@animalCounter = 0

	def initialize(kind)
		@kind = kind
		@@animalCounter += 1
	end

	def eat(food)
		puts "#{@kind} is eating #{food}."
	end

	def sleep
		@state = "asleep"
	end

	def wake
		@state = "awake"
	end

	def self.count
    	@@animalCounter
  	end

end

class Person < Animal

	def initialize(age, gender, name)
		@kind = "person"
		@age = age
		@gender = gender
		@name = name
	end

	def eat(food)
		if(food.downcase != "person")
			puts "#{@kind} is eating #{food}."
		end
	end

	def greet
		puts "Hello, I'm #{@name}, a person, and #{@age} years old."
	end

end