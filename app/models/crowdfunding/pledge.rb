class Pledge

  attr_accessor :project, :pledger, :amount, :manager

  @@all = []

  def initialize(project, pledger, amount)
    @project = project
    @pledger = pledger
    @amount = amount
    @@all << self
  end

  def self.all
    @@all
  end

  def user
    @pledger
  end

end
