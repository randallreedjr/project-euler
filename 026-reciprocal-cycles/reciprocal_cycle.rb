class ReciprocalCycle
  attr_reader :number
  def initialize(denominator)
    @denominator = denominator
    numerator = 10
    @string_result = "0."
    30.times do |i|
      result = numerator / denominator
      @string_result += result.to_s
      if result == 0
        numerator = numerator * 10
      else
        numerator -= result * denominator
        numerator = numerator * 10
      end
    end
    puts @string_result
    @starting_length = @string_result.split('.').last.split('').length
    @number = 1.0 / @denominator
    # @number = string_result
  end

  def drop_trailing_zeros!
    first_non_zero_detected = false
    @digits = digits.reverse.map do |i|
      if i == '0' && !first_non_zero_detected
        nil
      else
        first_non_zero_detected = true
        i
      end
    end.reverse.compact
  end

  def repeating?
    # digits[0] == digits[1]
    # All digits the same
    # return false if digits.length == 1
    # return true if !digits.any? {|d| d != digits[0]}
    length > 0
  end

  def length
    @length ||= (
      drop_trailing_zeros!

      # dropped 10 trailing zeroes
      return 0 if digits.length == 1 || (@starting_length - digits.length > 10)
      return 1 if !digits.any? {|d| d != digits[0]}
      return 0 if digits[1..-1].index(digits[0]).nil?

      next_index = digits[1..-1].index(digits[0]) + 1
      if digits[0...next_index] == digits[next_index...2*next_index]
        next_index
      else
        0
      end
    )
  end

  def digits
    @digits ||= @string_result.split('.').last.split('')
    # @digits ||= number.to_s.split('.').last.split('')
  end
end
