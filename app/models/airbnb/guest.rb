class Guest

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    # - .all
    #   - returns an array of all guests
    @@all
  end

  def listings
    # - #listings
    #   - returns an array of all listings a guest has stayed at
    Trip.all.select { |trip| trip.guest == self  }
  end

  def trips
    # - #trips
    #   - returns an array of all trips a guest has made
    # Trip.all.select { |trip| trip.guest == self }
    listings.map {|trip| trip.listing }

  end

  def trip_count
    # - #trip_count
    #   - returns the number of trips a guest has taken
    trips.length
  end

  def self.pro_traveller
    # - .pro_traveller
    #   - returns an array of all guests who have made over 1 trip
    self.all.select { |guest| guest if guest.trip_count > 1 }
  end

  def self.find_all_by_name(name)
    # - .find_all_by_name(name)
    #   - takes an argument of a name (as a string), returns the all guests with that name
    self.all.select { |guest| guest.name == name }
  end

end
