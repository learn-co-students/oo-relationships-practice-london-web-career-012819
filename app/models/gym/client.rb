class Client

  attr_reader :name, :trainer

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # def assign_trainer(trainer)
  #   Trainer.all.select do |trainer|
  #     trainer.location
  # end


  def assign_trainer(trainer, location)
    Trainer.new(trainer, location, self)
  end
end
