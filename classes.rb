# class Dog
#   attr_accessor :name, :age

#   def talk
#     puts "#{name} Barks!"
#   end

#   def move(destination)
#     puts "#{name} runs to the #{destination}."
#   end

#   def make_up_age
#     @age = 5
#   end

#   def report_age
#     puts "#{name} is #{age} years old."
#   end
# end

# class Cat
#   def talk
#     puts "Meow!"
#   end

#   def move(destination)
#     puts "Running to the #{destination}."
#   end
# end

# class Bird
#   def talk
#     puts "Chirp Chirp!"
#   end

#   def move(destination)
#     puts "Flying to the #{destination}."
#   end
# end

# class Mage
#   attr_reader :name, :age

#   def name=(name)
#     if name == ""
#       raise "Name cannot be blank!"
#     end
#     @name = name
#   end

#   def age=(age)
#     if age < 0
#       raise "An age of #{age} isn't valid."
#     end
#     @age = age
#   end

  # def enchant(target)
  #   puts "#{name} casts #{spell} on #{target.name}!"
  #   puts @name + " casts " + @spell + " on " + target.name + "!"
  # end

#   def report_age
#     puts "#{@name} is #{age} year(s) old."
#   end
# end

# mage1 = Mage.new
# mage1.name = "Rik"
# mage1.age = 1
# mage1.report_age
# mage1.enchant(mage2) #mage2 instance is not defined (instantiated) yet when this line is executed.

# mage2 = Mage.new
# mage2.name = "Rose"
# mage2.spell = "ice"
# mage2.enchant(mage1)


# dog1 = Dog.new
# dog1.name = "Bowser"
# dog1.move("castle")
# dog1.age = 10
# dog1.report_age

# bird1 = Bird.new
# puts bird1.talk
# puts bird1.move("Carlo")

# cat1 = Cat.new
# puts cat1.talk
# puts cat1.move("Carlo")

=begin
class Person
  attr_accessor :name, :age, :hair_color, :eye_color, :occupation

  def print_info()
    puts "Name: #{@name}\nAge: #{@age}\nHair color: #{@hair_color}\nEye color: #{@eye_color}\nOccupation: #{@occupation}."
  end
end

person1 = Person.new
person1.name = "Carlos"
person1.age = 33
person1.hair_color = "Black"
person1.eye_color = "Hazel"
person1.occupation = "Software engineer"
person1.print_info
=end

=begin
class Mammal
  attr_accessor :hair, :diaphragm, :mammary_glands, 
                :four_chambered_heart, :three_bones_in_the_middle_ear, :one_time_tooth_replacement, 
                :single_boned_lower_jaws, :warm_blooded_metabolisms

  def initialize(hair, diaphragm, mammary_glands, four_chambered_heart, 
                 three_bones_in_the_middle_ear, one_time_tooth_replacement, 
                 single_boned_lower_jaws, warm_blooded_metabolisms)

    @hair = hair
    @diaphragm = diaphragm
    @mammary_glands = mammary_glands
    @four_chambered_heart = four_chambered_heart
    @three_bones_in_the_middle_ear = three_bones_in_the_middle_ear
    @one_time_tooth_replacement = one_time_tooth_replacement
    @single_boned_lower_jaws = single_boned_lower_jaws
    @warm_blooded_metabolisms = warm_blooded_metabolisms
  end

  def print_info()
    puts "Hair: #{@hair}\n" +
      "Diaphragm: #{@diaphragm}\n" +
      "Mammary glands: #{@mammary_glands}\n" +
      "Four-chambered heart: #{@four_chambered_heart}\n" +
      "Three bones in the middle ear: #{@three_bones_in_the_middle_ear}\n" +
      "One-time tooth replacement: #{@one_time_tooth_replacement}\n" +
      "Single-boned lower jaws: #{@single_boned_lower_jaws}\n" +
      "Warm-blooded metabolisms: #{@warm_blooded_metabolisms}"
  end
end

dog = Mammal.new("Yes", "Yes", "Yes", "Yes", "Yes", "Yes (generally)", "Yes", "Yes")
dog.print_info
puts
=end

=begin
class Account
  attr_accessor :account_holder, :account_type, :balance

  def deposit(amount)
    @balance += amount
    puts "Balance is updated!"
  end

  def withdraw(amount)
    @balance -= amount
    puts "Balance is updated!"
  end

  def print_balance()
    puts "#{@account_holder}, your current balance is $%.2f" % @balance
  end
end

user1 = Account.new
user1.account_holder = "Rose"
user1.account_type = "Checking"
user1.balance = 1000
user1.deposit(1000)
user1.withdraw(500)
user1.print_balance
=end