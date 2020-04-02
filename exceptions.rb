# =begin
class SmallOven
  attr_accessor :content

  def turn_on
    puts "Turning oven on!"
    @state = "on"
  end

  def turn_off
    puts "Turning oven off!"
    @state = "off"
  end

  def bake
    unless @state == "on"
      raise OvenOffError, "You need to turn the oven on first!"
    end
    if @content == nil
      raise OvenEmptyError, "There is nothing in the oven."
    end
    "golden-brown #{content}"
  end
end

class OvenOffError < StandardError
end

class OvenEmptyError < StandardError
end

dinner = %w[turkey casserole pie]
# dinner = ["turkey", nil, "pie"]
oven = SmallOven.new
# oven.turn_on
oven.turn_off

dinner.each do |item|
  begin
    oven.content = item
    puts "Serving #{oven.bake}"
  rescue => error
    puts "Error: #{error}"
    oven.turn_on
  end
end
# =end

# begin
#   puts "I'll be run"
#   raise "SOMETING BAD"
#   puts "skipped"
# rescue
#   puts "Rescued an exception"
# end

=begin
class PorridgeError < StandardError
end

class BeddingError < StandardError
end

def eat
  raise PorridgeError, "too hot"
end

def sleep
  raise BeddingError, "too soft"
end

begin
  # sleep
  eat
rescue BeddingError => err
  puts "This bed is #{err}"
rescue PorridgeError => err
  puts "This porridge is #{err}"
end
=end
