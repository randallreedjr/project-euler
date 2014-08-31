class Palindrome
  def initialize(lower_bound, upper_bound)
    @lower_bound = lower_bound
    @upper_bound = upper_bound
    @max_factors = [0,0]
    @iterations = 0
  end

  def largest_product
    @upper_bound.downto(@lower_bound) do |first_factor|
      break if first_factor * @upper_bound < @max_factors.inject(:*)
      @upper_bound.downto(@lower_bound) do |second_factor|
        check_product(first_factor, second_factor)
      end
    end
  end

  def print
    puts @max_factors.inject(:*)
    puts "#{@max_factors[0]} * #{@max_factors[1]}"
    puts "#{@iterations} times"
  end

  private 
  def self.palindrome?(number)
    number.to_s.reverse == number.to_s
  end

  def check_product(first_factor, second_factor)
    @iterations += 1
    product = first_factor * second_factor
    if self.class.palindrome?(product) && product > @max_factors.inject(:*)
      @max_factors = [first_factor, second_factor]
    end
  end
end

largest_palindrome = Palindrome.new(100, 999)
largest_palindrome.largest_product
largest_palindrome.print

