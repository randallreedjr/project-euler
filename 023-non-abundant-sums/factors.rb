require 'prime'

class Factors
  attr_accessor :number

  def initialize(number = 1)
    @number = number
    @factors = [1, @number]
  end

  def factorize
    if number < 1
      return []
    elsif number == 1
      return [1]
    end

    primes = @number.prime_division.map{|d| [d[0]] * d[1]}.flatten
    @factors += primes.uniq
    (2..primes.length).each do |permute_length|
      intermediate_factors = primes.combination(permute_length).to_a.uniq.map {|a| a.inject(:*)}.uniq
      intermediate_factors.each do |f|
        @factors.push f
        @factors.push @number / f
      end
    end

    @factors.uniq.sort
  end

  def proper_divisors
    factorize - [@number]
  end
end

# 24
# [[2, 3], [3, 1]]
