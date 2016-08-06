$LOAD_PATH.unshift(File.dirname(__FILE__) + '/lib')
require 'triangular_number'
require 'number_factors'
require 'byebug'

tn = TriangularNumber.new(1)
factor_count = 0
dot_counter = 0
while factor_count <= 500
  tn.next!
  factor_count = NumberFactors.new(tn.number).factor_count
  print '.' if dot_counter % 100 == 0
  dot_counter += 1
end

puts tn.number
