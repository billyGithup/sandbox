=begin
class Vehicle
  attr_accessor :odometer, :gas_used

  def initialize(odometer, gas_used)
    @odometer = odometer
    @gas_used = gas_used
  end

  def mileage
    @odometer / @gas_used
  end

  def accelarate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beeb! Beep!"
  end

  def steer
    puts "Turn front 2 wheels"
  end
end

class Car < Vehicle

end

class Truck < Vehicle
  attr_accessor :cargo

  def load_bed(contents)
    puts "Securing #{contents} in the truck bed."
    @cargo = contents
  end
end

class Motorcycle < Vehicle
  def steer
    puts "Turn front wheel."
  end
end

# my_car = Car.new(8000, 10)
# my_car.accelarate
# my_car.steer
#
# my_truck = Truck.new(100, 40)
# my_truck.accelarate
# my_truck.steer
# my_truck.load_bed("259 bouncy balls")
# puts my_truck.cargo

my_motorcyle = Motorcycle.new(3000, 15)
my_motorcyle.accelarate
my_motorcyle.steer
=end

class Animal
  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}"
  end

  def to_s
    "#{@name} the dog, age #{@age}"
  end
end

class Dog < Animal

end

class Bird < Animal
  def talk
    puts "#{@name} says Chirp Chirp!"
  end
end

class Cat < Animal
  def talk
    puts "#{@name} says Meow!"
  end
end

class Amadillo < Animal
  def move(destination)
    puts "#{@name} unrolls!"
    # super(destination)
    super #This will take the destination param and passes it to the move method in the superclass by default.
  end
end

# whiskers = Cat.new
# whiskers.name = "Whiskers"
# whiskers.talk
#
# polly = Bird.new
# polly.name = "Polly"
# polly.talk

dillo = Amadillo.new
dillo.name = "Dillo"
dillo.age = 10
dillo.move("burrow")

puts dillo
