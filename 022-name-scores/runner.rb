class Runner
  def initialize(filename)
    @names = []
    @filename = filename
  end

  def run!
    load_names!
    score_names!
    print_score
  end

  def load_names!
    reader = NameFileReader.new(@filename)
    reader.read_names
    @names = reader.sort_names!
  end

  def score_names!
    scorer = NameScorer.new

    scores = @names.collect.with_index do |name, index|
      scorer.name_score(name, index + 1)
    end
    @score = scores.inject(:+)
  end

  def print_score
    puts @score
  end
end
