require "pry"
class Laptop
  attr_accessor :on, :brand
  @@all = []
  ALL = "id key"

  def self.all
    @@all
  end
  def initialize color
    @color = color
    @on = false
    @@all << self
  end
  #this is a getter method
  def color
    @color
  end
  #this is a setter method
  def color= c
    @color = c
  end

  def who_am_i
    self
  end


end

mac = Laptop.new("Red")
binding.pry
