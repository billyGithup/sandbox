puts "***Calculate Gross Income App***"

MONTHS_IN_ONE_YEAR = 12
first_run = false
result = 0

ans = ""
until ans == "n"
  puts
  if !first_run
    print "Start the calculation? Y/N: "
    first_run = true
  else
    print "Do another calculation? Y/N: "
  end
  ans = gets.chomp

  case ans
  when "y"
    puts
    print "Please enter your monthly paycheck amount: "
    paycheck_amount = gets.chomp.to_i

    print "Please enter the number(s) of year: "
    year_numbers = gets.chomp.to_i
    year_in_months = year_numbers * MONTHS_IN_ONE_YEAR

    result = paycheck_amount * year_in_months
    puts
    puts "Your total gross income is $%.2f" % result
  when "n"
    exit
  end
end