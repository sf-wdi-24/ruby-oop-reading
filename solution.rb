class Animal
	attr_accessor :kind

	def initialize(kind)
		@kind = kind
	end

	def eat(food)
		puts "I always love to eat #{food}."
	end

	def sleep
		@state = "Quiet please, I'm trying to sleep!"
	end

	def awake
		@state = "I feel so energized now."
	end
end

bird = Animal.new("Hawk")
bird.eat("Fishes")
puts bird.sleep

######################################

class Person < Animal
	
	attr_accessor :age, :gender, :name
	@@count = 0

	def initialize(age, gender, name)
		@type = "human"
		@age = age
		@gender = gender
		@name = name
		@@count += 1
	end

	def eat(food)
		if food == "person" or food == "human"
			return puts "Human does not eat other human."
		else
			puts "#{food} is yummy."
		end
	end

	def greet
		puts "Hi, my name is #{@name}, I'm a #{@type} and I'm #{@age} years old."
	end

	def self.count
		@@count
	end
end

trung = Person.new(30, "male", "Trung")
smith = Person.new(26, "male", "Smith")
trung.eat("human")
trung.eat("sushi")
trung.greet
Person.count
