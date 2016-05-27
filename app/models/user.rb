class User < ActiveRecord::Base
	has_secure_password
	has_many :books
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :name,  presence: true, length: {maximum: 30}
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
    validates :password, presence: true
    validates :password_confirmation, presence: true	
end
