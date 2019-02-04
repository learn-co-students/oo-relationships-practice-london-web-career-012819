require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

# #listings
# listing1 = Listing.new('Bristol')
# listing2 = Listing.new('Sydney')
# listing3 = Listing.new('Glasgow')

# #guests
# daniel = Guest.new('Daniel')
# sarah = Guest.new('Sarah')
# sam = Guest.new('Sam')

# #trips
# trip1 = Trip.new(daniel, listing1)
# trip2 = Trip.new(daniel, listing2)
# trip3 = Trip.new(sarah, listing3)
# trip4 = Trip.new(sam, listing1)

# bakery1 = Bakery.new("Joe's")
# bakery2 = Bakery.new("ACME")
#
# dessert1 = Dessert.new(bakery1, "Crumble")
# dessert2 = Dessert.new(bakery2, "Spotted Dick")
# dessert3 = Dessert.new(bakery2, "Deep Fried Snickers")
#
# ingredient1 = Ingredient.new(dessert1, "apples", 200)
# ingredient2 = Ingredient.new(dessert2, "flour", 100)
# ingredient3 = Ingredient.new(dessert3, "snickers", 400)
# ingredient4 = Ingredient.new(dessert3, "oil", 400)
# ingredient5 = Ingredient.new(dessert2, "raisins", 100)

user1 = User.new("cody_codes")
user2 = User.new("doctor_e_ville")

project1
project2

pledge1
pledge2



binding.pry
