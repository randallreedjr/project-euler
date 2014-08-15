# The following iterative sequence is defined for the set of positive integers:

# n ->n/2 (n is even) n ->3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 40 20 10 5 16 8 4 2 1 It can be seen that this sequence (starting at 13 and 
# finishing at 1) contains 10 terms. Although it has not been proved yet 
# (Collatz Problem), it is thought that all starting numbers finish at 1.
#2^n -> n+1
#10*(2^n) -> 5
#5->6
#3 10
#4,2
#6, 3, 10
#7, 22, 11, 34, 17, 52, 26, 13
#9, 28, 14, 7
#10, 5
#11, 
# Which starting number, under one million, produces the longest chain?

#require 'pry'

class Collatz
  @@known_terms = {}
  def initialize(number)
    @number = number
  end

  def length()
    length = 1
    current_number = @number
    while current_number > 1 do 
      if @@known_terms[current_number]
        length += @@known_terms[current_number]
        break
      end
      current_number = next_term(current_number)
      length += 1
    end
    @@known_terms[@number] = length
    return length
  end

  private
  def next_term(number)
    if number % 2 == 0
      number /= 2
    else
      number = (number * 3) + 1
    end
  end
end

 max_terms = 0
 result = 0
 
1000000.times do |number|
  collatz = Collatz.new(number)
  terms = collatz.length
  if terms > max_terms
    max_terms = terms
    result = number
  end
end

puts "#{result} has a chain with #{max_terms} terms"