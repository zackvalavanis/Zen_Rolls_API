class OrderedItem < ApplicationRecord
  belongs_to :order
  belongs_to:food
  belongs_to :cart_item
  
  def price
    cart_item.price * cart_item.quantity
  end

end
