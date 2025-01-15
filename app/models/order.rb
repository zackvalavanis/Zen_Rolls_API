class Order < ApplicationRecord
  belongs_to :user
  has_many :ordered_items
  has_many :cart_items, through: :ordered_items
  validates :total_price, presence: true

  def total_price
    cart_items.sum { |item| item.price * item.quantity }
  end

  def add_cart_items_from_cart
    cart.cart_items.each do |cart_item|
      ordered_items.create!(cart_item: cart_item)
    end
  end
end
