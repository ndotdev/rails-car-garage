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
Owner.destroy_all
Car.destroy_all

puts "Creating owners..."
owner1 = Owner.create!(nickname: "Ife500")
owner2 = Owner.create!(nickname: "DejiGas")
owner3 = Owner.create!(nickname: "WonderCar")
owner4 = Owner.create!(nickname: "Schmuck")

puts "Creating cars..."

Car.create!(brand: "Ferrari", model: "Testarossa", fuel: "Petrol", year: 1995, owner: owner1)
Car.create!(brand: "Mercedes", model: "300SL Roadster", fuel: "Petrol", year: 1985, owner: owner2)
Car.create!(brand: "Bentley", model: "Bentayga", fuel: "Diesel", year: 2019, owner: owner3)
Car.create!(brand: "Aston Martin", model: "DB5", fuel: "Petrol", year: 1967, owner: owner4)

puts "Done #{Owner.count} owners and #{Car.count} cars created"