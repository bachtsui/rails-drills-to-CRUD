class User < ActiveRecord::Base
	has_many :articles #important to use plural here

	has_secure_password
end
