# Ruby handles large integers well
sum = 0
File.open('./data/data.txt').each do |line|
  sum += line.to_i
end

puts sum.to_s[0...10]
