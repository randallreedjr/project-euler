# require 'factors'

describe 'Factors' do
  describe '#factorize' do
    describe 'when number has only one factor' do
      it 'returns sole factor' do
        subject = Factors.new(1)

        expect(subject.factorize).to eq([1])
      end
    end

    describe 'when number is prime' do
      it 'returns unique factors (2)' do
        subject = Factors.new(2)

        expect(subject.factorize).to eq([1, 2])
      end

      it 'returns unique factors (3)' do
        subject = Factors.new(3)

        expect(subject.factorize).to eq([1, 3])
      end

      it 'returns unique factors (83)' do
        subject = Factors.new(83)

        expect(subject.factorize).to eq([1, 83])
      end
    end

    describe 'when number is a perfect square' do
      it 'returns all factors' do
        subject = Factors.new(4)

        expect(subject.factorize).to eq([1, 2, 4])
      end

      it 'returns all factors' do
        subject = Factors.new(100)

        expect(subject.factorize).to eq([1, 2, 4, 5, 10, 20, 25, 50, 100])
      end
    end

    describe 'when number is a perfect number' do
      it 'returns all factors' do
        subject = Factors.new(28)

        expect(subject.factorize).to eq([1, 2, 4, 7, 14, 28])
      end
    end

    describe 'when number has one factor repeated many times' do
      it 'returns all factors' do
        subject = Factors.new(24)

        expect(subject.factorize).to eq([1, 2, 3, 4, 6, 8, 12, 24])
      end

      it 'returns all factors' do
        subject = Factors.new(1024)

        expect(subject.factorize).to eq([1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024])
      end
    end
  end

  describe '#proper_divisors' do
    it 'returns only proper divisors' do
      @divisors = Factors.new(28)

      expect(@divisors.proper_divisors).to eq([1, 2, 4, 7, 14])
    end

    it 'returns only proper divisors' do
      @divisors = Factors.new(1024)

      expect(@divisors.proper_divisors).to eq([1, 2, 4, 8, 16, 32, 64, 128, 256, 512])
    end
  end
end
