class Trainer

  attr_reader :name, :location, :client

  @@all = []

  def initialize(name, location, client)
    @name = name
    @location = location
    @client = client
    @@all << self
  end

  def self.all
    @@all
  end

  def all_clients
    Trainer.all.select { |trainer| trainer.name == self.name }
  end

  def client_amount
    all_clients.length
  end

  def self.most_clients
    Trainer.all.max_by { |trainer| trainer.client_amount }
  end

  def self.least_clients
    Trainer.all.min_by { |trainer| trainer.client_amount }
  end

end
