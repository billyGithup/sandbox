# puts "Please enter an age."
# age = gets.chomp.to_i

# if age >= 18 and age < 21
#     puts "You made it passed 18."
# elsif age >= 21
#     puts "You are old enough to drink now."
# else
#     puts "You are too young to drink."
# end

# loop do 
#     print "Run the programm Y/N? "
#     input = gets.chomp.downcase

#     if input == "n"
#         break
#     elsif input == "y"
#         print "Please enter an age."
#         age = gets.chomp.to_i

#         if age >= 18 and age < 21
#             puts "You made it passed 18."
#         elsif age >= 21
#             puts "You are old enough to drink now."
#         else
#             puts "You are too young to drink."
#         end
#     end
#     puts
# end

# Challenge 1
# first_name = "Carlo"
# last_name = "Santos"
# saving = 3000000
# checking = 2000

# puts "#{first_name} #{last_name} has $%.2f" % checking + " in checking and $%.2f" % saving + " in saving."

#Challenge 2
# print "Please enter your first name: "
# first_name2 = gets.chomp

# print "Please enter your last name: "
# last_name2 = gets.chomp

# print "Please enter your saving balance: "
# saving2 = gets.chomp

# print "Please enter your checking balance: "
# checking2 = gets.chomp

# puts
# puts "#{first_name2.capitalize} #{last_name2.capitalize} has $%.2f" % checking2 + " in checking and $%.2f" % saving2 + " in saving."


#3/16/2020
#Challenge 1
# print "Please enter your name: "
# user_name = gets.chomp!

# puts "Hello, #{user_name}!"

#Challenge 2
# print "Please enter a number (Eg. 55, 33, or 75): "
# num_input = gets.chomp!.to_i

# for num in 1..num_input
#   print "#{num} " if num % 3 == 0
# end
# puts "These numbers are divisible by 3."

#03/18/2020
#Problem 1
=begin
def first_last6(array)
  (array.last == 6 || array.first == 6)
end

puts first_last6([1, 2, 6])
puts first_last6([6, 1, 2, 3])
puts first_last6([13, 6, 1, 2, 3])
=end

#Problem 2
=begin
def common_end(arr1, arr2)
  (arr1.first == arr2.first || arr2.last == arr1.last)
end

puts common_end([1, 2, 3], [7, 3])
puts common_end([1, 2, 3], [7, 3, 2])
puts common_end([1, 2, 3], [1, 3])
=end

#Problem 3
=begin
def rotateLeft3(array)
  array.push(array.shift)
end

p rotateLeft3([1, 2, 3])
p rotateLeft3([5, 11, 9])
p rotateLeft3([7, 0, 0])
=end