class Animal
	attr_accessor :kind

	def eat(food)
		puts @kind+" is eating "+food	
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
	attr_accessor :age, :gender, :name
	def initialize(age, gender, name)

		@age = age
		@gender = gender
		@name = name
		@kind = "person"
		@@count = @@count + 1
	end

	def eat(food)
		if food == "person"
			return
		end
		puts @name+" is eating "+food
	end

	def greet
		puts "Hi, I'm #{@name}. I'm a #{@kind}, and I'm #{@age} years old"
	end

end

victoria = Person.new(28,"f","Victoria")
victoria.eat("banana")	
victoria.eat("person")	
victoria.greet
