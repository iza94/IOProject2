class Chunk < ActiveRecord::Base
	has_one_and_belongs_to :chunkWall
end
