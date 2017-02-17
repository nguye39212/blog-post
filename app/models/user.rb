class User < ApplicationRecord
	has_many :posts
	has_many :comments
	has_secure_password

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, uniqueness: true
	

end
