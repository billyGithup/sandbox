puts "*" * 5 + "Middle Letter Finder" + "*" * 5
puts

random_str = ""
until random_str == "quit"
  print "Enter \"quit\" to quit the program or enter a line of random letters or words: "
  random_str = gets.chomp!.downcase

  puts
  if random_str != "quit"
    if random_str.length.even?
      puts random_str[random_str.length/2-1] + random_str[random_str.length/2]
    elsif random_str.length.odd?
      puts random_str[random_str.length/2] == " " ? " <- The middle letter is a space." : random_str[random_str.length/2]
    end
    puts
  end
end