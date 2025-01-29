json.cart_items cart.cart_items do |cart_item|
  json.id cart_item.food.id
  json.name cart_item.food.name
  json.quantity cart_item.quantity
  json.price cart_item.food.price
  json.total_price cart_item.total_price
end