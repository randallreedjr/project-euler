require 'prime'
class PrimeFactorization
  def initialize(number)
    @number = number
    @primes = {}
  end

  def largest_prime_factor()
    return 2 if @number % 2 == 0
    (3..@number/3).step(2) do |divisor|
      return @number/divisor if prime_factor?(divisor)
    end
  end

  private
  def prime_factor?(divisor)
    @number % divisor == 0 && Prime.prime?(@number/divisor)
  end
end

factor = PrimeFactorization.new(600851475143)
puts factor.largest_prime_factor
