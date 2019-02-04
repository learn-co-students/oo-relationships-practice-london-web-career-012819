class Project

  attr_accessor :user, :pledge_goal

  @@all = []

  def initialize(project_name, user, pledge_goal)
    @project_name = project_name
    @user = user
    @pledge_goal = pledge_goal
    @@all << self
  end

  def self.all
    @@all
  end

  def pledges
    Pledge.all.select { |pledge| pledge.project == self  }
  end

  def self.no_pledges
    self.all.select { |project| project.pledges.length == 0 }
  end

  def total_amount
    amount_arr = []
    pledges.each do |pledge|
      amount_arr << pledge.amount
    end
    amount_arr.sum
  end

  def self.above_goal
    all_totals = self.all.select { |project| project.total_amount >= project.pledge_goal }
    all_totals
  end

  def self.most_backers
    self.all.max_by { |project| project.pledges.length }
  end

end
