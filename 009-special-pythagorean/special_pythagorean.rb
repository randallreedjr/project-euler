require 'pry'
class SpecialPythagorean
  def initialize(sum)
    @sum = sum
  end

  def calculate
    (1..@sum-3).to_a.permutation(2).each do |double|
      if (double[0] < double[1]) && perfect_square?(double.map{|i| i**2}.inject(&:+))
        triple = double + [Math.sqrt(double.map{|i| i**2}.inject(&:+))]
        if correct_sum?(triple)
          return triple
        end
      end
    end
    return []
  end

  def pythagorean?(triple)
    triple[0] ** 2 + triple[1] ** 2 == triple[2] ** 2
  end

  def correct_sum?(triple)
    triple.inject(&:+) == @sum
  end

  def perfect_square?(number)
    Math.sqrt(number) ** 2 == number
  end
end

