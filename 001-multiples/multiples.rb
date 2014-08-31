#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.
class Multiples
  def initialize(multiples)
    @multiples = multiples.sort
    @sum = 0
  end

  #More iterations but clearer code
  def sum(limit)
    @sum = (1...limit).select { |term| multiple?(term) }.inject(:+)
  end

  #Fewer iterations but more obscure code
  def sum2(limit)
    @sum = 0
    @multiples.each_with_index do |multiple_to_sum, index|
      (0...limit).step(multiple_to_sum) do |term|
        @sum += term unless term % @multiples[0..index].inject(:*) == 0 && index > 0
      end
    end
    @sum
  end

  private
  def multiple?(term)
    @multiples.each do |multiple_to_check|
      return true if term % multiple_to_check == 0
    end
    return false
  end
end

test = Multiples.new([3,5])
puts "#{test.sum(1000)} with first method"
puts "#{test.sum2(1000)} with second method"
