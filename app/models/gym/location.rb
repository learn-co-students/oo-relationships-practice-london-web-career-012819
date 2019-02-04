class Location

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def locations_clients

  end

  def self.least_clients
    Trainer.least_clients.location
  end
end
