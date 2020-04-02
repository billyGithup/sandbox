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

=begin
class Employee
  attr_reader :name

  def initialize(name)
    self.name = name
  end

  def name=(name)
    if name == ""
      raise "Name can't be blank!"
    end
    @name = name
  end

  def print_name
    puts "Name: #{name}"
  end

  # def salary=(salary)
  #   if salary < 0
  #     raise "A salary of #{salary} isn't valid!"
  #   end
  #   @salary = salary
  # end
  #
  # def initialize(name = "Anonymous", salary = 0.0)
  #   self.name = name
  #   self.salary = salary
  # end
  #
  # def print_pay_stub()
  #   puts "Name: #{name}"
  #   pay_for_period = (salary / 365.0) * 14
  #   formatted_pay = format("%.2f", pay_for_period)
  #   puts "Pay this period: $#{formatted_pay}"
  # end
end

# amy = Employee.new
# amy.name = "Amy Blake"
# amy.salary = 50000
# amy.print_pay_stub

# kara = Employee.new
# kara.name = ""
#
# ben = Employee.new
# ben.salary = -1

# employee = Employee.new("Amy Blake", 66)
# employee.print_pay_stub
=end

=begin
class SalariedEmployee < Employee
  attr_reader :salary

  def initialize(name, salary = 0.0)
    super name
    self.salary = salary
  end

  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} is not valid."
    end
    @salary = salary
  end

  def print_pay_stub
    print_name
    pay_for_period = (salary / 365.0) * 14
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay this period: $#{formatted_pay}"
  end
end

salaried_employee = SalariedEmployee.new("Jane Doe", 50000)
salaried_employee.print_pay_stub
=end

=begin
class HourlyEmployee < Employee
  attr_reader :hourly_wage, :hours_per_week

  def initialize(name, hourly_wage = 0.0, hours_per_week = 0)
    super name
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  def self.security_guard(name)
    HourlyEmployee.new(name, 15.00, 40)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.00, 40)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 12.85, 40)
  end

  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "The hourly wage #{hourly_wage} is not valid."
    end
    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "The hourly wage #{hours_per_week} is not valid."
    end
    @hours_per_week = hours_per_week
  end

  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end
end

# hourly_employee = HourlyEmployee.new("John Smith", 19.50, 40)
# hourly_employee.print_pay_stub

angela = HourlyEmployee.security_guard("Angela Matthews")
edwin = HourlyEmployee.janitor("Edwin Burgess")
ivan = HourlyEmployee.cashier("Ivan Stokes")

angela.print_pay_stub
edwin.print_pay_stub
ivan.print_pay_stub
=end

#03/24/2020
=begin
class Human
  attr_reader :name, :age, :occupation, :skills

  def initialize(name = "Anonymous", age = 0, occupation = "N/A", *skill_arr) # * is a splat operator.
    self.name = name
    self.age = age
    self.occupation = occupation
    self.skills = skill_arr
  end

  def name=(name)
    raise "Name cannot be empty!" if name.empty?
    @name = name
  end

  def age=(age)
    raise "Age cannot be negative number!" if age < 0
    @age = age
  end

  def occupation=(occupation)
    raise "Occupation cannot be empty!" if occupation.empty?
    @occupation = occupation
  end

  def skills=(array)
    if array.is_a?(Array)
      @skills = array
    end
  end

  def set_skills(array)
    raise "The skill set is empty." if array.empty?
    @skills = array.join(", ")
  end

  def print_info
    puts "Name: #{name}\n" + "Age: #{age}\n" + "Occupation: #{occupation}\n" +
             "Skills: #{skills.join(", ")}"
  end
end

rammy = Human.new("Rammy Jose", 44, "Programmer", "Java", "C#", "Python", "C++", "PHP", "JS", "Ruby")
# rammy.set_skills(%w[Java C# Python C++ PHP JS Ruby])
rammy.print_info
=end

#03/30/2020
# =begin
module AcceptsComments
  def comments
    @comments ||= []
  end

  def add_comment(comment)
    comments << comment
  end
end

class Clip
  include AcceptsComments

  def play
    puts "Playing #{object_id} ..."
  end
end

class Video < Clip
  attr_accessor :beats_per_minute
end

class Song < Clip
  attr_accessor :beats_per_minute
end

class Photo
  include AcceptsComments

  def show
    puts "Displaying #{object_id}..."
  end
end

# video = Video.new
# video.add_comment("Cool slow motion effect!")
# video.add_comment("Weird ending.")
# p video.comments

song = Song.new
song.add_comment("Awesome beat.")
p song.comments
#
# p video.comments, song.comments
# puts video.play
#
# photo = Photo.new
# puts photo.show
# =end