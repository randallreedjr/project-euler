class ProperDivisor
  attr_reader :number

  def initialize(number = 1)
    @number = number
    @divisors = []
  end

  def calculate(sort: false)
    return [] if number <= 1
    limit = Math.sqrt(number).floor
    (1..limit).each_with_index do |i|
      if number % i == 0
        @divisors << i
        @divisors << number/i unless i == 1
      end
    end
    sort ? @divisors.sort : @divisors
  end

  def sum
    calculate if @divisors.empty?
    @divisors.sum
  end
end
