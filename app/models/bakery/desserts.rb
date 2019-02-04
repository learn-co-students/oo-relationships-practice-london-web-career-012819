class Dessert

  attr_reader :bakery, :name

  @@all = []

  def initialize(bakery, name)
    @name = name
    @bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    Ingredient.all.select { |ingredient| ingredient.dessert == self }
  end

  def calories
    self.ingredients.sum { |ingredient| ingredient.calories }
  end


end
