require 'pry'

class LargestProduct
  def initialize(series, subseries_length)
    @series = series.gsub("\n",'').split('').map(&:to_i)
    @subseries_length = subseries_length
    @max_subseries = []
    @max_product = 0
  end

  def calculate
    (@series.length - @subseries_length + 1).times do |index|
      subseries = @series[index...index + @subseries_length]
      unless subseries.include?(0)
        product = subseries.inject(&:*).to_i
        if product > @max_product
          @max_product = product
          @max_subseries = subseries
        end
      end
    end
    @max_product
  end

  def print
    puts "#{@max_subseries} = #{@max_product}"
  end
end