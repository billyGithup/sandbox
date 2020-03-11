remainedGuesses = 5
totalGuesses = 0

print "Please enter your first name: "
firstName = gets.chomp

puts
puts "Hello, #{firstName}! Welcome to number guessing game."
puts

loop do
    print "Play the game? Y/N: "
    ans = gets.chomp.downcase

    if ans == "n"
        break
    else
        randomNum = rand(100) + 1

        # puts "A number was made."
        # puts "Please guess the made number."

        until remainedGuesses == 0
            print "You have five #{remainedGuesses} remaining guesses: "
            guessedNum = gets.chomp.to_i

            totalGuesses += 1

            if guessedNum == randomNum
                puts "Good job, #{firstName}! You guessed my number in #{totalGuesses}!."
                remainedGuesses = 0
            elsif guessedNum < randomNum
                puts "Oops. Your guess was LOW."
                puts
            elsif guessedNum > randomNum
                puts "Oops. Your guess was HIGH."
                puts
            else
                puts "Sorry. You didn't get my number.\n My number was #{randomNum} guess(es)."
            end
            
            remainedGuesses -= 1
        end
    end
end

