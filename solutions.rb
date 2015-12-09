# An Animal class, with the following:

# Properties:
# kind: A string that holds the type of animal
# Instance Methods:
# eat: Takes a parameter food to eat and prints out a message that the animal is eating food
# sleep & wake: These two methods should NOT be passed any arguments. Instead, they will set an instance variable @state to the string "asleep" or "awake" respectively.

class Animal
  attr_accessor :state
  def initialize(kind)
    @type = kind
    @state = "awake"
  end

  def eat (food)
    puts "#{animal} is eating."
  end

  def sleep
    @state = "asleep"
  end

  def wake
    @state = "awake"
  end
end


cat = Animal.new("Lion")
cat.eat("Zebra")
cat.sleep

puts cat.state

# A Person class, with the following characteristics:

# Inherits from Animal
# Automatically sets @type to "person"
# Adds 3 new instance vars:
# age
# gender
# name
# Also, people aren't cannibals! Make sure your Person class overrides the existing eat method (in Animal) so that a Person cannot eat a "person"

class Person < Animal
  @@count = 0
  attr_accessor :age, :gender, :name
  def initialize(age, gender, name)
    @type = "person"
    @age = age
    @gender = gender
    @name = name
    @@count = @@count + 1
  end

  def self.count
    @@count
  end


  def eat(food)
    response = if food == "person"
      "Not a cannibal"
    else
      "#{person} is eating"
    end
    puts response
  end

