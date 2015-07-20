require 'rails_helper'

describe Product do
  context "with valid input" do
    it "is valid with name and price" do
      product = Product.new(name: "Lisyk", price: 20)
      expect(product).to be_valid

    end
    it "is invalid without name" do
      product = Product.new(price: 20)
      expect(product).to be_invalid
    end

    it "returns error name can't be blank" do
      product = Product.new(price: 20)
      product.valid?
      expect(product.errors[:name]).to include("can't be blank")

    end

    it "is invalid without price" do
      product = Product.new(name: "Lisyk")
      expect(product).to be_invalid
    end
    it "is invalid with duplicate name" do
      Product.create(name: "Lisyk", price: 20)
      product = Product.new(name: "Lisyk", price: 20)
      expect(product).to be_invalid
    end

    it "returns error has been taken" do
      Product.create(name: "Lisyk", price: 20)
      product = Product.new(name: "Lisyk", price: 20)
      product.valid?
      expect(product.errors[:name]).to include("has already been taken")

    end
  end

  context "with unvalid input" do
    it "is invalid with string in price field" do
      product = Product.new(name: "Lisyk", price: "Lisyk")
      expect(product).to be_invalid
    end
  end


end
