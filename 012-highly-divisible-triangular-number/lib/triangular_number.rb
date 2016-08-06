class TriangularNumber
  attr_reader :n, :number

  def initialize(n = 1)
    @n = n
    # formula for summation of natural numbers
    @number = calculate(n)
  end

  def calculate(term)
    (term * (term + 1)) / 2
  end

  def next
    term = n + 1
    calculate(term)
  end

  def next!
    @n = n + 1
    @number = calculate(n)
  end
end
