class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items
  has_many :foods, through: :cart_items

  def total_price
    cart_items.sum { |item| item.food.price * item.quantity } # Assuming `price` exists on Food
  end

end
