json.id cart_item.id
json.quantity cart_item.quantity 
json.foods cart_item.foods do |food|  
  json.id food.id
  json.name food.name
  json.price food.price
  json.description food.description
  json.image_url food.image_url
  json.inventory food.inventory
end