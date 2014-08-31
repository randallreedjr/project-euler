class Fibonacci
  def initialize()
    @terms = [1,1]
  end

  def next_term
    #@terms[0] + @terms[1]
    @terms.inject(:+)
  end

  def advance_sequence
    @terms.push(next_term)
    @terms.shift
  end

  def sum_even_terms(max_term)
    sum = 0
    while next_term < max_term
      sum += next_term if next_term.even?
      advance_sequence
    end
    return sum
  end

  def sum_even_terms_2(max_terms)
    sum = 0
    while (term = advance_sequence) < max_term
      sum += term if term.even?
    end
    return sum
  end
end

test = Fibonacci.new
puts test.sum_even_terms(4000000)
# -> 4613732