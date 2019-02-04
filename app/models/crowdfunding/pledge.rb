class Pledge

  attr_reader :project, :amount, :user

  @@all = []

  def initialize(project, amount, user)
    @project = project
    @amount = amount
    @user = user

    @@all << self
  end

  def self.all
    @@all
  end

end
