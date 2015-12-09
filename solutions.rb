class Animal
	attr_accessor :kind

	def initialize(kind, state)
		@kind = kind
		@state = state
	end
	def eat(food)
		prints "Animal is eating " + food
	end

	def sleep
		@state = "asleep"
	end

	def wake
		@state = "awake"
	end


end



class Person < Animal
    attr_accessor :kind, :age, :gender, :name

    def initialize(eat, sleep, wake, age, gender, name)
		@kind = person
    	@age = age
		@gender = gender
		@name = name
		@@person_count
    end
    def eat(food)
    	if food != person
    		prints "Person is eating " + food
    	else
    		nil
    	end
    end

    def greet
    	puts "Hi, I'm #{name}. I'm a person, a #{gender} and #{age} years old" 
    end
end