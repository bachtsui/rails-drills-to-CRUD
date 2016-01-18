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
			#Might need to change this redirect path later
		else
			redirect_to '/signup'
			#can also do new_users_path
		end
	end

	def show
		user_id = params[:id]
		@user = User.find_by_id(user_id)
		render :show
	end

	def edit
		user_id = params[:id]
		@user = User.find_by_id(user_id)
		render :edit
	end

	def update
		user_id = params[:id]
		user = User.find_by_id(user_id)
		user.update_attributes(user_params)
		redirect_to user_path(user)
		#Doesn't seem to update password
	end

	def destroy
		user_id = params[:id]
		user = User.find_by_id(user_id)
		user.destroy
		redirect_to users_path
	end

	private

		def user_params
			params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation)
			#:password and :password_confirmation doesn't exist yet I don't think
		end
end
