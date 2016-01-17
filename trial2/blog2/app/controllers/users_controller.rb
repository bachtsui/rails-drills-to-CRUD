class UsersController < ApplicationController
	
	def index
		@users = User.all
		render :index
	end

	def new
	end

	def create
		user = User.new(user_params)
		#Not an instance variable?
		if user.save
			session[:user_id] = user.id 
			redirect_to "/"
		else
			redirect_to '/signup'
			#can also do new_users_path
		end
	end

	private

		def user_params
			params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation)
			#:password and :password_confirmation doesn't exist yet I don't think
		end
end
