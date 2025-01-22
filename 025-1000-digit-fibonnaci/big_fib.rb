require './big_num'

class BigFib
  def initialize
  end

  def calculate(n)
    reset!

    return @num1 if n == 1
    return @num2 if n == 2
    return @num3 if n == 3

    (n-3).times do
      @num1 = @num2
      @num2 = @num3
      @num3 = BigNum.new
      @num3.add(@num1)
      @num3.add(@num2)
    end

    return @num3
  end

  private

  def reset!
    @num1 = BigNum.new
    @num1.add([1])

    @num2 = BigNum.new
    @num2.add([1])

    @num3 = BigNum.new
    @num3.add(@num1)
    @num3.add(@num2)
  end
end
