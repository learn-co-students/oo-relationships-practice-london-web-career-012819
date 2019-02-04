class Movie

  attr_reader :title, :characters

  @@all = []

  def initialize(title, characters)
    @title = title
    @characters = characters
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_actors
    all.max_by { |mov| mov.characters }
  end

end
