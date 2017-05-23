class Tweet
  @@all = []
 attr_accessor :user, :tweet
  def initialize(user,tweet)
    @user = user
    @tweet = tweet
    @@all << self
  end
  def self.all
    @@all
  end
end

class User
  attr_accessor :username, :location, :email
  def initialize(username, location, email)
    @username = username
    @location = location
    @email = email
  end

  def create_tweet tweet
     Tweet.new(self,tweet)
  end

  def tweets
    Tweet.all.select {|tweet| self == tweet.user}
  end

end

user1 = User.new("toneloke", "Compton", "tony@flatironschool.com")
