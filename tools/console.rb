require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

# airbnb
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

# bakery
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

# crowdfunding
# user1 = User.new("cody_codes")
# user2 = User.new("doctor_e_ville")
# user3 = User.new("strange_bloke_from_hull")
#
# project1 = Project.new("Gap Ya", user1, 900.0)
# project2 = Project.new("Fix My Teeth", user2, 1000.0)
# project3 = Project.new("Nail Clippings Exhibition", user3, 20000.00)
#
# pledge1 = Pledge.new(project2, user1, 10.0)
# pledge2 = Pledge.new(project1, user2, 200.0)
# pledge3 = Pledge.new(project1, user1, 50.0)
# pledge4 = Pledge.new(project2, user1, 70.0)
# pledge5 = Pledge.new(project2, user1, 1000.0)

location1 = Location.new("Dublin")
location2 = Location.new("Cardiff")
location3 = Location.new("Liverpool")
# (name, location, client)

client1 = Client.new("Jay Johnson")
client2 = Client.new("Anthony Sunderland")
client3 = Client.new("Liam Glover")
client4 = Client.new("Daniel Woodhouse")
client5 = Client.new("Steve Crossley")
# client5 = Client.new()
# client6 = Client.new()
# client7 = Client.new()
# client8 = Client.new()

trainer1 = Trainer.new("trainer1", location1, client1)
trainer2 = Trainer.new("trainer2", location2, client2)
trainer3 = Trainer.new("trainer2", location2, client3)
trainer4 = Trainer.new("trainer2", location2, client4)


binding.pry
