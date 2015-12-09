class Animal
	attr_accessor :kind

	def initialize(kind)
		@kind = kind
	end

	def eat(food)
		puts "eating some #{food}"
	end

	def wake
		@state = "awake"
	end

	def sleep
		@state = "asleep"
	end
end

class Person < Animal
	attr_accessor :age, :gender, :name
	@@count = 0

	def initialize(age, gender, name)
		@type = "person"
		@age = age
		@gender = gender
		@name = name
		@@count += 1
	end

	def eat(food)
		if food == "person"
			puts "Sorry, no cannibals here"
		else
			puts "Gobble, Gobble"
		end
	end

	def speak(name)
		puts "Hi, I'm #{name}. I'm a #{type}, and I'm #{age} years old"
end

