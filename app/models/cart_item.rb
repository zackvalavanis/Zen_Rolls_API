class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :food 

  def total_price 
    food.price * quantity
  end
end
