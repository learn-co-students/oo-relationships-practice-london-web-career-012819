class Actor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def characters
    Character.all.select { |character| character.actor == self }
  end

  # def movies
  #   Movie

end
