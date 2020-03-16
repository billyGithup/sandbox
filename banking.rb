$current_balance = 1000
$user_name = ""
menu = "Menu:\nd -> Deposit\nc -> Check balance\nw -> Withdraw\nx -> Exit"
input_action = ""

def do_deposit()
  bool = true
  while bool
    print "How much would you like to deposit?: "
    deposit_amount = gets.chomp
  
    if deposit_amount.empty?
      puts
      puts "The deposit value cannot be empty."
      puts
      next
    elsif deposit_amount !~ /\D/
      $current_balance += deposit_amount.to_i
      puts
      puts "Name: #{$user_name}\nCurrent Balance: $%.2f" % $current_balance
      bool = false  
    else
      puts
      puts "Please enter number only for the deposit amount."
    end  
  end
end

def do_withdrawal()
  bool = true
  while bool
    print "How much would you like to withdraw?: "
    withdrawal_amount = gets.chomp

    if withdrawal_amount.empty?
      puts
      puts "The withdrawal value cannot be empty."
      puts
      next
    elsif withdrawal_amount !~ /\D/
      if withdrawal_amount.to_i > $current_balance
        puts
        puts "Sorry, you don't have enough balance."
      else
        $current_balance -= withdrawal_amount.to_i
        puts
        puts "Name: #{$user_name}\nCurrent Balance: $%.2f" % $current_balance
        bool = false
      end
    else
      puts
      puts "Please enter number only for the withdrawal amount."
    end
  end
end

def print_current_balance()
  puts
  puts "Your current balance is $%.2f" % $current_balance
end

puts "-" * 4 + "Welcome To Banking App" + "-" * 4
puts

print "Please enter your name: "
$user_name = gets.chomp

until input_action == "x"
  puts menu
  print "What would you like to do?: "
  input_action = gets.chomp.downcase

  if input_action == "d"
    do_deposit
  elsif input_action == "w"
    do_withdrawal
  elsif input_action == "c"
    print_current_balance
  elsif input_action == "x"
    exit
  else
    puts
    puts "Please choose one of the options in the menu."
  end
  puts
end