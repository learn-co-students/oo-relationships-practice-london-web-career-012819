require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

# airbnb
# listing1 = Listing.new('Bristol')
# listing2 = Listing.new('Sydney')
# listing3 = Listing.new('Glasgow')
# daniel = Guest.new('Daniel')
# sarah = Guest.new('Sarah')
# sam = Guest.new('Sam')
# trip1 = Trip.new(daniel, listing1)
# trip2 = Trip.new(daniel, listing2)
# trip3 = Trip.new(sarah, listing3)
# trip4 = Trip.new(sam, listing1)

# bakery
# bakery1 = Bakery.new("Joe's")
# bakery2 = Bakery.new("ACME")
# dessert1 = Dessert.new(bakery1, "Crumble")
# dessert2 = Dessert.new(bakery2, "Spotted Dick")
# dessert3 = Dessert.new(bakery2, "Deep Fried Snickers")
# ingredient1 = Ingredient.new(dessert1, "apples", 200)
# ingredient2 = Ingredient.new(dessert2, "flour", 100)
# ingredient3 = Ingredient.new(dessert3, "snickers", 400)
# ingredient4 = Ingredient.new(dessert3, "oil", 400)
# ingredient5 = Ingredient.new(dessert2, "raisins", 100)

# crowdfunding
# user1 = User.new("cody_codes")
# user2 = User.new("doctor_e_ville")
# user3 = User.new("strange_bloke_from_hull")
# project1 = Project.new("Gap Ya", user1, 900.0)
# project2 = Project.new("Fix My Teeth", user2, 1000.0)
# project3 = Project.new("Nail Clippings Exhibition", user3, 20000.00)
# pledge1 = Pledge.new(project2, user1, 10.0)
# pledge2 = Pledge.new(project1, user2, 200.0)
# pledge3 = Pledge.new(project1, user1, 50.0)
# pledge4 = Pledge.new(project2, user1, 70.0)
# pledge5 = Pledge.new(project2, user1, 1000.0)

# gym
# location1 = Location.new("Dublin")
# location2 = Location.new("Cardiff")
# location3 = Location.new("Liverpool")
# client1 = Client.new("Jay Johnson")
# client2 = Client.new("Anthony Sunderland")
# client3 = Client.new("Liam Glover")
# client4 = Client.new("Daniel Woodhouse")
# client5 = Client.new("Steve Crossley")
# trainer1 = Trainer.new("trainer1", location1, client1)
# trainer2 = Trainer.new("trainer2", location2, client2)
# trainer3 = Trainer.new("trainer2", location2, client3)
# trainer4 = Trainer.new("trainer2", location2, client4)

# IMDB
# a1 = Actor.new("Ian Mckellen")
# a2 = Actor.new("Orlando Bloom")
# a3 = Actor.new("Viggo Mortensen")
# a4 = Actor.new("Elijah Wood")
# a5 = Actor.new("Christopher Lee")
# a6 = Actor.new("Sean Bean")
#
# c1 = Character.new("Gandalf", a1)
# c2 = Character.new("Legolas", a2)
# c3 = Character.new("Aragorn", a3)
# c4 = Character.new("Frodo", a4)
# c5 = Character.new("Saruman", a5)
# c6 = Character.new("Boromir", a6)
# c7 = Character.new("Ned Stark", a6)
# c8 = Character.new("Dracula", a5)
# c9 = Character.new("Will Turner", a2)
#
# mov1 = Movie.new("Lord Of The Rings", [c1, c2, c3, c4, c5, c6])
# mov2 = Movie.new("The Hobbit", [c1, c2])
# mov3 = Movie.new("Pirates Of The Carribbean", c9)
# tv1 = Show.new("Game Of Thrones", [c7])
# tv2 = Show.new("Vampire Horror Show", [c8])
p1 = Passenger.new("p1")
p2 = Passenger.new("p2")
p3 = Passenger.new("p3")
p4 = Passenger.new("p4")
d1 = Driver.new("John")
d2 = Driver.new("Jack")
d3 = Driver.new("Jim")
d4 = Driver.new("Bob")
ride1 = Ride.new(d1, p1, 4.0)
ride2 = Ride.new(d2, p1, 2.0)
ride3 = Ride.new(d1, p4, 40.5)
ride4 = Ride.new(d3, p2, 10.5)
ride5 = Ride.new(d4, p3, 15.0)
ride6 = Ride.new(d3, p4, 60.5)

binding.pry
