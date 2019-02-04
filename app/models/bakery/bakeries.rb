require 'pry'

require_relative ("desserts.rb")
require_relative ("ingredients.rb")


class Bakery

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def create_dessert(name, ingredients)
    Dessert.new(name, ingredients, self)
  end

  def desserts
    Dessert.all.select {|x| x.bakery == self}
  end

  def ingredients
    desserts.map {|x| x.ingredients}.flatten
  end

  def shopping_list
    ingredients.join(" ")
  end

  def average_calories
    desserts.sum {|x| x.calories}/desserts.count
  end

  def self.all
    @@all
  end

end
