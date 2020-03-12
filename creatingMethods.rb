# def print_name(name)
#   puts "Hello Mr. #{name}."
# end

# def print_sum(num1, num3 = 3, num2)
#   return num1 + num2 + num3
# end

# print_name "Billy"
# puts print_sum

# def print_something(a = 1, b = 2, c)
#   puts "#{c} #{a} #{b}\n"
# end

# def get_rec_area(w, l)
#   w * l
# end

# puts get_rec_area(2, 4)
# puts print_something 3

# def accelerate
# end

# def sound_horn
# end

# def use_headlights(brightness = "low-beam")
#   puts "Turning on #{brightness}"
# end

# def mileage(miles_drive = 0, gas_used = 0)
#   if gas_used == 0
#     return 0.0
#   end
#   miles_drive /gas_used
# end

# puts mileage()


#Messy Examples.
def talk(animal_type, name)
  if animal_type == "bird"
    puts "#{name} says Chirp Chirp"
  elsif animal_type == "dog"
    puts "#{name} says Bark Bark"
  elsif animal_type == "cat"
    puts "#{name} say Meow!"
  end
end

def move(animal_type, name, destination)
  if animal_type == "bird"
    puts "#{name} flies to the #{destination}"
  elsif animal_type == "dog"
    puts "#{name} runs to the #{destination}"
  elsif animal_type == "cat"
    puts "#{name} runs to the #{destination}!"
  end
end

def report_age(name, age)
  puts "#{name} is #{age} years old."
end

move("bird", "whistler", "tree")
talk("dog", "Sadie")
talk("bird", "Whistler")
move("cat", "Smudge", "house")
report_age("Smudge", 6)