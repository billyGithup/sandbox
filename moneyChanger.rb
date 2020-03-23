FIFTY_BILL = 50
TWENTY_BILL = 20
TEN_BILL = 10
FIVE_BILL = 5
QUARTER = 25
DIME = 10
NICKEL = 5

input_amount = ""
menu = "1 -> 50-dollar bills.\n" +
    "2 -> 20-dollar bills.\n" +
    "3 -> 10-dollar bills.\n" +
    "4 -> 5-dollar bills.\n" +
    "5 -> QUARTERS.\n" +
    "6 -> DIMES.\n" +
    "7 -> NICKELS.\n" +
    "8 -> PENNIES.\n" +
    "9 -> Enter another amount.\n" +
    "0 -> Exit the program."

def change_to_50(amount)
  fifty_bill_cnt = 0
  twenty_bill_cnt = 0
  ten_bill_cnt = 0
  five_bill_cnt = 0
  remainder = 0
  amount_f = amount.to_i

  if amount_f == FIFTY_BILL
    "The amount you put in was $#{FIFTY_BILL}"
  elsif amount_f < FIFTY_BILL
    "The amount cannot be changed to 50-dollar bill(s)."
  else
    fifty_bill_cnt += amount_f / FIFTY_BILL
    remainder = amount_f - (fifty_bill_cnt * FIFTY_BILL)
    twenty_bill_cnt += remainder / TWENTY_BILL
    remainder -= (twenty_bill_cnt * TWENTY_BILL)
    ten_bill_cnt += remainder / TEN_BILL
    remainder -= (ten_bill_cnt * TEN_BILL)
    five_bill_cnt += remainder / FIVE_BILL
    remainder -= (five_bill_cnt * FIVE_BILL)

    "Your change(s) of $#{amount}: #{fifty_bill_cnt} fifty-dollar bill(s)  #{twenty_bill_cnt} twenty-dollar bill(s)  #{ten_bill_cnt} ten-dollar bill(s)" +
        "  #{five_bill_cnt} five-dollar bill(s)  #{remainder < FIVE_BILL ? remainder : 0} one-dollar bill(s)"
  end
end

def change_to_20(amount)
  twenty_bill_cnt = 0
  ten_bill_cnt = 0
  five_bill_cnt = 0
  remainder = 0
  amount_f = amount.to_i

  if amount_f == TWENTY_BILL
    "The amount you put in was $#{TWENTY_BILL}"
  elsif amount_f < TWENTY_BILL
    "The amount cannot be changed to 20-dollar bill(s)."
  else
    twenty_bill_cnt += amount_f / TWENTY_BILL
    remainder = amount_f - (twenty_bill_cnt * TWENTY_BILL)
    ten_bill_cnt += remainder / TEN_BILL
    remainder -= (ten_bill_cnt * TEN_BILL)
    five_bill_cnt += remainder / FIVE_BILL
    remainder -= (five_bill_cnt * FIVE_BILL)

    "Your change(s) of $#{amount}: #{twenty_bill_cnt} twenty-dollar bill(s)  #{ten_bill_cnt} ten-dollar bill(s)" +
        "  #{five_bill_cnt} five-dollar bill(s)  #{remainder < FIVE_BILL ? remainder : 0} one-dollar bill(s)"
  end
end

def change_to_10(amount)
  ten_bill_cnt = 0
  five_bill_cnt = 0
  remainder = 0
  amount_f = amount.to_i

  if amount_f == TEN_BILL
    "The amount you put in was $#{TEN_BILL}"
  elsif amount_f < TEN_BILL
    "The amount cannot be changed to 10-dollar bill(s)."
  else
    ten_bill_cnt += amount_f / TEN_BILL
    remainder = amount_f - (ten_bill_cnt * TEN_BILL)
    five_bill_cnt += remainder / FIVE_BILL
    remainder -= (five_bill_cnt * FIVE_BILL)

    "Your change(s) of $#{amount}: #{ten_bill_cnt} ten-dollar bill(s)" +
        "  #{five_bill_cnt} five-dollar bill(s)  #{remainder < FIVE_BILL ? remainder : 0} one-dollar bill(s)"
  end
end

def change_to_5(amount)
  five_bill_cnt = 0
  remainder = 0
  amount_f = amount.to_i

  if amount_f == FIVE_BILL
    "The amount you put in was $#{FIVE_BILL}"
  elsif amount_f < FIVE_BILL
    "The amount cannot be changed to 5-dollar bill(s)."
  else
    five_bill_cnt += amount_f / FIVE_BILL
    remainder = amount_f - (five_bill_cnt * FIVE_BILL)

    "Your change(s) of $#{amount}:  #{five_bill_cnt} five-dollar bill(s)  #{remainder} one-dollar bill(s)"
  end
end

def change_to_quarter(amount)
  quarter_cnt = 0
  amount_f = amount.to_i

  amount_in_pennies = amount_f * 100
  quarter_cnt += amount_in_pennies / QUARTER
  "Your $#{amount} in quarter amount: #{quarter_cnt} quarter(s)"
end

def change_to_dime(amount)
  dime_cnt = 0
  amount_f = amount.to_i

  amount_in_pennies = amount_f * 100
  dime_cnt += amount_in_pennies / DIME
  "Your $#{amount} in dime amount: #{dime_cnt} dime(s)"
end

def change_to_nickel(amount)
  nickel_cnt = 0
  amount_f = amount.to_i

  amount_in_pennies = amount_f * 100
  nickel_cnt += amount_in_pennies / NICKEL
  "Your $#{amount} in nickel amount: #{nickel_cnt} nickel(s)"
end

def change_to_penny(amount)
  amount_in_pennies = amount.to_i * 100
  "Your $#{amount} in penny amount: #{amount_in_pennies} pennies"
end

def validate_menu_choice(choice)
  #Make sure menu_choice value is only an integer and only one character.
  until choice.match? /\A\d+\z/ and choice.length == 1
    print "Please choose only one of the options in the menu: "
    choice = gets.chomp
  end
  choice
end

def first_prompt()
  print "Please enter the amount (Needs to be a whole amount. No cents at the ends.) you want to be changed $"
  input_amount = gets.chomp
  while input_amount !~ /^[1-9]\d*$/ #This Regex eliminates 0, negative, decimal (float) numbers, and alphanumberic value.
    print "The amount cannot be 0, a negative amount, a decimal amount, or alphanumeric (numbers mixed with letters.)\nPlease enter a whole amount: $"
    input_amount = gets.chomp
  end
  input_amount
end

puts "-" * 30 + "\n|\tMONEY CHANGER\t     |" + "\n" + "-" * 30
puts

input_amount = first_prompt()
puts

menu_choice = ""
until menu_choice == 0
  print "Please choose one of the options in the menu to change your money to."
  print "\n" + menu + "\nYour choice: "
  menu_choice = gets.chomp
  menu_choice = validate_menu_choice(menu_choice)
  puts

  case menu_choice #= 1 #Test control. Need to be removed afterward.
  when "1"
    puts change_to_50(input_amount)
    puts
  when "2"
    puts change_to_20(input_amount)
    puts
  when "3"
    puts change_to_10(input_amount)
    puts
  when "4"
    puts change_to_5(input_amount)
    puts
  when "5"
    puts change_to_quarter(input_amount)
    puts
  when "6"
    puts change_to_dime(input_amount)
    puts
  when "7"
    puts change_to_nickel(input_amount)
    puts
  when "8"
    puts change_to_penny(input_amount)
    puts
  when "9"
    input_amount = first_prompt()
    puts
  when "0"
    exit
  end
end