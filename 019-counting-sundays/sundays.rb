require 'date'

start_date = Date.new(1901, 1, 1);
end_date = Date.new(2000, 12, 31);

puts start_date.upto(end_date).select { |current_date|
  current_date.day == 1 && current_date.sunday?
}.count
