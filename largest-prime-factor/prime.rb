class Prime
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
    if @number % divisor == 0
      @primes[@number/divisor] ||= prime?(@number/divisor)
    end
  end

  def prime?(number)
    if number < 2
      return false
    elsif number > 2
      (2..number ** 0.5).each do |i|
        return false if number % i == 0
      end
    end
    return true
  end
end
puts Time.now
factor = Prime.new(600851475143)
puts factor.largest_prime_factor
puts Time.now