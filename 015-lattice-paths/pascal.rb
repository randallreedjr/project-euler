class Pascal
  attr_reader :rows, :last_row, :level
  def initialize
    @rows = [[1]]
    @last_row = [1]
    @level = 1
  end

  def generate(level)
    while @level < level
      next_row(@last_row, @level)
    end
  end

  def next_row(current_row, level)
    @last_row = ([0] + current_row).zip(current_row + [0]).collect { |a, b| a + b }
    @rows << @last_row
    @level += 1
  end

  def mid_point
    last_row[level / 2]
  end
end
