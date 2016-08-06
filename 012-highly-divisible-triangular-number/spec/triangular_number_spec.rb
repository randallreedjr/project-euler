require 'spec_helper'

describe TriangularNumber do
  it 'generates first triangular number' do
    expect(TriangularNumber.new(1).number).to eq(1)
  end

  it 'generates nth triangular number' do
    expect(TriangularNumber.new(10).number).to eq(55)
  end

  it 'safely generates the next triangular number' do
    tn = TriangularNumber.new(10)
    expect(tn.next).to eq(66)
    expect(tn.number).to eq(55)
  end

  it 'mutatingly generates the next triangular number' do
    tn = TriangularNumber.new(10)
    expect(tn.next!).to eq(66)
    expect(tn.number).to eq(66)
  end
end
