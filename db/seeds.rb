# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# food = Food.new(
#   name: "California Roll",
#   price: 3.99,
#   image_url: 'https://www.blondelish.com/wp-content/uploads/2020/11/California-Rolls-Recipe-Sushi-Rice-Recipe-10.jpg',
#   description: 'Imitation Crab and avocado'
# )
# if food.save 
#   puts "Food created successfully: #{food.name}"
# else 
#   puts "Failed to create food: #{food.errors_full_messages.join(', ')}"
# end 

# food = Food.new(
#   name: "California Roll",
#   price: 3.99,
#   image_url: 'https://www.blondelish.com/wp-content/uploads/2020/11/California-Rolls-Recipe-Sushi-Rice-Recipe-10.jpg',
#   description: 'Imitation Crab and avocado'
# )
# if food.save 
#   puts "Food created successfully: #{food.name}"
# else 
#   puts "Failed to create food: #{food.errors_full_messages.join(', ')}"
# end 


# category = Category.new(
#   name: "Regular Rolls (Maki)",
# )
# if category.save 
#   puts "Category created successfully: #{category.name}"
# else 
#   puts "Failed to create category: #{category.errors_full_messages.join(', ')}"
# end 

# category = Category.new(
#   name: "Specialty Rolls",
# )
# if category.save 
#   puts "Category created successfully: #{category.name}"
# else 
#   puts "Failed to create category: #{category.errors_full_messages.join(', ')}"
# end 

# category = Category.new(
#   name: "Nigiri",
# )
# if category.save 
#   puts "Category created successfully: #{category.name}"
# else 
#   puts "Failed to create category: #{category.errors_full_messages.join(', ')}"
# end 

# category = Category.new(
#   name: "Sashimi",
# )
# if category.save 
#   puts "Category created successfully: #{category.name}"
# else 
#   puts "Failed to create category: #{category.errors_full_messages.join(', ')}"
# end 

# category = Category.new(
#   name: "Party Trays",
# )
# if category.save 
#   puts "Category created successfully: #{category.name}"
# else 
#   puts "Failed to create category: #{category.errors_full_messages.join(', ')}"
# end 

# category = Category.new(
#   name: "Party Trays",
# )
# if category.save 
#   puts "Category created successfully: #{category.name}"
# else 
#   puts "Failed to create category: #{category.errors_full_messages.join(', ')}"
# end 

# category = Category.new(
#   name: "Sides",
# )
# if category.save 
#   puts "Category created successfully: #{category.name}"
# else 
#   puts "Failed to create category: #{category.errors_full_messages.join(', ')}"
# end 

# category = Category.new(
#   name: "Beverages",
# )
# if category.save 
#   puts "Category created successfully: #{category.name}"
# else 
#   puts "Failed to create category: #{category.errors_full_messages.join(', ')}"
# end 

food = Food.new(
  name: "Spicy Tuna Roll",
  price: 7.50,
  image_url: 'https://www.alyonascooking.com/wp-content/uploads/2015/10/spicy-tuna-roll-9.jpg',
  description: 'Fresh tuna, spicy mayo',
  category_id: 1
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food: #{food.errors_full_messages.join(', ')}"
end 

food = Food.new(
  name: "Spicy Salmon Roll",
  price: 6.99,
  image_url: 'https://simplyhomecooked.com/wp-content/uploads/2022/06/spicy-salmon-roll-4.jpg',
  description: 'Fresh salmon, spicy mayo',
  category_id: 1
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food: #{food.errors_full_messages.join(', ')}"
end 

food = Food.new(
  name: "Salmon Roll",
  price: 6.50,
  image_url: 'https://popmenucloud.com/cdn-cgi/image/width%3D1200%2Cheight%3D1200%2Cfit%3Dscale-down%2Cformat%3Dauto%2Cquality%3D60/cswnyzje/09b14a68-c399-4b23-ab15-b2f622e78ae6.jpg',
  description: 'Fresh salmon',
  category_id: 1
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food: #{food.errors_full_messages.join(', ')}"
end 

food = Food.new(
  name: "Tuna Roll",
  price: 6.99,
  image_url: 'https://takestwoeggs.com/wp-content/uploads/2023/08/Tekka-Maki-Tuna-Sushi-Roll-Takestwoeggs-sq.jpg',
  description: 'Fresh tuna',
  category_id: 1
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food: #{food.errors_full_messages.join(', ')}"
end 


