class BigNum
  # 100 => Fib 476
  def initialize(max_capacity = 1000)
    @max_capacity = max_capacity
    @digits = Array.new(@max_capacity, 0)
  end

  def add(addend)
    rev_addend = extract_digits(addend).reverse
    rev_digits = @digits.reverse
    sum_array = Array.new(@max_capacity, 0)
    carry = 0
    @max_capacity.times do |i|
      sum = (rev_addend[i] || 0) + (rev_digits[i] || 0) + carry
      if sum >= 10
        carry = sum / 10
        sum = sum % 10
      else
        carry = 0
      end
      sum_array[i] = sum
    end
    @digits = sum_array.reverse
  end

  def reverse
    return @digits.reverse
  end

  def extract_digits(num)
    num.to_s.split('').map(&:to_i)
  end

  def to_s
    @digits.join
  end

  def to_i
    @digits.join.to_i
  end
end
