class SumSquare
  def initialize(limit)
    @limit = limit
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private
  def sum_of_squares
    (1..@limit).collect { |term| term ** 2 }.inject(:+)
  end

  def square_of_sum
    (@limit * (@limit + 1) / 2) ** 2
  end
end

test = SumSquare.new(100)
puts test.difference
# -> 25164150