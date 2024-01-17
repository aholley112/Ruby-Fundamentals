require "bcrypt"

class User
  attr_accessor :username, :password

  @@users = []
  def initialize(username, password)
    @username = username
    @password = BCrypt::Password.create(password)
    @@users << self
  end

  def self.authenticate(username, password)
    user = User.find_by_username(username)

    if user && BCrypt::Password.new(user.password) == password
      return user
    else
      return nil
    end
  end
