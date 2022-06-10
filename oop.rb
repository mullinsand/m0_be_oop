# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
=begin
class Unicorn
  attr_reader :say
  def initialize(can_fly, horn_type)

    @can_fly = can_fly
    @horn_type = horn_type
    @color = "silver"

  end

  def say(message)
    "*~*#{message}*~*"
  end
end

unicorn1 = Unicorn.new(true, "straight")
p unicorn1.say("I'm a Unicorn!")


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
  attr_reader :pet, :is_thirsty
  def initialize(age)
    @age = age
    @pet = "bat"
    @is_thirsty = true
  end

  def change_pet(new_pet)
    @pet = new_pet
  end

  def drink
    @is_thirsty = false
  end

end

dracula = Vampire.new(1590)
p dracula
dracula.change_pet("werewolf")
p dracula
dracula.drink
p dracula


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
  attr_reader :times_eaten, :is_hungry
  def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
    @times_eaten = 0
  end

  def eat(times_eaten)
      @times_eaten = times_eaten
      if times_eaten == 4
        @is_hungry = false
      end
  end

end

smaug = Dragon.new("smaug", "none", "gold")
p smaug
smaug.eat(2)
p smaug
smaug.eat(4)
p smaug

=end
#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
  attr_reader :name, :age, :is_adult, :is_old, :has_ring
  def initialize(name, disposition)
    @name = name
    @disposition = disposition
    @age = 0
    @is_adult = false
    @is_old = false
    @has_ring = false
  end

  def celebrate_birthday
    @age = age + 1
    if @age >= 33
      @is_adult = true
    elsif @age >= 101
      @is_old = true
    end
  end

  def set_age(arbitrary_age)
    @age = arbitrary_age
  end

  def ring_bearer
    if @name == "Frodo"
      @has_ring = true
    end
  end
end

sam = Hobbit.new("Sam", "cheerful")
p sam

sam.celebrate_birthday
p sam

sam.set_age(32)
sam.celebrate_birthday
p sam

sam.set_age(100)
sam.celebrate_birthday
p sam
