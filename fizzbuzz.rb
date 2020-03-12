puts "*" * 5 + "Welcome To FIZZBUZZ Game" + "*" * 5

first_run = false

def get_answer(first_run)
  if !first_run
      print "Play the game? Y/N: "
  else
      print "Play the game again? Y/N: "
  end

  answer = gets.chomp.downcase

  while answer != "y" and answer != "n"
      print "Please enter only Y or N: "
      answer = gets.chomp.downcase       
  end
  return answer
end

until get_answer(first_run) == "n"

  print "Please enter a number range (Eg. 50, 35, 100, or 493): "
  range = gets.chomp.to_i

  puts
  for num in 1..range
    if num % 3 == 0 and num % 5 == 0
      print "FizzBuzz "
    elsif num % 5 == 0
      print "Buzz "
    elsif num % 3 == 0
      print "Fizz "
    else
      print "#{num} "
    end

  end
  first_run = true
  puts
  puts
end


