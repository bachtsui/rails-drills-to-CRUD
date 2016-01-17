class UsersController < ApplicationController
	
	def index
		@users = User.all
		render :index
	end

	def new
	end

	def create
	end
	
end
