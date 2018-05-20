require 'spec_helper'
require_relative '../proper_divisor.rb'

describe 'ProperDivisor' do
  context 'when number is not provided' do
    let(:proper_divisor) { ProperDivisor.new }
    it 'defaults number to 1' do
      expect(proper_divisor.number).to eq 1
    end
  end

  describe '#calculate' do
    let(:divisors) { proper_divisor.calculate(sort: true) }
    context 'when number is 1' do
      let(:proper_divisor) { ProperDivisor.new(1) }
      it 'returns an array' do
        is_array = divisors.is_a?(Array)
        expect(is_array).to be true
      end

      it 'does not include number itself' do
        expect(divisors).to_not include 1
      end

      it 'returns all proper divisors' do
        expect(divisors).to eq []
      end
    end

    context 'when number is 220' do
      # Sample from problem
      let(:proper_divisor) { ProperDivisor.new(220) }
      it 'returs all proper divisors' do
        divisors = proper_divisor.calculate(sort: true)
        expect(divisors).to eq [1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110]
      end
    end

    context 'when number is 284' do
      # Sample from problem
      let(:proper_divisor) { ProperDivisor.new(284) }
      it 'returs all proper divisors' do
        divisors = proper_divisor.calculate(sort: true)
        expect(divisors).to eq [1, 2, 4, 71, 142]
      end
    end
  end

  describe '#sum' do
    context 'when number is 1' do
      let(:proper_divisor) { ProperDivisor.new(1) }
      it 'returns 0' do
        expect(proper_divisor.sum).to eq 0
      end
    end

    context 'when number is 220' do
      # Sample from problem
      let(:proper_divisor) { ProperDivisor.new(220) }
      it 'returs all proper divisors' do
        expect(proper_divisor.sum).to eq 284
      end
    end

    context 'when number is 284' do
      # Sample from problem
      let(:proper_divisor) { ProperDivisor.new(284) }
      it 'returs all proper divisors' do
        expect(proper_divisor.sum).to eq 220
      end
    end
  end
end
