class User

  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def user_projects
    Project.all.select { |project| project.user == self }
  end

  def pledges
    Pledge.all.select { |pledge| pledge.pledger == self }
  end

  def num_of_pledges
    pledges.length
  end

  def multi_pledger
    num_of_pledges > 1
  end

  def self.project_creator
    Project.all.map { |project| project.user }
  end

  def self.multi_pledger
    all.select { |user| user.multi_pledger }
  end

  def self.highest_pledge
    Pledge.all.max_by { |pledge| pledge.amount  }
  end

end
