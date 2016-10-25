require_relative './factors'

class Abundant
  def initialize(number = 1)
    @number = number
    @abundant = nil
  end

  def abundant?
    return true if ((@number % 6 == 0 && @number > 6) || @number % 20 == 0 || @number % 56 == 0)

    divisors = Factors.new(@number).proper_divisors
    if divisors
      @abundant = divisors.inject(:+) > @number
    else
      @abundant = false
    end
  end

  def self.sum_of_abundants?(number)
    # 24 is the smallest number that can be written as the sum of two abundants
    return false if number < 24
    # 46 is the largest even number that cannt be written as the sum of two abundants
    return true if (number > 46) && (number.even?)

    sum_exists = (2..number/2).detect do |i|
      first_addend = i
      second_addend = number - i
      Abundant.new(first_addend).abundant? && Abundant.new(second_addend).abundant?
    end
    !!sum_exists
  end
end
