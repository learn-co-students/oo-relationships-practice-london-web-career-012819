class Trip

  attr_reader :guest, :listing

  @@all = []

  def initialize(guest, listing)
    @guest = guest
    @listing = listing
    @@all << self
  end

  def self.all
    # - .all
    #   - returns an array of all trips
    @@all
  end

  def listing
    # - #listing
    #   - returns the listing object for the trip
    @listing
  end

  def guest
    # - #guest
    #   - returns the guest object for the trip
    @guest
  end

end
