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
        		@user = User.new(:username => params['username'], :password => Digest::MD5.hexdigest(params['password']), :name => params['first_name'], :family_name => params['last_name'], :email => params['email'], :privilege_id => params['privilege_id'], :account_activated => false, :activation_code => s)
        		@user.valid? #ensures we see all errors on the model in the view if the captcha fails
              if verify_recaptcha(:user => @user, :message => "Please enter the correct captcha!") && @user.save 
          			UserMailer.activate_account_email(@user).deliver
                redirect_to "/"
              else 
                redirect_to "/signups"
              end
    		  end
 	end

end
