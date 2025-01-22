require './big_num'
require './big_fib'
require 'pry'


bf = BigFib.new
i = 4001
first_digit = '0'
while first_digit == '0' && i < 4101
  my_num = bf.calculate(i)
  puts "Fibonacci #{i} is #{my_num}\n\n"
  first_digit = my_num.to_s[0]
  i += 1
end

puts "Stopped at #{i-1}: #{my_num}"

# puts bf.calculate(1)
# puts bf.calculate(2)
# puts bf.calculate(3)
# puts bf.calculate(4)
# puts bf.calculate(5)
# puts bf.calculate(6)
# puts bf.calculate(11)
# puts bf.calculate(12)
puts bf.calculate(500) # 139423224561697880139724382870407283950070256587697307264108962948325571622863290691557658876222521294125
