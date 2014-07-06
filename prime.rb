def largest_prime_factor(number)
  limit = number/3
  i = 3
  while i < limit
    if number % i == 0 && prime?(number/i)
      return number/i
    end
    i += 2
  end
end

def prime?(number)
  return false if number < 2
  return true if number == 2

  limit = number ** 0.5
  (2..limit).each do |i|
    return false if number % i == 0
  end
  return true
end

puts largest_prime_factor(600851475143)