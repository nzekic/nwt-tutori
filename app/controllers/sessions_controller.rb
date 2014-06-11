class SessionsController < ApplicationController
	skip_before_filter  :verify_authenticity_token
	def index
		if @user
			redirect_to '/home#/home'
		end
	end

	def create
		@user = User.check_user(params[:username], params[:password])
		if @user
			session[:user_id] = @user.id
			session[:username] = @user.username
			session[:privilege_id] = @user.privilege_id
			if @user.privilege.name == 'Administrator'
				redirect_to dashboard_index_path
			else
				render :json => session
			end
		else
			session = nil
			render :json => session
		end
	end

	def destroy
		session[:user_id] = nil
		session[:username] = nil
		session[:privilege_id] = nil
		redirect_to login_path
	end
end