# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Sample restaurants (10 entries) — idempotent using `find_or_create_by!`
restaurants = [
	{ name: "Le Petit Bistrot", address: "12 Rue de la Paix, Paris", phone_number: "01 23 45 67 89", category: "french" },
	{ name: "Mama Leone's", address: "Via della Conciliazione 8, Rome", phone_number: "+39 06 698 1234", category: "italian" },
	{ name: "Dragon Blossom", address: "88 Nanjing Rd, Shanghai", phone_number: "+86 21 6432 9988", category: "chinese" },
	{ name: "Sakura Sushi", address: "4 Chome-2-3 Ginza, Tokyo", phone_number: "+81 3-3571-2345", category: "japanese" },
	{ name: "Brasserie des Artistes", address: "7 Place du Marché, Brussels", phone_number: "+32 2 512 34 56", category: "belgian" },
	{ name: "Trattoria da Marco", address: "Piazza Navona 21, Rome", phone_number: "+39 06 689 5678", category: "italian" },
	{ name: "Beijing Garden", address: "10 Chang'an Ave, Beijing", phone_number: "+86 10 6555 4433", category: "chinese" },
	{ name: "La Table de Claire", address: "3 Rue Montorgueil, Paris", phone_number: "01 45 67 89 01", category: "french" },
	{ name: "Osaka Yakitori", address: "2-4 Dotonbori, Osaka", phone_number: "+81 6-6211-9988", category: "japanese" },
	{ name: "Chez Dupont", address: "18 Rue Cler, Paris", phone_number: "01 42 73 00 11", category: "french" }
]

restaurants.each do |attrs|
	Restaurant.find_or_create_by!(name: attrs[:name]) do |r|
		r.address = attrs[:address]
		r.phone_number = attrs[:phone_number]
		r.category = attrs[:category]
	end
end
