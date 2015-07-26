require 'spec_helper'

describe PrimeSummation do
  it 'should find correct summation for primes under 10' do
    prime_summer = PrimeSummation.new(10)
    expect(prime_summer.find_sum).to eq(17)
  end

  it 'should find correct summation for primes under 100' do
    prime_summer = PrimeSummation.new(100)
    expect(prime_summer.find_sum).to eq(1060)
  end

  it 'should find correct summation for primes under 1000' do
    prime_summer = PrimeSummation.new(1000)
    expect(prime_summer.find_sum).to eq(76127)
  end

  it 'should find correct summation for primes under 2000000' do
    prime_summer = PrimeSummation.new(2000000)
    expect(prime_summer.find_sum).to eq(142913828922)
  end
end