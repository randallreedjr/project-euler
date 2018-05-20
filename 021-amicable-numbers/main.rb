def divisors(n)
  divisors = []
  limit = Math.sqrt(n).floor
  limit.times do |i|
    if n % (i + 1) == 0
      divisors << (i + 1) << n/(i + 1)
    end
  end
  return divisors
end

puts divisors(220)
