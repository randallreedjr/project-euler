require 'Prime'

class PrimeSummation
  def initialize(limit)
    @limit = limit
  end

  def find_sum
    Prime.each(@limit).to_a.inject(&:+)
  end
end