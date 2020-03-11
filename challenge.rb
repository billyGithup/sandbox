# Challenge 1
user = "Yada"
puts "Hello, my name is #{user}."

# Challenge 2
user_goal = ""
until user_goal == "quit"
  puts "To stop, enter 'quit'"

  print "Please enter one goal: "
  user_goal = gets.chomp

  puts "You entered #{user_goal.capitalize}."
end

# Challenge 3
# for i in 1..5
#   for j in 1..5
#     print "* "
#   end
#   puts
# end

for i in 1..5
  5.times {print "* "}
  puts
end
