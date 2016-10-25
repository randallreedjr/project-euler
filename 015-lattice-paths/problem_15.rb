$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'pascal'

class Lattice
  def initialize(dimension)
    @dimension = dimension
    @pascal = Pascal.new
    @pascal.generate(2 * dimension + 1)
  end

  def number_of_paths
    @pascal.mid_point
  end
end

lattice = Lattice.new(20)
puts lattice.number_of_paths
