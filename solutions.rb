class Animal
  attr_accessor :kind, :state

  def initialize(kind)
    @kind = kind
    @state = ""
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
end

bird = Animal.new("bird")
bird.sleep
puts bird.state
bird.wake
puts bird.state


class Person < Animal
  attr_accessor :age, :gender, :name
  @@count = 0
  def initialize(age, gender, name)
    @kind = "person"
    @age = age
    @gender = gender
    @name = name
    @@count = @@count + 1
  end

  def self.count
    @@count
  end

  def eat(food)
    if food == "person"
      return "People dont eat people!"
    else
      return "#{name} is eating #{food}"
    end
  end

  def greet
    return "Hi, my name is #{name}. I'm a #{kind} and I'm #{age} years old."
  end
end

blanca = Person.new(21, "male", "Blanca")
puts blanca.age
puts blanca.gender
puts blanca.name
puts blanca.eat('person')
puts blanca.eat('cheese')
puts blanca.greet
puts Person.count
vega = Person.new(24, "female", "Vega")
puts Person.count








