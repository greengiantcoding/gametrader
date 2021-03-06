class User < ActiveRecord::Base
	has_many :games
	has_many :forums
	has_many :ratings

	has_secure_password
	validates :email, presence: true, uniqueness: { case_sensitive: false}
	validates :first_name, :last_name, presence: true
	validates_length_of :first_name, :last_name, minimum: 2
	validates_length_of :password, minimum: 5
end
