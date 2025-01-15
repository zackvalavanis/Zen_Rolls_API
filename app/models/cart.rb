class Cart < ApplicationRecord
  has_many :cart_items
  has_many :foods, through: :cart_items
  has_one :order

  def add_food(food, quantity = 1)
    existing_item = cart_items.find_by(food: food)  # Look for cart_items, not the Cart itself
    if existing_item 
      existing_item.update(quantity: existing_item.quantity + quantity)
    else 
      cart_items.create(food: food, quantity: quantity)  # Use cart_items.create to add to the cart
    end 
  end

end
