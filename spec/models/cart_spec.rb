require 'rails_helper'

describe Cart do
  it "can be instansiated" do
    cart = Cart.new()
    expect(cart.nil?).to be(false)
  end

  it "adds one item to itself" do
    cart = Cart.new
    cart.add_item(1)
    expect(cart.empty?).to eq(false)

  end

  it "adds up in quantity" do
    cart = Cart.new
    3.times {cart.add_item(1)}
    expect(cart.items.length).to eq(1)
    expect(cart.items.first.quantity).to eq(3)

  end


end
