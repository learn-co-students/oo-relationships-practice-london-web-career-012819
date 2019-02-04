class Project

  attr_reader :user, :pledge_goal

  @@all = []

  def initialize(user, pledge_goal)
    @user = user
    @pledge_goal = pledge_goal
    @@all << self
  end

end
