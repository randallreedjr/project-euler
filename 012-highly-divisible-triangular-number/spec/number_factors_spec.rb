require 'spec_helper'

describe NumberFactors do
  it 'returns the number of factors in a small number' do
    nf = NumberFactors.new(1)

    expect(nf.factor_count).to eq(1)
  end

  it 'returns the number of factors in a larger number' do
    nf = NumberFactors.new(28)

    expect(nf.factor_count).to eq(6)
  end

  it 'returns the number of factors in a perfect square' do
    nf = NumberFactors.new(9)
    # 1, 3, 9
    expect(nf.factor_count).to eq(3)
  end
end
