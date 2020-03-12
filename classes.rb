class Dog
  def talk
    puts "Bark!"
  end

  def move(destination)
    puts "running to the #{destination}."
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
puts dog1.talk
puts dog1.move("Carlo")

bird1 = Bird.new
puts bird1.talk
puts bird1.move("Carlo")

cat1 = Cat.new
puts cat1.talk
puts cat1.move("Carlo")