class Driver

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select { |ride| ride.driver == self }
  end

  def passengers
    rides.map { |ride| ride.passenger }
  end

  def self.mileage_cap(dist)
    Ride.all.select { |ride| ride.distance > dist }
  end

end



# a driver has many rides
# - #passengers
#   - returns all passengers a driver has had
# - #rides
#   - returns all rides a driver has made
# - .all
#   - returns an array of all drivers
# - .mileage_cap(distance)
#   - takes an argument of a distance (float) and returns all drivers who have exceeded that mileage
