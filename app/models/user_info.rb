class UserInfo < ActiveRecord::Base
	belongs_to :user

	include ActiveModel::Validations
	validates :firstname, format: { with: /[a-zA-Z0-9]/}
	validates :lastname, format: { with: /[a-zA-Z0-9]/}

end
