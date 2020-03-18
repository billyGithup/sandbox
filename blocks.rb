=begin
def twice(&my_block)
  puts "In the method, about to call the block!"
  my_block.call
  puts "Back in the method, about to call block again."
  my_block.call
  puts "Back in the method"
end
=end

=begin
#Using block's parameter
def give(&my_block)
  my_block.call("2 turtle doves", "1 partridge")
end

#Both ways below work the same.
give do |present1, present2|
  puts "My method gave to me..."
  puts present1, present2
end

give { |present1, present2|
  puts "My method gave to me..."
  puts present1, present2
}
=end

=begin
#Using yield keyword
def give()
  yield("2 turtle doves", "1 partridge")
end

give { |present1, present2|
  puts "My method gave to me..."
  puts present1, present2
}
=end

# class Array
#   def each
#     index = 0
#     while index < self.length
#       yield self[index]
#       index += 1
#     end
#   end
# end

def total(prices)
  amount = 0
  prices.each do
    |price|
    amount += price
  end
  amount
end

def refund(prices)
  amount = 0
  prices.each {|price| amount -= price}
  amount
end

def show_discounts(prices)
  prices.each do |price|
    amount_off = price / 3.0
    puts format("Your discount: $%.2f", amount_off)
  end
end

prices = [3.99, 25.00, 8.99]
# puts format("%.2f", total(prices))
# puts format("%.2f", refund(prices))
show_discounts(prices)