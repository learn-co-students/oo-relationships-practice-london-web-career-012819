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

b1 = Bakery.new("Stu Bakes")
b2 = Bakery.new("Suzie Cupcakes")

d1 = b1.create_dessert("Toffe Apple", ["toffee", "apples"])
d2 = b1.create_dessert("Choc Cheesecake", ["choc", "cheese", "biscuits", "butter"])
d3 = b2.create_dessert("Choc Cupcake", ["choc", "flour", "sugar"])



Pry.start
