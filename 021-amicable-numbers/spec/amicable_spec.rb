require 'spec_helper'
require_relative '../amicable.rb'

describe Amicable do
  let(:amicable) { Amicable.new }
  describe '#pair?' do
    context 'when numbers are an amicable pair' do
      it 'returns true' do
        expect(amicable.pair?(220, 284)).to be true
      end
    end

    context 'when numbers are not an amicable pair' do
      it 'returns false' do
        expect(amicable.pair?(1, 2)).to be false
      end
    end
  end

  describe '#all_pairs' do
    context 'when perfect number exists below limit' do
      let(:pairs) { amicable.all_pairs(6) }
      it 'does not include perfect number' do
        expect(pairs).to_not include [6, 6]
      end
    end

    context 'when amicable pair exists below limit' do
      let(:pairs) { amicable.all_pairs(300) }
      it 'includes pair' do
        expect(pairs).to include [220, 284]
      end
    end

    context 'when multiple amicable pairs exist below limit' do
      let(:pairs) { amicable.all_pairs(10000) }
      it 'includes all pairs' do
        expect(pairs.length).to eq 5
        expect(pairs).to include [6232, 6368]
      end
    end
  end

  describe '#sum_of_pairs' do
    context 'when no pairs exist below limit' do
      let(:sum) { amicable.sum_of_pairs(6) }
      it 'returns correct sum' do
        expect(sum).to eq 0
      end
    end

    context 'when amicable pair exists below limit' do
      let(:sum) { amicable.sum_of_pairs(300) }
      it 'returns correct sum' do
        expect(sum).to eq 504
      end
    end

    context 'when multiple amicable pairs exist below limit' do
      let(:sum) { amicable.sum_of_pairs(10000) }
      it 'returns correct sum' do
        expect(sum).to eq 31626
      end
    end
  end
end
