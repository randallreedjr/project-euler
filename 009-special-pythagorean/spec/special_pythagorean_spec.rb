require 'spec_helper'

describe SpecialPythagorean do
  it 'should find triple 3,4,5' do
    pythagorean_finder = SpecialPythagorean.new(12)
    expect(pythagorean_finder.calculate).to eq([3,4,5])
  end

  it 'should find triple 5,12,13' do
    pythagorean_finder = SpecialPythagorean.new(30)
    expect(pythagorean_finder.calculate).to eq([5,12,13])
  end

  it 'should find triple 20,21,29' do
    pythagorean_finder = SpecialPythagorean.new(70)
    expect(pythagorean_finder.calculate).to eq([20,21,29])
  end

  it 'should find triple 200,375,425' do
    pythagorean_finder = SpecialPythagorean.new(1000)
    expect(pythagorean_finder.calculate).to eq([200,375,425])
  end
end