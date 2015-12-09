class Animal
	attr_accessor :kind

	def initialize(kind)
		@kind = kind
	end

	def eat(food)
		puts "eating #{food}... nom nom nom"
	end

	def sleep
		puts "zzzzzZZZZZZzzzzzZZZZZ"
		@state = "asleep"
	end

	def wake
		puts "wuh? did someone say beer? i mean, grr"
		@state = "awake"
	end
end

class Person < Animal
	attr_accessor :age :gender :name
	@@count = 0

	def initialize(age, gender, name)
		@age = age
		@gender = gender
		@name = name
		@@count = @@count + 1
	end

	def eat(food)
		if food == "person" || food == "human" || food == "flesh"
			return nil
		else
			puts "eating #{food}... nom nom nom"
		end
	end

	def greet
		puts "Hi, I'm #{name}. I'm a real #{gender}, and I'm #{age} years old."
	end

	def self.count
		@@count
	end
end
