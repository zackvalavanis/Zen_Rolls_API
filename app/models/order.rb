class Order < ApplicationRecord
  belongs_to :cart
  has_many :ordered_items
  has_many :cart_items, through: :ordered_items
  
  def add_cart_items_from_cart
    cart.cart_items.each do |cart_item|
      ordered_items.create!(cart_item: cart_item)
    end
  end
end
