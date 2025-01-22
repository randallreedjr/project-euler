require 'pry'
require './reciprocal_cycle'

# i = 6
# while i < 7
i = 2
while i < 10
  rc = ReciprocalCycle.new(i)
  puts "Number = 1/#{i}"
  puts "Repeating? #{rc.repeating?}"
  puts "Length: #{rc.length}"
  puts ""

  i += 1
end

# rc = ReciprocalCycle.new(2)
# puts "Number = 1/2"
# puts "Repeating? #{rc.repeating?}"
# puts "Length: #{rc.length}"
# puts ""

# rc = ReciprocalCycle.new(3)
# puts "Number = 1/3"
# puts "Repeating? #{rc.repeating?}"
# puts "Length: #{rc.length}"
# puts ""

# rc = ReciprocalCycle.new(7)
# puts "Number = 1/7"
# puts "Repeating? #{rc.repeating?}"
# puts "Length: #{rc.length}"
# puts ""

# rc = ReciprocalCycle.new(81)
# puts "Number = 1/81"
# puts "Repeating? #{rc.repeating?}"
# puts "Length: #{rc.length}"
# puts ""
