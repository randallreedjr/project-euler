class SmallestMultiple
  def initialize(max_divisor = 0)
    @max_divisor = max_divisor
    @divisors = (1..max_divisor).to_a.reverse
  end

  def set_divisors(max_divisor)
    @max_divisor = max_divisor
    @divisors = (1..max_divisor).to_a
  end
  
  def calculate
    test_number = 0
    divisible = false
    until divisible
      test_number += @max_divisor % 2 == 0 ? @max_divisor : @max_divisor - 1
      divisible = divisible_by_all?(test_number)
    end
    test_number
  end

  #number must be even (divisible by 2)
  #if divisible by 8, skip 4 and 2
  #must be divisible by max divisor - start there when checking divisor
  #if prime, always check
  #17 => 12252240

  private
  def divisible_by_all?(number)
    @divisors.detect {|divisor| !divisible_by_divisor?(number, divisor)}.nil?
  end

  def divisible_by_divisor?(number, divisor)
    number % divisor == 0
  end
end