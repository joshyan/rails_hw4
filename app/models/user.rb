class User < ActiveRecord::Base
	has_one :user_info
	belongs_to :user_role
	has_many :posts

	include ActiveModel::Validations

	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
	validates :password, length: { minimum: 6 }
end
