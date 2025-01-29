class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :food

  def item_price 
    food.price * quantity
  end

end
