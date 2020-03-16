class Dog
  def make_up_name
    @name = "Sandy"
  end

  def talk
    puts "#{@name} Barks!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def make_up_age
    @age = 5
  end

  def report_age
    puts "#{@name} is #{@age} years old."
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

dog1 = Dog.new
# dog1.talk
dog1.make_up_name
dog1.move("yard")
dog1.make_up_age
dog1.report_age

# bird1 = Bird.new
# puts bird1.talk
# puts bird1.move("Carlo")

# cat1 = Cat.new
# puts cat1.talk
# puts cat1.move("Carlo")