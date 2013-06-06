class User < ActiveRecord::Base
  include BCrypt
  has_many :posts

  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates_uniqueness_of :email, :message => "You're already signed up."
  validates_presence_of :email, :message => "Email required."
  validates_presence_of :name, :message => "Name required."
  validates_presence_of :password, :message => "Password required."

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    return user if user && user.password == password
    return false if user == nil || user.password != password
  end 
end
