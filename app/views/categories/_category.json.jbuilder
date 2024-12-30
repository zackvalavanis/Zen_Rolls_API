json.id category.id
json.name category.name
json.foods category.foods do |food|
  json.name food.name
  json.price food.price
  json.description food.description
  json.image_url food.image_url
end