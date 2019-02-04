class Ingredient

  attr_reader :name, :calories, :dessert, :bakery

  @@all = []

  def initialize(name, dessert, calories, bakery)
    @name = name
    @calories = calories
    @dessert = dessert
    @bakery = bakery

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_all_by_name(ingredient)
    all.select {|x| x.name.include?(ingredient)}
  end

end
