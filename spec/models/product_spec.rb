require 'spec_helper'

describe Product do
  context "with valid input" do
    it "creates new product with given name and price"
    it "doesn't create new product without name"
    it "doesn't create new product without price"

  end

  context "with invalid input" do
    it "doesn't create new product with text in price field"
    it "doesn't create new product with price less than 0.01"

  end

end
