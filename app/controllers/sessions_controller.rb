class SessionsController < ApplicationController
	def index
		if @user
			if @user.privilege == 'administrator'
				redirect_to profiles_path
			else
				redirect_to '/' + params[:locale] + '/'
			end
		end
	end

	def create
		@user = User.check_user(params[:username], params[:password])
		if @user
			session[:user_id] = @user.id
			redirect_to '/' + params[:locale] + '/'
		else
			flash[:status] = false
			flash[:message] = "Pogresno korisnicko ime ili lozinka"
			redirect_to sessions_path
		end
	end

	def destroy
		session[:user_id] = nil
		session[:username] = nil
		redirect_to login_path
	end
end