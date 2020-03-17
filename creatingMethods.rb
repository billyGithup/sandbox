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
# def talk(animal_type, name)
#   if animal_type == "bird"
#     puts "#{name} says Chirp Chirp"
#   elsif animal_type == "dog"
#     puts "#{name} says Bark Bark"
#   elsif animal_type == "cat"
#     puts "#{name} say Meow!"
#   end
# end

# def move(animal_type, name, destination)
#   if animal_type == "bird"
#     puts "#{name} flies to the #{destination}"
#   elsif animal_type == "dog"
#     puts "#{name} runs to the #{destination}"
#   elsif animal_type == "cat"
#     puts "#{name} runs to the #{destination}!"
#   end
# end

# def report_age(name, age)
#   puts "#{name} is #{age} years old."
# end

# move("bird", "whistler", "tree")
# talk("dog", "Sadie")
# talk("bird", "Whistler")
# move("cat", "Smudge", "house")
# report_age("Smudge", 6)

# def is_palindrome(str)
#   str.downcase.reverse == str.downcase ? true : false
# end

# puts is_palindrome("Civic")

# def make_out_word(two_symbols, word)
#   puts two_symbols.insert(-3, word)
# end

# make_out_word("<<>>", "Carlo")
# make_out_word("[[]]", "Carlo")

#03/17/2020
#Challenge 1
=begin
def sleep_in(weekday, vacation)
  if (weekday == true and vacation == true)
    puts "Sleep in!"
  elsif (weekday == true and vacation == false)
    puts "Don't sleep in!"
  elsif (weekday == false and vacation == true)
    puts "Sleep in!"
  elsif (weekday == false and vacation == false)
    puts "Sleep in!"
  end
end

sleep_in(false, false)
sleep_in(true, false)
sleep_in(false, true)
sleep_in(true, true)
=end

#Challenge 2
=begin
def diff21(number)
  num21 = 21

  if number > num21
    puts ((number - num21) * 2).abs
  else
    puts (number - num21).abs
  end
end

diff21(19)
diff21(10)
diff21(21)
=end

#Challenge 3
# =begin
def near_hundred(number)
  num100 = 100
  num200 = 200
  control_num = 10

  ((num100 - number).abs <= control_num || (num200 - number).abs <= control_num) ? true : false
end

puts near_hundred(220)
puts near_hundred(289)
puts near_hundred(190)
# =end