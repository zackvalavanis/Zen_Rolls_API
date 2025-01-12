json.id food.id
json.name food.name
json.price food.price
json.description food.description
json.image_url food.image_url
json.category_id food.category_id
json.inventory food.inventory
json.category do
  json.name food.category&.name
end
