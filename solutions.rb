class Animal
	attr_accessor :kind
	def initialize (kind)
		@kind = kind
		@state = ""
	end

	def eat(food)
		puts @kind + " ate"
	end

	def sleep
		@state = "asleep"
	end

	def wake
		@state = "awake"
	end
end

class Person < Animal
	@@count = 0
	def initialize (age, gender, name)
		@kind = "person"
		@state = ""
		@age
		@gender = gender
		@name = 
		@@count+=1
	end

	def eat(food)
		if food == person
			return "person can not eat person"
		end
		puts @kind + " ate"
	end

	def greet
		puts "Hi, I'm #{self.name}. I'm a person - #{self.gender}, and I'm #{self.age} years old."
	end

	def self.count
    @@count
  end
def
