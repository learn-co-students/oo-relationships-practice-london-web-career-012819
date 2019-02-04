class Listing

  attr_reader :city

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    # - .all
    #   - returns an array of all listings
    @@all
  end

  def trips
    # - #trips
    #   - returns an array of all trips at a listing
    Trip.all.select { |trip| trip.listing == self }
  end

  def guests
    # - #guests
    #   - returns an array of all guests who have stayed at a listing
    trips.map { |instance| instance.guest.name }
  end
  def trip_count
    # - #trip_count
    #   - returns the number of trips that have been taken to that listing
    trips.length
  end

  def self.find_all_by_city(city)
    # - .find_all_by_city(city)
    #   - takes an argument of a city name (as a string) and returns all the listings for that city
    all.select { |listing| listing.city == city }
  end

  def self.most_popular
    # - .most_popular
    #   - finds the listing that has had the most trips
    arr = self.all.map.sort { |listing| listing.trip_count }.reverse
    arr[0].city
  end

end
