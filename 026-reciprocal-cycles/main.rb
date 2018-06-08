class ReciprocalCycle
  attr_reader :number
  def initialize(denominator)
    @denominator = denominator
    @number = 1.0 / @denominator
  end

  def repeating?
    # digits[0] == digits[1]
    # All digits the same
    # return false if digits.length == 1
    # return true if !digits.any? {|d| d != digits[0]}
    length > 0
  end

  def length
    return 0 if digits.length == 1
    # if digits[0] == digits[1]
    if !digits.any? {|d| d != digits[0]}
      1
    else
      next_index = digits[1..-1].index(digits[0]) + 1
      if digits[0...next_index] == digits[next_index...2*next_index]
        next_index
      else
        0
      end
    end
  end

  def digits
    @digits ||= number.to_s.split('.').last.split('')
  end
end


rc = ReciprocalCycle.new(3)
puts "Number = 1/3"
puts "Repeating? #{rc.repeating?}"
puts "Length: #{rc.length}"
puts ""

rc = ReciprocalCycle.new(2)
puts "Number = 1/2"
puts "Repeating? #{rc.repeating?}"
puts "Length: #{rc.length}"
puts ""

rc = ReciprocalCycle.new(7)
puts "Number = 1/7"
puts "Repeating? #{rc.repeating?}"
puts "Length: #{rc.length}"
puts ""

rc = ReciprocalCycle.new(81)
puts "Number = 1/81"
puts "Repeating? #{rc.repeating?}"
puts "Length: #{rc.length}"
puts ""

# puts 1.0/81.0
# puts 1.0/81.0 * 1000000 - 12345
require 'bigdecimal'
num = BigDecimal.new('1.0')/BigDecimal.new('81.0')
puts num
puts (num * 1000000000) - 12345679
puts num.to_s
puts num.inspect
