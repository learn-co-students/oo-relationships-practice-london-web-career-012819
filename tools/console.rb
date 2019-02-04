require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end





#listings
listing1 = Listing.new('Bristol')
listing2 = Listing.new('Sydney')
listing3 = Listing.new('Glasgow')


#guests
daniel = Guest.new('Daniel')
sarah = Guest.new('Sarah')
sam = Guest.new('Sam')

#trips
trip1 = Trip.new(daniel, listing1)
trip2 = Trip.new(daniel, listing2)
trip3 = Trip.new(sarah, listing3)
trip4 = Trip.new(sam, listing1)


# p1 = Guest.new("p1")
# l1 = Listing.new("London")
# t1 = Trip.new(p1, l1)

Pry.start
