require 'spec_helper'

describe SmallestMultiple do

  before :each do
    @smallest_multiple = SmallestMultiple.new
  end

  context 'divisor test' do
    it 'should return true when testing valid divisibility' do
      expect(@smallest_multiple.send(:divisible_by_divisor?,10, 5)).to be(true)
    end

    it 'should return false when testing invalid divisibility' do
      expect(@smallest_multiple.send(:divisible_by_divisor?,10, 3)).to be(false)
    end
  end

  context 'small limit' do
    before :each do
      @smallest_multiple.set_divisors(3)
    end

    it 'should return false when testing valid divisor range' do
      expect(@smallest_multiple.send(:divisible_by_all?, 5)).to be(false)
    end

    it 'should return true when testing valid divisor range' do
      expect(@smallest_multiple.send(:divisible_by_all?, 6)).to be(true)
    end

    it 'should be able to determine the smallest multiple' do
      expect(@smallest_multiple.calculate()).to eq(6)
    end
  end

  context 'medium limit' do
    before :each do
      @smallest_multiple.set_divisors(10)
    end

    it 'should return true when testing valid divisor range' do
      expect(@smallest_multiple.send(:divisible_by_all?, 2520)).to be(true)
    end

    it 'should be able to determine the smallest multiple' do
      expect(@smallest_multiple.calculate()).to eq(2520)
    end
  end

  context 'large limit' do
    before :each do
      @smallest_multiple.set_divisors(20)
    end

    it 'should return true when testing valid divisor range' do
      expect(@smallest_multiple.send(:divisible_by_all?, 232792560)).to be(true)
    end

    it 'should be able to determine the smallest multiple' do
      expect(@smallest_multiple.calculate()).to eq(232792560)
    end
  end
end