class Vehicle
  attr_accessor :speed, :direction
  
  def initialize
    @speed = 0
    @direction = 'north'
  end

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

class Car < Vehicle
  attr_accessor :fuel, :make, :model

  def initialize(input_objects)
    super()
    @fuel = input_objects[:fuel]
    @make = input_objects[:make]
    @model = input_objects[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike < Vehicle
  attr_accessor :speed, :type, :weight

  def initialize(input_objects)
    super()
    @speed = input_objects[:speed]
    @type = input_objects[:type]
    @weight = input_objects[:weight]
  end
  def ring_bell
    puts "Ring ring!"
  end

end

my_car = Car.new({fuel: 25, make: "Mercury", model: "Grand Marquis"})
my_bike = Bike.new({speed: 20, type: "Schwinn", weight: 25})


p my_car.make
p my_bike.type