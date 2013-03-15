class Administrator < ActiveRecord::Base
  attr_accessible :username,  :password, :password_confirmation 
  validates_presence_of :username
  validates_confirmation_of :password, :message => "两次密码不一致" 

  def password
    @password
  end
  def password=(password)
    return unless password
    @password = password
    generate_password(password)
  end
  def self.authenticate(user,pwd)
    user = User.find_by_username(user)
    if user && Digest::SHA256.hexdigest(user.salt + pwd)==
        user.hashed_password
      return user
    end
    false
  end
  
  def self.register(args)
    return if User.find_by_username(args[:user][:username]) 
    user = User.create(args[:user])
    user.save!
    user
  end
    
  private
  def generate_password(pass)
    salt = Array.new(10) { rand(512).to_s(36) }.join
    self.salt, self.hashed_password =
      salt, Digest::SHA256.hexdigest(salt+pass)
  end  
end
