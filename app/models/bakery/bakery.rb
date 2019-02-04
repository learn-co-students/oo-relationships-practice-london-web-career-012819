class Bakery

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def desserts
      Dessert.all.select { |dessert| dessert.bakery == self }
  end

  def ingredients
    all_ingredients = []
    desserts.each do |dessert|
      dessert.ingredients.each do |ingredient|
        all_ingredients << ingredient
      end
    end
    all_ingredients
  end

  def shopping_list
    ingredient_names = ingredients.map { |ingredient| ingredient.name }
    ingredient_names.join(", ")
  end

  def average_calories
      total_calories = ingredients.sum do |ingredient|
        ingredient.calories
      end
      total_calories/self.ingredients.length
  end

end
