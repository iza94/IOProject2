class Secret < ActiveRecord::Base
	has_one_and_belongs_to :cockpit
end
