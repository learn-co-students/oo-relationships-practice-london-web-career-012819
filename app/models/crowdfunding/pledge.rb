class Pledge

  attr_reader :project, :user

  @@all = []

  def initialize(project, user)
    @project = project
    @user = user
    @@all << self
  end

end
