class Ingredient

  attr_reader :dessert, :name, :calories

  @@all = []

  def initialize(dessert, name, calories)
    @dessert = dessert
    @name = name
    @calories = calories
    @@all << self
  end

  def self.all
    # - .all
    #   - should return an array of all ingredients
    @@all
  end

  def bakery
    # - #bakery
    #   - should return the bakery object for the bakery that uses that ingredient
    dessert.bakery
  end

  def self.find_all_by_name(string)
    #   - should take a string argument return an array of all ingredients that include that string in their name
    all.select { |ingredient| ingredient.name == string }
  end

end
