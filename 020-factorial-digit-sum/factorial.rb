class Factorial
  def initialize(base)
    @base = base
  end

  def factorial
    @factorial ||= (1..@base).inject(:*)
  end

  def sum_digits
    bound = Math.log10(factorial).ceil
    (1..bound).collect { |i| 
      (factorial / 10**(i-1) ) % 10 
    }.inject(:+)
  end
end

test = Factorial.new(100)
puts test.sum_digits