class ChunkWall < ActiveRecord::Base
	has_many :chunks
	has_one_and_belongs_to :user
end
