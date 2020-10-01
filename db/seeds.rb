# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning data base"
Restaurant.destroy_all


puts "creating restaurant"
bleu_resto = { name: "bleu resto", address: "11 rue bleue", category: "chinese" }
rouge_resto = { name: "rouge resto", address: "11 rue rouge", category: "italian" }
yellow_resto = { name: "yellow resto", address: "11 rue jaune", category: "japanese" }
green_resto = { name: "green resto", address: "11 rue verte", category: "french" }
white_resto = { name: "white resto", address: "11 rue white", category: "belgian" }

[bleu_resto, rouge_resto, yellow_resto, green_resto, white_resto].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "finished"
