# hash1 = {"H" => "Hydrogen",
#          "Li" => "Lithium",
#          "O" => "Oxygen"}

# p hash1
# puts hash1["Li"]
# p hash1.first

# hash1.merge!({"C" => 0, "Uh" => 1}) #The exclamation mark will change (mutate) the original values in the hash1 variable.
# hash1.merge({"C" => 0, "Uh" => 1})
# p hash1

# lines = []
# File.open("votes.txt") do |file|
#   lines = file.readlines
# end
#
# # puts lines
#
# votes = Hash.new(0)
#
# lines.each do |line|
#   name = line.chomp
#   name.upcase!
#   votes[name] += 1
# end
#
# votes.each do |name, count|
#   puts "#{name}: #{count}"
# end
#
# # p votes

=begin
class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  # def initialize(name, age, occupation, hobby = "None", birthplace)
  def initialize(name, options = {age: "None", hobby: "None", occupation: "None", birthplace: "None"}) #options is a hash.
    self.name = name
    self.age = options[:age]
    self.occupation = options[:occupation]
    self.hobby = options[:hobby]
    self.birthplace = options[:birthplace]
  end
end

def print_summary(candidate)
  puts "Candidate: #{candidate.name}\n" +
       "Age: #{candidate.age}\n" +
       "Occupation: #{candidate.occupation}\n" +
       "Hobby: #{candidate.hobby}\n" +
       "Birthplace: #{candidate.birthplace}"
end

candidate1 = Candidate.new("Mike Blue", age: 55, hobby: "Soccer", occupation: "Lawyer", birthplace: "Kansas City")
# candidate1 = Candidate.new("Mike Blue")
print_summary(candidate1)
=end

def welcome(greeting: "Welcome", name: nil)
  puts "#{greeting}, #{name}!"
end

welcome(greeting: "Hello", name: "Amy")
welcome

