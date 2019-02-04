class Trip

  attr_reader :listing, :guest, :date

  @@all = []

  def initialize(listing, guest, date)
    @listing = listing
    @guest = guest
    @date = date
    @@all << self
  end
  # 
  # def guest
  #   @guest
  # end

  def self.all
    @@all
  end

end
