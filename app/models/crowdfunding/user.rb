class User

  attr_reader

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

end
