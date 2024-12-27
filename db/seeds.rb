# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

food = Food.new(
  name: "California Roll",
  price: 3.99,
  image_url: 'https://www.blondelish.com/wp-content/uploads/2020/11/California-Rolls-Recipe-Sushi-Rice-Recipe-10.jpg',
  description: 'Imitation Crab and avocado'
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food: #{food.errors_full_messages.join(', ')}"
end 
