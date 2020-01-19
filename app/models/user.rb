class User < ApplicationRecord
	has_many :books
	validates :name, :presence => true, length: {maximum:25, minimum:3}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, :presence => true, format: {with: VALID_EMAIL_REGEX}, uniqueness: true
	validates :password, length: {maximum:25, minimum:3 }
	has_secure_password
	def User.new_remember_token
 SecureRandom.urlsafe_base64
end

# Returns the hash digest of the given string.
def User.digest(string)
 cost = ActiveModel::SecurePassword.min_cost ?
BCrypt::Engine::MIN_COST :

BCrypt::Engine.cost
 BCrypt::Password.create(string, cost: cost)
end
private
def create_remember_token
 self.remember_token =
User.digest(User.new_remember_token)
end
end

