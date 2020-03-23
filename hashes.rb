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
  def initialize(name, age:, occupation:, hobby: nil, birthplace: "Sleepy Creek")
    self.name = name
    self.age = age
    self.occupation = occupation
    self.hobby = hobby
    self.birthplace = birthplace
  end
end

def print_summary(candidate)
  puts "Candidate: #{candidate.name}\n" +
       "Age: #{candidate.age}\n" +
       "Occupation: #{candidate.occupation}\n" +
       "Hobby: #{candidate.hobby}\n" +
       "Birthplace: #{candidate.birthplace}"
end

# candidate1 = Candidate.new("Mike Blue", age: 55, hobby: "Soccer", occupation: "Lawyer", birthplace: "Kansas City")
candidate1 = Candidate.new("Mike Blue", age: 44, occupation: "Lawyer")
# candidate1 = Candidate.new("Mike Blue")
print_summary(candidate1)
=end

# def welcome(greeting: "Welcome", name: nil)
#   puts "#{greeting}, #{name}!"
# end
#
# welcome(greeting: "Hello", name: "Amy")
# welcome


# cities_hash = {CA: "San Francesco", KS: "Lawrence", MO: "Platte City"}
# num_label = 0
#
# cities_hash.each do |state, city|
#   puts (num_label += 1).to_s + ". #{city}, #{state}"
# end


#03/19/2020
# #Problem 1
# def word_count(array)
#   hash1 = Hash.new(0)
#   array.each do |value|
#     key = value.chomp
#     key.downcase!
#     hash1[key] += 1
#   end
#   hash1
#   # array.tally #It needs Ruby version > 2.7 to work.
# end
#
# p word_count(["a", "b", "a", "c", "b"])
# p word_count(["c", "b", "a"])
# p word_count(["c", "c", "c", "c"])

#Problem 2
# def word_multiple(array)
#   hash1 = Hash.new(0)
#   hash2 = Hash.new(0)
#
#   array.each do |value|
#     key = value.chomp
#     key.downcase!
#     hash1[key] += 1
#   end
#
#   hash1.each do |key, value|
#     value >= 2 ? hash2[key] = true : hash2[key] = false
#   end
#   hash2
# end
#
# p word_multiple(["a", "b", "a", "c", "b"])
# p word_multiple(["c", "b", "a"])
# p word_multiple(["c", "c", "c", "c"])

#Problem 3
# def pairs(array)
#   hash1 = Hash.new(0)
#   array.each do |value|
#     # hash1[value.slice(0)] = value.slice(-1)
#
#     #Another way of doing it.
#     hash1[value[0]] = value[-1]
#   end
#   hash1
# end
#
# p pairs(["code", "bug"])
# p pairs(["man", "moon", "main"])
# p pairs(["man", "moon", "good", "night"])

# =begin
contact_data = [
    ["joe@email.com", "123 Main st.", "555-123-4567"],
    ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
]
contacts = {"Joe Smith" => {},
            "Sally Johnson" => {}
}
contact_labels = [:Email, :Address, :Phone]

contact_data.each do |array|
  contacts.each_key do |key|
    if contacts[key].empty?
      # contacts[key] = Hash[contact_labels.zip(array)]

      #Another way.
      contacts[key] = contact_labels.zip(array).to_h
      break
    end
  end
end

puts contacts
# =end