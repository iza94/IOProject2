class Profile < ActiveRecord::Base
	has_one_and_belongs_to :user
	has_one :blog
	has_one :chunkWall, :snackWall, :cockpit
end
