class Show

  attr_reader :name, :characters

  @@all = []

  def initialize(name, characters)
    @name = name
    @characters = characters

    @@all << self
  end

  def on_the_big_screen
    Movie.all.find {|x| x.name == @name}?true:false
  end

  def self.on_the_big_screen
    all.select {|x| x.on_the_big_screen}
  end

  def self.all
    @@all
  end

end
