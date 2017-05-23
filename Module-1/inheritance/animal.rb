require "pry"
class Animal
  def speak
    puts "I am an animal"
  end
end


class Person < Animal
    def initialize(age, gender, name)
        @age = age
        @gender = gender
        @name = name
    end
end

class Box

  def initialize(w, h)
    @width = w
    @height = h
  end

  def get_area
    puts 'from box class'
    @width * @height
  end

end

class BigBox < Box

  def get_area
    puts 'from big box class'
    super()
    @width
  end

end




class Dog
  def initialize(breed)
    @breed = breed
  end

  def to_s
    "(#@breed, #@name)"
  end
end

class Lab < Dog
  def initialize(breed, name=nil)
    super(breed)
    #super
        #calls the method of the parent class
        #& passes all the arguments into the parent class
    @name = name
  end
end

puts Lab.new("Labrador", "Ben").to_s

module Walkable
  def walk
    puts "walking"
  end
end
module Swim
  def swim
    puts "swim"
  end
end

class Human

  include Walkable   #all you need to do to include the methods form the module
  include Swim
  def speak
    puts "bla bla bla"
  end

  def leg_count
    puts 2
  end
end

class Dolphin
  include Swim
  def speak
     put "squeeeeeeeeek"
  end

end
