require './file_reader'
require './name_scorer'
require './runner'



runner = Runner.new('p022_names.txt')
runner.run!
