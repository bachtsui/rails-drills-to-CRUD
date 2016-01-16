class UsersController < ApplicationController

	def index
		@users = User.all

		render :index
		#I know we'll will eventually want to do
		# something different with index
		# as showing a list of users is not good
		# but running tests for now
	end
	
end
