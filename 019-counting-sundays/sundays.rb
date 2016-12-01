require 'date'

start_date = Date.new(1901, 1, 1);
end_date = Date.new(2000, 12, 31);
first_sunday_count = 0

start_date.upto(end_date) do |current_date|
  if current_date.day == 1 && current_date.wday == 0
    first_sunday_count += 1
  end
end

puts first_sunday_count
