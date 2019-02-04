class Project

  attr_reader :name, :goal, :creator

  @@all = []

  def initialize(name, goal, creator)
    @name = name
    @goal = goal
    @creator = creator

    @@all << self
  end

  def pledges
    Pledge.all.select {|x| x.project == self}
  end

  def no_of_pledges
    pledges.count
  end

  def pledge_total
    pledges.sum {|x| x.amount}
  end

  def backers
    pledges.map {|x| x.user}.uniq
  end

  def self.no_pledges
    all.select {|x| x.no_of_pledges < 1}
  end

  def self.above_goal
    all.select {|x| x.pledge_total > x.goal}
  end

  def self.most_backers
    all.max_by{|x| x.backers.count}
  end

  def self.all
    @@all
  end

end
