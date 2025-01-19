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
  puts "Failed to create food"
end 

food = Food.new(
  name: "California Roll",
  price: 3.99,
  image_url: 'https://www.blondelish.com/wp-content/uploads/2020/11/California-Rolls-Recipe-Sushi-Rice-Recipe-10.jpg',
  description: 'Imitation Crab and avocado'
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 


category = Category.new(
  name: "Regular Rolls (Maki)",
)
if category.save 
  puts "Category created successfully: #{category.name}"
else 
  puts "Failed to create category"
end 

category = Category.new(
  name: "Specialty Rolls",
)
if category.save 
  puts "Category created successfully: #{category.name}"
else 
  puts "Failed to create category"
end 

category = Category.new(
  name: "Nigiri",
)
if category.save 
  puts "Category created successfully: #{category.name}"
else 
  puts "Failed to create category"
end 

category = Category.new(
  name: "Sashimi",
)
if category.save 
  puts "Category created successfully: #{category.name}"
else 
  puts "Failed to create category"
end 

category = Category.new(
  name: "Party Trays",
)
if category.save 
  puts "Category created successfully: #{category.name}"
else 
  puts "Failed to create category"
end 

category = Category.new(
  name: "Party Trays",
)
if category.save 
  puts "Category created successfully: #{category.name}"
else 
  puts "Failed to create category"
end 

category = Category.new(
  name: "Sides",
)
if category.save 
  puts "Category created successfully: #{category.name}"
else 
  puts "Failed to create category"
end 

category = Category.new(
  name: "Beverages",
)
if category.save 
  puts "Category created successfully: #{category.name}"
else 
  puts "Failed to create category"
end 

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
  puts "Failed to create food"
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
  puts "Failed to create food"
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
  puts "Failed to create food"
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
  puts "Failed to create food"
end 

food = Food.new(
  name: "Chicago Roll",
  price: 10.50,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p17_i1_w5472.jpeg?width=2560&dpr=2',
  description: 'Tuna, albacore tuna, scallions, spicy mayo',
  category_id: 2
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Samurai Roll",
  price: 12.99,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p94_i1_w5472.jpeg?width=2560&dpr=2',
  description: 'Salmon, avocado, cucumber, chili mayo, wrapped with soy paper, with tempura crunch, eel sauce, and wasabi mayo on top',
  category_id: 2
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Dragon Roll",
  price: 14.99,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p304_i2_w5472.jpeg?width=2560&dpr=2',
  description: 'Eel and smelt roe, with eel, eel sauce and avocado on top',
  category_id: 2
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Rainbow Roll",
  price: 14.99,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p295_i1_w1735.jpeg?dpr=2',
  description: 'Imitation crab, avocado with tuna, salmon, yellowtail and shrimp on top',
  category_id: 2
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Caterpillar Roll",
  price: 15.99,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p336_i4_w3888.jpeg?width=2560&dpr=2',
  description: 'Eel, spicy mayo, tempura crunch, wrapped with soy paper, with avocado and eel sauce on top',
  category_id: 2
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "King Salmon Nigiri",
  price: 3.50,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p298_i1_w1389.jpeg?dpr=2',
  description: 'Salmon nigiri',
  category_id: 3
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Fresh Water Eel (Unagi) Nigiri",
  price: 3.50,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p9_i1_w1339.jpeg?dpr=2',
  description: 'Eel nigiri',
  category_id: 3
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Tuna (Maguro) Nigiri",
  price: 3.50,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p5_i1_w1108.jpeg?dpr=2',
  description: 'Tuna nigiri',
  category_id: 3
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Sea Urchin (Uni) Nigiri",
  price: 9.29,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p213_i1_w1083.jpeg?dpr=2',
  description: 'Sea urchin nigiri',
  category_id: 3
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Octopus (Tako) Nigiri",
  price: 3.50,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p363_i1_w1451.jpeg?dpr=2',
  description: 'Octopus nigiri',
  category_id: 3
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Shrimp (Ebi) Nigiri",
  price: 2.50,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p235_i1_w1205.jpeg?dpr=2',
  description: 'Shrimp nigiri',
  category_id: 3
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Tuna (Maguro) Sashimi",
  price: 3.20,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p86_i1_w2001.jpeg?dpr=2',
  description: 'Tuna sashimi',
  category_id: 4
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Yellowtail (Hamachi) Sashimi",
  price: 3.20,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p377_i1_w626.jpeg?dpr=2',
  description: 'Yellowtail sashimi',
  category_id: 4
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Grilled Eel (Unagi) Sashimi",
  price: 3.20,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p197_i1_w400.jpeg?dpr=2',
  description: 'Grilled eel sashimi',
  category_id: 4
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Octopus (Tako) Sashimi",
  price: 3.20,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p95_i1_w1000.jpeg?dpr=2',
  description: 'Octopus sashimi',
  category_id: 4
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "King Salmon Sashimi",
  price: 3.20,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p224_i1_w451.jpeg?dpr=2',
  description: 'King salmon sashimi',
  category_id: 4
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Albacore Sashimi",
  price: 2.69,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p343_i1_w1000.jpeg?dpr=2',
  description: 'Albacore sashimi',
  category_id: 4
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Smoked Salmon Roll",
  price: 4.99,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p430_i1_w1366.jpeg?dpr=2',
  description: 'Smoked salmon roll',
  category_id: 1
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Chicago Fire Roll",
  price: 15.99,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p456_i2_w3275.jpeg?width=2560&dpr=2',
  description: 'Shrimp tempura, cream cheese, avocado, chili mayo, with seared tuna salad (tuna, chili mayo, scallions) and eel sauce, chili mayo, wasabi mayo on top, wrapped in soy paper',
  category_id: 2
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Saint Patrick's Tray",
  price: 69.99,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p821_i1_w2048.jpeg?dpr=2',
  description: '1 Spicy Crunch California, 1 Russian, 1 Hana, 2 Hawaiin, 1 Oishii, 1 Spicy Tuna Mix with Orange Tobiko, Cucumber, Avocado, and Wasabi Tobiko (64 pc / serves 4-5) No substitutions.',
  category_id: 5
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "North Shore Party Tray",
  price: 79.99,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p413_i1_w2449.jpeg?dpr=2',
  description: '1 Orange roll, 1 Wilmette roll, 1 Samurai roll, 1 spicy salmon/avocado roll, 1 spicy tuna/avocado roll, 1 spicy crunchy California, 1 California Deluxe, 1 Wasabi roll (50 pieces / serves 5-6)',
  category_id: 5
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Large Party Tray",
  price: 99.99,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p83_i1_w590.jpeg?dpr=2',
  description: '4 pcs Tuna, 4pcs Yellowtail, 4 pcs Salmon, 4 pcs Albacore, 4 pcs Octopus, 4 pcs Shrimp, 4 pcs Surf Clam, 4 pcs Eel, 4 pcs Smelt Roe, 2 California Rolls, 1 Tuna Roll, 1 Cucumber Roll, 1 California Deluxe (70 pieces / serves 5-6). No substitutions.',
  category_id: 5
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Large Deluxe Party Tray",
  price: 179.99,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p267_i1_w590.jpeg?dpr=2',
  description: '6 pcs Sea Urchin, 6 pcs Salmon Roe, 5 pcs Yellowtail, 5 pcs Salmon, 5 pcs Albacore, 5 pcs Octopus, 5 pcs Shrimp, 5 pcs Eel, 10 pcs Tuna, 2 Tuna Rolls, 1 Cucumber Roll, 1 Pickled Radish Roll, 1 Futomaki Roll (86 pieces / serves 6-7) No substitutions.',
  category_id: 5
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end 

food = Food.new(
  name: "Forever Party Tray",
  price: 69.99,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p384_i1_w4166.jpeg?width=2560&dpr=2',
  description: '1 Orange roll (no roe), 1 spicy salmon/avocado (seaweed outside), 1 California (seaweed outside), 1 spicy shrimp with cucumber (seaweed outside), 1 Tokyo roll, 1 sriracha roll with avocado (no rice), 3 pieces each of salmon and yellowtail sashimi, small portion of seaweed salad (50 pieces / serves 4-5)',
  category_id: 5
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end

food = Food.new(
  name: "Moms Special Party Tray",
  price: 69.99,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p368_i2_w4582.jpeg?width=2560&dpr=2',
  description: '3 pieces each of tuna, salmon, and yellowtail sashimi; 3 pieces each of tuna, salmon, shrimp, and albacore nigiri; 1 carpaccio roll (spicy tuna, yellowtail, avocado, cilantro and jalapeño roll wrapped in cucumber and soy paper with wasabi tobiko, scallions and ponzu on top (no rice)); served over shredded radish (29 pieces / serves 3-4)',
  category_id: 5
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end

food = Food.new(
  name: "Shrimp Shumai",
  price: 7.50,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p1030_i1_w3024.jpeg?width=2560&dpr=2',
  description: '8 pcs steamy Japanese style shrimp dumplings come with house made special sauce.',
  category_id: 7
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end

food = Food.new(
  name: "Large Miso Soup",
  price: 2.95,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p976_i1_w5472.jpeg?width=2560&dpr=2',
  description: 'Miso Soup',
  category_id: 7
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end

food = Food.new(
  name: "Garlic Chile Edamame",
  price: 5.59,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p1004_i2_w3024.jpeg?width=2560&dpr=2',
  description: 'NEW summer kick!! Japanese chili powder and Garlic flavored edamame',
  category_id: 7
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end

food = Food.new(
  name: "Edamame",
  price: 4.59,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p681_i1_w1200.jpeg?dpr=2',
  description: 'Edamame',
  category_id: 7
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end

food = Food.new(
  name: "Takoyaki",
  price: 6.99,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p1034_i1_w2888.jpeg?width=2560&dpr=2',
  description: 'Japanese popular street food! 8 pcs Takoyaki topped with special sauce, mayo, dried bonito flakes and, seaweed flakes.',
  category_id: 7
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end

food = Food.new(
  name: "White Rice",
  price: 2.00,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p210_i1_w1000.jpeg?dpr=2',
  description: 'White Rice',
  category_id: 7
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end

food = Food.new(
  name: "Unsweetened Tea",
  price: 2.59,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p728_i1_w531.jpeg?dpr=2',
  description: 'Cold tea',
  category_id: 8
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end

food = Food.new(
  name: "Calpico Original",
  price: 3.59,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p643_i1_w700.jpeg?dpr=2',
  description: 'Calpico',
  category_id: 8
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end

food = Food.new(
  name: "Cold Golden Oolong Tea",
  price: 2.59,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p604_i1_w2048.jpeg?dpr=2',
  description: 'Cold Tea',
  category_id: 8
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end

food = Food.new(
  name: "UCC Coffee",
  price: 2.00,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p522_i1_w700.jpeg?dpr=2',
  description: 'UCC Coffee',
  category_id: 8
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end

food = Food.new(
  name: "Dasani Water",
  price: 2.00,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p544_i1_w680.jpeg?dpr=2',
  description: 'Dasani Water',
  category_id: 8
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end

food = Food.new(
  name: "Cold Jasmine Green Tea",
  price: 2.59,
  image_url: 'https://136592157.cdn6.editmysite.com/uploads/1/3/6/5/136592157/s644165306373586183_p607_i1_w1200.jpeg?dpr=2',
  description: 'Cold Jasmine Green Tea',
  category_id: 8
)
if food.save 
  puts "Food created successfully: #{food.name}"
else 
  puts "Failed to create food"
end