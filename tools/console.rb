require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

g1 = Guest.new("Sammy")
g2 = Guest.new("Danny")
g3 = Guest.new("Sonny")

l1 = Listing.new("Casa del Suzie", "Valencia")
l2 = Listing.new("Hotel Stu", "London")
l3 = Listing.new("L'otel Bee", "Paris")

g1.create_trip(l1, "20/02/2019")
g2.create_trip(l1, "20/02/2019")
g1.create_trip(l2, "20/02/2019")
g1.create_trip(l2, "20/02/2019")
g2.create_trip(l1, "20/02/2019")

Pry.start
