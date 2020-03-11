# x = 0
# puts
# while x < 10
#     x += 1
#     print "#{x} "
# end
# puts
# puts

# y = 10
# while y > 0
#     print "#{y} "
#     y -= 1
# end

#Challenge 1
# print "Enter a number: "
# num = gets.chomp.to_i

# count_up = 0
# while count_up < num
#     count_up += 1
#     print "#{count_up} "
# end

# print "Enter a number: "
# num = gets.chomp.to_i

# until num == 0
#     print "#{num} "
#     num -= 1
# end

#Challenge 2
puts "*" * 5 + "Printing Number Game" + "*" * 5

first_run = false

def get_answer(first_run)
    if !first_run
        print "Play the game? Y/N: "
    else
        print "Play the game again? Y/N: "
    end
    return answer = gets.chomp.downcase
end

until get_answer(first_run) == "n"

    print "Please enter a number range (eg. 50, 35, 100, or 493): "
    range = gets.chomp.to_i

    print "Enter e to print even number. Enter o to print odd number: "
    order = gets.chomp.downcase    

    case order
    when "e"
        for even_num in 1..range
            print (even_num % 2 == 0) ? "#{even_num} " : ""
        end
        puts
    when "o"
        for odd_num in 1..range
            print (odd_num % 2 != 0) ? "#{odd_num} " : ""
        end
        puts
    else
        #More codes here
    end
    first_run = true
end

