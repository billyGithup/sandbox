secret_password = "password"
right = true

while right
  print "Please guess the password: "
  userInput = gets.chomp.downcase

  if userInput == secret_password
    puts
    puts "Good job! You guessed it right."
    puts
    break
  end
  right = true
  puts
end