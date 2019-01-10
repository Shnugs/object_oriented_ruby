module Movement
  attr_reader :speed, :direction
  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  include Movement

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Movement

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def ring_bell
    puts "Ring ring!"
  end
end

my_car = Car.new
my_bike = Bike.new 

puts "Bike Speed: #{my_bike.speed}"
my_bike.accelerate
puts "Bike has accelerated!"
puts "Bike Speed: #{my_bike.speed}"

