=begin
prices = [2.99, 25.00, 9.99]


def total(prices)
    amount = 0
    index = 0

    while index < prices.length
        amount += prices[index]
        index += 1
    end

    amount
end

def refund(prices)
    amount = 0
    index = 0

    while index < prices.length
        amount -= prices[index]
        index += 1
    end
    amount
end

def show_discounts(prices)
    index = 0
    while index < prices.length
        amount_off = prices[index] / 3.0
        puts format("Your discount: $%.2f", amount_off)
        index += 1
    end
end

puts format("%.2f", total(prices))
puts format("%.2f", refund(prices))
show_discounts(prices)
=end

=begin
prices = [2.99, 25.00, 9.99]
def do_something_with_every_item(array, operation)
    if operation == "total" || operation == "refund"
        amount = 0
    end

    index = 0
    while index <array.length
        if operation == "total"
            amount += array[index]
        elsif operation == "refund"
            amount -= array[index]
        elsif operation == "show discounts"
            amount_off = array[index] / 3.0
            puts format("Your discount: $%.2f", amount_off)
        end
        index += 1
    end
    
    if operation == "total" || operation == "refund"
        return format("%.2f", amount)
    end
end

puts do_something_with_every_item(prices, "total")
puts do_something_with_every_item(prices, "refund")
do_something_with_every_item(prices, "show discounts")
=end

def my_method(&my_block)
    puts "We're in the method, about to invoke your block!"
    my_block.call #The method "call" calls the block
    puts "We're back in the method!"
end

my_method do
    puts "We're in the block."
end