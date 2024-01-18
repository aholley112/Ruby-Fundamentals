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

   def self.all
    @@users
  end

  def self.find_by_username(username)
    user = all.find do |user|
      user.username == username
    end
    user
  end

  def change_password(new_password)
    @password = BCrypt::Password.create(new_password)
end
end

User.new("username", "password")
user = User.find_by_username("username") 
puts User.authenticate("username", "password")
