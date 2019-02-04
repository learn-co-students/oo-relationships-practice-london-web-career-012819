class Ride

  attr_reader :driver, :passenger, :distance

  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    distances = all.map { |ride| ride.distance }
    distances.sum/distances.length
  end

end

# a ride belongs to a passenger and driver (journey)
# - #passenger
#   - returns the passenger object for that ride
# - #driver
#   - returns the driver object for that ride
# - .average_distance
#   - should find the average distance of all rides
