require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# g1 = Guest.new("Sammy")
# g2 = Guest.new("Danny")
# g3 = Guest.new("Sonny")
#
# l1 = Listing.new("Casa del Suzie", "Valencia")
# l2 = Listing.new("Hotel Stu", "London")
# l3 = Listing.new("L'otel Bee", "Paris")
#
# g1.create_trip(l1, "20/02/2019")
# g2.create_trip(l1, "20/02/2019")
# g1.create_trip(l2, "20/02/2019")
# g1.create_trip(l2, "20/02/2019")
# g2.create_trip(l1, "20/02/2019")
#
# b1 = Bakery.new("Stu Bakes")
# b2 = Bakery.new("Suzie Cupcakes")
#
# d1 = b1.create_dessert("Toffe Apple", ["toffee", "apples"])
# d2 = b1.create_dessert("Choc Cheesecake", ["choc", "cheese", "biscuits", "butter"])
# d3 = b2.create_dessert("Choc Cupcake", ["choc", "flour", "sugar"])

a1 = Actor.new("Ben Stiller")
a2 = Actor.new("Bruce Willis")
a3 = Actor.new("Chris Pratt")
a4 = Actor.new("Gary Oldman")

c1 = Character.new("Derek Zoolander", a1) #5
c2 = Character.new("White Goodman", a1) #3

c3 = Character.new("David Dunn", a2) #6
c4 = Character.new("John McClane", a2) #3

c5 = Character.new("Star-Lord", a3) #3
c6 = Character.new("Owen", a3) #
c6 = Character.new("Jim Preston", a3) #33

c7 = Character.new("Com. Gordon", a4) #3

m1 = Movie.new("Avengers", [c1,c3,c5,c7])
m2 = Movie.new("Revengers", [c1,c3])
m3 = Movie.new("Lenders", [c2,c4,c6])
m4 = Movie.new("Spender", [c3,c7])
m5 = Movie.new("Mender", [c1,c2,c3,c4,c5,c6])

s1 = Show.new("Avengers", [c1,c3,c5,c7])
s2 = Show.new("Friends", [c1,c3])
s3 = Show.new("Partridges", [c2,c4,c6])

Pry.start
