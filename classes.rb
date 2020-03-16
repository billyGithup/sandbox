class Dog
  attr_accessor :name, :age

  def talk
    puts "#{name} Barks!"
  end

  def move(destination)
    puts "#{name} runs to the #{destination}."
  end

  def make_up_age
    @age = 5
  end

  def report_age
    puts "#{name} is #{age} years old."
  end
end

class Cat
  def talk
    puts "Meow!"
  end

  def move(destination)
    puts "Running to the #{destination}."
  end
end

class Bird
  def talk
    puts "Chirp Chirp!"
  end

  def move(destination)
    puts "Flying to the #{destination}."
  end
end

class Mage
  attr_reader :name, :age

  def name=(name)
    if name == ""
      raise "Name cannot be blank!"
    end
    @name = name
  end

  def age=(age)
    if age < 0
      raise "An age of #{age} isn't valid."
    end
    @age = age
  end

  # def enchant(target)
  #   puts "#{name} casts #{spell} on #{target.name}!"
  #   puts @name + " casts " + @spell + " on " + target.name + "!"
  # end

  def report_age
    puts "#{@name} is #{age} year(s) old."
  end
end

mage1 = Mage.new
mage1.name = "Rik"
mage1.age = 1
mage1.report_age
# mage1.enchant(mage2) #mage2 instance is not defined (instantiated) yet when this line is executed.

# mage2 = Mage.new
# mage2.name = "Rose"
# mage2.spell = "ice"
# mage2.enchant(mage1)


# dog1 = Dog.new
# dog1.name = "Bowser"
# dog1.move("castle")
# dog1.age = 10
# dog1.report_age

# bird1 = Bird.new
# puts bird1.talk
# puts bird1.move("Carlo")

# cat1 = Cat.new
# puts cat1.talk
# puts cat1.move("Carlo")