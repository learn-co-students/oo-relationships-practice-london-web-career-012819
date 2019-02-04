class Show

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

end
