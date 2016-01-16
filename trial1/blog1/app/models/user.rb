class User < ActiveRecord::Base
	has_many :articles #important to use plural here
end
