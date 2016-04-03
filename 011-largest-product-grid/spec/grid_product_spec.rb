require 'spec_helper'

describe 'GridProduct' do
  let(:grid) { 4.times.collect {|i| (i+1..i+4).to_a} }
  let(:grid_product) { GridProduct.new(grid) }

  context 'vertical' do
      context 'product up' do
      it 'returns 0 with insufficient elements' do
        expect(grid_product.product_up(0,0)).to eq(0)
      end

      it 'returns product with sufficient elements' do
        expect(grid_product.product_up(0,3)).to eq(24)
      end
    end

    context 'product down' do
      it 'returns 0 with insufficient elements' do
        expect(grid_product.product_down(0,1)).to eq(0)
      end

      it 'returns product with sufficient elements' do
        expect(grid_product.product_down(1,0)).to eq(120)
      end
    end
  end

  context 'horizontal' do
    context 'horizontal product left' do
      it 'returns 0 with insufficient elements' do
        expect(grid_product.product_left(1,0)).to eq(0)
      end

      it 'returns product with sufficient elements' do
        expect(grid_product.product_left(3,2)).to eq(360)
      end
    end

    context 'horizontal product right' do
      it 'returns 0 with insufficient elements' do
        expect(grid_product.product_right(1,1)).to eq(0)
      end

      it 'returns product with sufficient elements' do
        expect(grid_product.product_right(0,3)).to eq(840)
      end
    end
  end

  context 'diagonal' do
    context 'diagonal product up left' do
      it 'returns 0 with insufficient elements' do
        expect(grid_product.product_up_left(2,2)).to eq(0)
      end

      it 'returns product with sufficient elements' do
        expect(grid_product.product_up_left(3,3)).to eq(105)
      end
    end

    context 'diagonal product up right' do
      it 'returns 0 with insufficient elements' do
        expect(grid_product.product_up_right(2,2)).to eq(0)
      end

      it 'returns product with sufficient elements' do
        expect(grid_product.product_up_right(0,3)).to eq(256)
      end
    end

    context 'diagonal product down right' do
      it 'returns 0 with insufficient elements' do
        expect(grid_product.product_down_right(2,2)).to eq(0)
      end

      it 'returns product with sufficient elements' do
        expect(grid_product.product_down_right(0,0)).to eq(105)
      end
    end

    context 'diagonal product down left' do
      it 'returns 0 with insufficient elements' do
        expect(grid_product.product_down_left(2,2)).to eq(0)
      end

      it 'returns product with sufficient elements' do
        expect(grid_product.product_down_left(3,0)).to eq(256)
      end
    end
  end

  context 'combinations' do
    context 'vertical' do
      it 'returns 0 with insufficient elements' do
        expect(grid_product.product_vertical(2,2)).to eq(0)
      end

      it 'calculates max with sufficient lements' do
        expect(grid_product.product_vertical(0,0)).to eq(24)
      end
    end

    context 'horizontal' do
      it 'returns 0 with insufficient elements' do
        expect(grid_product.product_horizontal(2,2)).to eq(0)
      end

      it 'calculates max with sufficient lements' do
        expect(grid_product.product_horizontal(0,1)).to eq(120)
      end
    end

    context 'diagonal' do
      it 'returns 0 with insufficient elements' do
        expect(grid_product.product_horizontal(2,2)).to eq(0)
      end

      it 'calculates max with sufficient lements' do
        expect(grid_product.product_diagonal(0,0)).to eq(105)
        expect(grid_product.product_diagonal(3,0)).to eq(256)
        expect(grid_product.product_diagonal(3,3)).to eq(105)
        expect(grid_product.product_diagonal(0,3)).to eq(256)
      end
    end

    context 'all_products' do
      it 'returns 0 with insufficient elements' do
        expect(grid_product.product_horizontal(2,2)).to eq(0)
      end

      it 'calculates max with sufficient lements' do
        expect(grid_product.all_products(0,0)).to eq(105)
        expect(grid_product.all_products(1,0)).to eq(120)
        expect(grid_product.all_products(2,0)).to eq(360)
        expect(grid_product.all_products(3,0)).to eq(840)

        expect(grid_product.all_products(0,1)).to eq(120)
        expect(grid_product.all_products(1,1)).to eq(0)
        expect(grid_product.all_products(2,1)).to eq(0)
        expect(grid_product.all_products(3,1)).to eq(120)

        expect(grid_product.all_products(0,2)).to eq(360)
        expect(grid_product.all_products(1,2)).to eq(0)
        expect(grid_product.all_products(2,2)).to eq(0)
        expect(grid_product.all_products(3,2)).to eq(360)

        expect(grid_product.all_products(0,3)).to eq(840)
        expect(grid_product.all_products(1,3)).to eq(120)
        expect(grid_product.all_products(2,3)).to eq(360)
        expect(grid_product.all_products(3,3)).to eq(840)
      end
    end
  end

  context 'compute' do
    it 'returns the greatest product in the grid' do
      expect(grid_product.compute).to eq(840)
    end
  end
end
