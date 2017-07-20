class NameFileReader
  attr_reader :names
  def initialize(filename)
    @names = []
    @filename = filename
  end

  def read_names
    current_name = ''
    File.open(@filename, 'r') do |file|
      until file.eof? do
        char = file.getc
        if char == ','
          @names << current_name
          current_name = ''
        elsif char != ' ' && char != "\""
          current_name << char
        end
      end
      # last name is not followed by a comma
      @names << current_name
    end
  end

  def sort_names!
    @names.sort!
  end
end
