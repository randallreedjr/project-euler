describe 'Abundant' do
  describe '#abundant?' do
    it 'returns false for deficient numbers' do
      subject = Abundant.new(25)
      expect(subject.abundant?).to eq(false)
    end

    it 'returns false for perfect numbers' do
      subject = Abundant.new(28)
      expect(subject.abundant?).to eq(false)
    end

    it 'returns true for abundant numbers' do
      subject = Abundant.new(12)
      expect(subject.abundant?).to eq(true)
    end

    it 'returns true for abundant numbers' do
      subject = Abundant.new(196)
      expect(subject.abundant?).to eq(true)
    end

    it 'returns true for abundant numbers' do
      # Smallest odd abundant is 945
      subject = Abundant.new(945)
      expect(subject.abundant?).to eq(true)
    end

    it 'returns true for abundant numbers' do
      # Smallest odd abundant is 945
      subject = Abundant.new(7425)
      expect(subject.abundant?).to eq(true)
    end
  end

  describe 'sum_of_abundants?' do
    it 'returns true for a number that is the sum of two abundant numbers' do
      sum_of_abundants = Abundant.sum_of_abundants?(24)

      expect(sum_of_abundants).to be true
    end

    it 'returns true for a number that is the sum of two abundant numbers' do
      # Smallest odd abundant is 945
      sum_of_abundants = Abundant.sum_of_abundants?(1890)

      expect(sum_of_abundants).to be true
    end

    it 'returns true for a number that is the sum of two abundant numbers' do
      # Smallest odd abundant is 945
      sum_of_abundants = Abundant.sum_of_abundants?(957)

      expect(sum_of_abundants).to be true
    end

    it 'returns true for a number that is the sum of two abundant numbers' do
      # Smallest odd abundant is 945
      sum_of_abundants = Abundant.sum_of_abundants?(7621)

      expect(sum_of_abundants).to be true
    end

    it 'returns true for a number that is the sum of two abundant numbers' do
      sum_of_abundants = Abundant.sum_of_abundants?(20162)

      expect(sum_of_abundants).to be true
    end

    fit 'returns true for a number that is the sum of two abundant numbers' do
      sum_of_abundants = Abundant.sum_of_abundants?(24587)

      expect(sum_of_abundants).to be true
    end

    it 'returns false for a number that is not the sum of two abundant numbers' do
      sum_of_abundants = Abundant.sum_of_abundants?(23)

      expect(sum_of_abundants).to be false
    end

    it 'returns false for a number that is not the sum of two abundant numbers' do
      sum_of_abundants = Abundant.sum_of_abundants?(46)

      expect(sum_of_abundants).to be false
    end

    it 'returns false for a number that is not the sum of two abundant numbers' do
      sum_of_abundants = Abundant.sum_of_abundants?(20161)

      expect(sum_of_abundants).to be false
    end
  end
end
