class UsersController < ApplicationController

	def index
		@users = User.all
		render :index
		#I know we'll will eventually want to do
		# something different with index
		# as showing a list of users is not good
		# but running tests for now
	end

	def new
		@user= User.new
		render :new 
	end

	def create
		user_params = params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation)
		user = User.new(user_params)
		if user.save
			session[:user_id] = user.id
			redirect_to users_path
		else
			redirect_to new_user_path
		end
	end

end
