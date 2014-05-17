class SessionsController < ApplicationController
	def index
		if @user
			redirect_to '/'
		end
	end

	def create
		@user = User.check_user(params[:username], params[:password])
		if @user
			session[:user_id] = @user.id
			if @user.privilege.name == 'Administrator'
				redirect_to dashboard_index_path
			else
				redirect_to '/#/home'
			end
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