class Listing

  attr_reader :city, :name

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def trips
    Trip.all.select {|x| x.listing == self}
  end

  def trip_count
    trips.count
  end

  def guests
    trips.map {|x| x.guest}.uniq
  end

  def self.find_all_by_city(city)
    all.select {|x| x.city == city}
  end

  def trip_count
    Trip.all.select {|x| x.listing == self}.count
  end

  def self.most_popular
    all.max_by {|x| x.trip_count}
  end

  def self.all
    @@all
  end

end
