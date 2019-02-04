class Dessert

  attr_reader :name, :ingredients, :bakery

  @@all = []

  def initialize(name, ingredients, bakery)
    @name = name
    @ingredients = ingredients
    @bakery = bakery
    @ingredients.each {|x| Ingredient.new(x, self, rand(200), bakery)}

    @@all << self
  end

  def calories
    Ingredient.all.map {|x| x.calories if x.dessert == self}.compact.reduce(:+)
  end

  def self.all
    @@all
  end

end
