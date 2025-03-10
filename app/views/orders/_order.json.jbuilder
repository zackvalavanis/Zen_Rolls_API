# app/views/orders/_order.json.jbuilder
json.id order.id
json.cart_id order.cart_id
json.cart_items order.order_items do |order_item|
  json.id order_item.id
  json.name order_item.food.name
  json.image_url order_item.food.image_url
  json.quantity order_item.quantity
  json.price order_item.food.price
end
json.total_price order.total_price
json.created_at order.created_at