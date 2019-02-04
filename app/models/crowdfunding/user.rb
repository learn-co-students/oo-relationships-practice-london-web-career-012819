class User

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def create_project(name, goal, creator)
    Project.new(name, goal, self)
  end

  def num_pledges
    Pledge.all.select {|x| x.user == self}.count
  end

  def create_pledge(project, amount, user)
    Pledge.new(project, amount, self)
  end

  def self.highest_pledge
    Pledge.all.max_by{|x| x.amount}.user
  end

  def self.multi_pledger
    all.select {|x| x.num_pledges > 1}
  end

  def self.project_creator
    all.map do |x|
      Project.all.map {|x| x.creator}.uniq.include?(self)
    end
  end

  def self.all
    @@all
  end

end
