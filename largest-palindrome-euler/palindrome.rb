def largest_palindrome
  number1=999
  number2=999
  max_palindrome = 0
  max_number1 = 0
  max_number2 = 
  iterations = 0
  while number1 >= 100
    while number2 >= 100
      iterations += 1
      product = number2 * number1
      if product > max_palindrome && palindrome?(product)
        max_palindrome = product
        max_number1 = number1
        max_number2 = number2
      end
      number2 -= 1
    end
    number2 = number1-1
    number1 -= 1
  end

  puts max_palindrome
  puts "#{max_number1} * #{max_number2}"
  puts "#{iterations} times"
end

def palindrome?(number)
  number.to_s.reverse == number.to_s
end

largest_palindrome