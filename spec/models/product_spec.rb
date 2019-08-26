require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do
    it 'should display name' do
      product = Product.new
      product.valid?
      expect(product).to be_present
    end
    it 'should display price' do
      @product = Product.new
      expect(@product.price).to eq(nil)
    end
    it 'should display quantity' do
      @product = Product.new
      expect(@product.quantity).to eq(nil)
    end
    it 'should display category' do
      @product = Product.new
      expect(@product.category).to eq(nil)
    end
  end

end