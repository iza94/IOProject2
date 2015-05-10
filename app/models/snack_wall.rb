class SnackWall < ActiveRecord::Base
	has_many :snacks
	belongs_to :user
end
