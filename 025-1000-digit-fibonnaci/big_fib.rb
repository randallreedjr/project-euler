require './big_num'

class BigFib
  def initialize
    @last_calculated_1 = 0
    @last_calculated_2 = 0
    @last_calculated_3 = 0
    @last_calculated_index = 0
  end

  def calculate(n)
    i = 0

    if @last_calculated_index == 0
      starting_index = 3
      reset!

      return @num1 if n == 1
      return @num2 if n == 2
      return @num3 if n == 3
    else
      starting_index = @last_calculated_index
      resume!
    end

    (n - starting_index).times do
      @num1 = @num2
      @num2 = @num3
      @num3 = BigNum.new
      @num3.add(@num1)
      @num3.add(@num2)
      i+=1
    end

    @last_calculated_index = i + starting_index
    @last_calculated_1 = @num1.to_i
    @last_calculated_2 = @num2.to_i
    @last_calculated_3 = @num3.to_i

    return @num3
  end

  def print_last
    puts "Last calculated n=#{@last_calculated_index}:\n"
    puts "#{@last_calculated_1} + #{@last_calculated_2}=\n"
    puts "#{@last_calculated_3}"
  end

  private

  def reset!
    @num1 = BigNum.new
    @num1.add(1)

    @num2 = BigNum.new
    @num2.add(1)

    @num3 = BigNum.new
    @num3.add(@num1)
    @num3.add(@num2)
  end

  def resume!
    @num1 = BigNum.new
    @num1.add(@last_calculated_1)

    @num2 = BigNum.new
    @num2.add(@last_calculated_2)

    @num3 = BigNum.new
    @num3.add(@num1)
    @num3.add(@num2)
  end
end
