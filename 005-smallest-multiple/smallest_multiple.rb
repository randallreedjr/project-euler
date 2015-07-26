require 'prime'

class SmallestMultiple
  attr_reader :divisors

  def initialize(max_divisor = 0)
    set_divisors(max_divisor)
  end

  # The divisors you have to chech is just the upper half of the range (anything less than that is also found in n * 2)
  def set_divisors(max_divisor)
    @max_divisor = max_divisor
    if max_divisor.even?
      @divisors = (1..max_divisor).to_a.reverse[0...max_divisor/2]
    else
      @divisors = (1..max_divisor).to_a.reverse[0..max_divisor/2]
    end
  end

  def find_prime_factors
    prime_factors = {}
    @divisors.each do |divisor|
      # add prime factors that don't already exist
      factors = divisor.prime_division
      factors.each do |factor, power|
        prime_factors[factor] = [prime_factors[factor].to_i, power].max
      end
    end
    prime_factors
  end

  def calculate
    find_prime_factors.collect { |factor, power| factor ** power }.inject(&:*)
  end
end