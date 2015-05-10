class Friend < ActiveRecord::Base
	has_one_and_belongs_to :user
end
