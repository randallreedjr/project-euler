# require 'abundant'
require_relative './abundant'

# smallest is 24, largest is < 28123
qualified = (1..20161).select do |i|
  if Abundant.sum_of_abundants?(i)
    print '*'
    false
  else
    print '.'
    true
  end
end

puts "Done!\n"

puts qualified.inject(:+)
