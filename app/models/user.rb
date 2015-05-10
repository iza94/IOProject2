class User < ActiveRecord::Base
	# require File.join UserAuthentication::Engine.config.root, 'app/models/account.rb'
	has_one :snackWall
	has_one :chunkWall
	has_one :blog
	has_one :cockpit
	has_one :friend
	has_one_and_belongs_to :profile
	has_one :secret
end
