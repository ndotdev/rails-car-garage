# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning the DB..."
Review.destroy_all
Favourite.destroy_all
Car.destroy_all
Owner.destroy_all

puts "Creating owners..."
owner1 = Owner.create!(nickname: "Ife500")
owner2 = Owner.create!(nickname: "DejiGas")
owner3 = Owner.create!(nickname: "WonderCar")
owner4 = Owner.create!(nickname: "Schmuck")

puts "Creating cars..."

Car.create!(brand: "Ferrari", model: "Testarossa", fuel: "Petrol", year: 1995, owner: owner1, image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/1991_Ferrari_Testarossa_4.9.jpg/1920px-1991_Ferrari_Testarossa_4.9.jpg')
Car.create!(brand: "Mercedes", model: "300SL Roadster", fuel: "Petrol", year: 1985, owner: owner2, image_url: 'https://www.hk-engineering.com/cars-extern-sales/image-thumb__34060__website/1119_36121394786891729474~-~2000w.jpeg')
Car.create!(brand: "Bentley", model: "Bentayga", fuel: "Diesel", year: 2019, owner: owner3, image_url: 'https://upload.wikimedia.org/wikipedia/commons/d/d0/Bentley_Bentayga_V8_%28FL%29_IMG_0005.jpg')
Car.create!(brand: "Aston Martin", model: "DB5", fuel: "Petrol", year: 1967, owner: owner4, image_url: 'https://static.wikia.nocookie.net/jamesbond/images/8/87/DB5.png/revision/latest?cb=20200104145307')

puts "Done #{Owner.count} owners and #{Car.count} cars created"