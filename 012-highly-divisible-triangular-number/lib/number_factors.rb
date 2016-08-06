class NumberFactors
  attr_reader :number
  attr_reader :factors

  def initialize(number)
    @number = number
    @factors = []
  end

  def factor_count
    find_factors! if factors.empty?
    factors.count
  end

  private

  # Original algorithm, needed to simplify
  # def find_factors!
  #   @factors = (1..number).select do |n|
  #     number % n == 0
  #   end
  # end

  def find_factors!
    (1..number).each do |n|
      break if @factors.include?(n)
      if number % n == 0
        @factors << n << (number / n)
      end
    end
    # handle any perfect squares

    @factors.uniq!
  end
end
