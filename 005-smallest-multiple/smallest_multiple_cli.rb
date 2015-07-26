require_relative './smallest_multiple.rb'

t1 = Time.now
smallest_multiple = SmallestMultiple.new(20)
puts smallest_multiple.calculate
t2 = Time.now
puts t2-t1