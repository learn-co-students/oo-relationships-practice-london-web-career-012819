class Guest

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def create_trip(listing, date)
    Trip.new(listing, self, date)
  end

  def trips
    Trip.all.select {|x| x.guest == self}
  end

  def listings
    trips.map {|x| x.listing}
  end

  def trip_count
    trips.count
  end

  def self.pro_traveller
    all.select {|x| x.trip_count > 1}
  end

  def self.find_all_by_name(name)
    all.select {|x| x.name == name}
  end

  def self.all
    @@all
  end

end
