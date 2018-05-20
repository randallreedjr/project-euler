class Amicable
  # def initialize(*numbers)
  #   @numbers = numbers if numbers.length == 2
  # end

  def pair?(*numbers)
    # @numbers = numbers if @numbers.empty?
    new_pair = numbers.map do |number|
      ProperDivisor.new(number).sum
    end
    numbers == new_pair.reverse
  end

  def all_pairs(limit)
    pairs = []
    possible_pairs = {}
    (2..limit).each do |i|
      # key => value
      # sum_of_divisors => number
      # add to array if i is in hash && value is sum of divisors
      sum_of_divisors = ProperDivisor.new(i).sum
      possible_pairs[sum_of_divisors] = i
      pairs << [i, sum_of_divisors].sort if possible_pairs[i] == sum_of_divisors && i != sum_of_divisors
    end
    return pairs
  end

  def sum_of_pairs(limit)
    all_pairs(limit).flatten.sum
  end
end
