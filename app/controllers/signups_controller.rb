class SignupsController < ApplicationController


	def index
		if session[:user_id]
			redirect_to '/'
		end
	end

	def create
		@user = User.create({:username => params[:username],
			:password => Digest::MD5.hexdigest(params[:password]),
			:name => params[:first_name],
			:family_name => params[:last_name],
			:privilege_id => 3,
			:email => params[:email],
			});

		redirect_to "/"
		
   end

end
