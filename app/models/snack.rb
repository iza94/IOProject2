class Snack < ActiveRecord::Base
	has_one_and_belongs_to :SnackWall
end
