# puts "Please enter an age."
# age = gets.chomp.to_i

# if age >= 18 and age < 21
#     puts "You made it passed 18."
# elsif age >= 21
#     puts "You are old enough to drink now."
# else
#     puts "You are too young to drink."
# end

loop do 
    print "Run the programm Y/N? "
    input = gets.chomp.downcase

    if input == "n"
        break
    elsif input == "y"
        print "Please enter an age."
        age = gets.chomp.to_i

        if age >= 18 and age < 21
            puts "You made it passed 18."
        elsif age >= 21
            puts "You are old enough to drink now."
        else
            puts "You are too young to drink."
        end
    end
    puts
end