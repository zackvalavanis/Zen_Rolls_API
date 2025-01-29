json.cart_items cart.cart_items do |cart_item|
  json.id cart_item.food.id
  json.name cart_item.food.name
  json.quantity cart_item.quantity
  json.price cart_item.food.price
  json.item_price cart_item.item_price
end

json.foods cart.foods do |food|
  json.id food.id
  json.name food.name 
  json.image_url food.image_url
end 

json.total_price format('%.2f', @cart.total_price)