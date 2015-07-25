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
  
  def calculate
    test_number = 0
    divisible = false
    until divisible
      test_number += @max_divisor.even? ? (@max_divisor * (@max_divisor -1)) : @max_divisor * 2
      divisible = divisible_by_all?(test_number)
    end
    test_number
  end

  private
  def divisible_by_all?(number)
    @divisors.detect {|divisor| !divisible_by_divisor?(number, divisor)}.nil?
  end

  def divisible_by_divisor?(number, divisor)
    number % divisor == 0
  end
end