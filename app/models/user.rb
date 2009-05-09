require 'digest/sha1'

class User < ActiveRecord::Base
 
  has_many :posts, :dependent => :destroy
  has_many :post_comments, :dependent => :destroy

  validates_presence_of :username, :email, :case_sensitive => false
  validates_presence_of :ip
  validates_uniqueness_of :username, :email, :case_sensitive => false
  validates_length_of :username, :minimum => 2
  validates_length_of :username, :maximum => 26

  validates_format_of :email, 
		      :with => /^([A-Za-z0-9]|\_)+\@[A-Za-z0-9]+\.[a-zA-Z]+$/

  attr_accessor :password_confirmation
  attr_accessor :password

  validates_confirmation_of :password
  
  def self.authenticate(username, password)
    user = self.find_by_username(username)
    if user
      expected_password = encrypted_password(password, user.salt)
      if user.hashed_password != expected_password
        user = nil
      end
    end
    user
  end

  def password
    @password
  end

  def password=(pwd)
    @password = pwd
    return if pwd.blank?
    create_new_salt
    self.hashed_password = User.encrypted_password(self.password, self.salt)
  end

  def validate
    errors.add_to_base("Missing Password") if hashed_password.blank?
  end

private

  def self.encrypted_password(password, salt)
    string_to_hash = password + salt
    Digest::SHA1.hexdigest(string_to_hash)
  end

  def create_new_salt
    self.salt = self.object_id.to_s + rand.to_s
  end

end
