class CountLetters
  def initialize(number)
    @numbers = (1..number).to_a
    @number_hash = {
      0 => "",
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine",
      10 => "ten", 
      11 => "eleven",
      12 => "twelve",
      13 => "thirteen",
      14 => "fourteen",
      15 => "fifteen",
      16 => "sixteen",
      17 => "seventeen",
      18 => "eighteen",
      19 => "nineteen",
      20 => "twenty",
      30 => "thirty",
      40 => "forty",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eighty",
      90 => "ninety",
      100 => "onehundred",
      1000 => "onethousand"
    }
  end

  def get_total_letters
    @numbers.collect {|number| get_number_word(number).length}.inject(:+)
  end

  private
  def get_number_word(number)
    special = ""
    if @number_hash[number]
      return @number_hash[number]
    elsif number > 100
      return get_number_word(number/100) + "hundred" + (number%100 > 0 ? 'and' : '') + get_number_word(number % 100)
    else
      ones = number % 10
      tens = (number % 100) - ones
      return get_number_word(tens) + get_number_word(ones)
    end
  end
end

counter = CountLetters.new(1000)
puts counter.get_total_letters