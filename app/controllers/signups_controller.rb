class SignupsController < ApplicationController


	def index
		if session[:user_id]
			redirect_to '/'
		end
	end

	def create
      		if !@user
        		require 'securerandom'
        		s = SecureRandom.urlsafe_base64(20) 
        		@user = User.new(:username => params['username'], :password => params['password'], :name => params['name'], :family_name => params['family_name'], :email => params['email'], :privilege_id => params['privilege_id'], :account_activated => false, :activation_code => s)
        		if @user.save
          			UserMailer.activate_account_email(@user).deliver
      			end
    		end
    		redirect_to "/"
 	end

end
