class SignupsController < ApplicationController
skip_before_filter :verify_authenticity_token

	def index
		if session[:user_id]
			redirect_to '/'+params[:locale]+'/'
		end
	end

	def create
        if(params['confirmation_password']==params['password'])
      		if !@user
        		require 'securerandom'
        		s = SecureRandom.urlsafe_base64(20) 
        		@user = User.new(:username => params['username'], :password => Digest::MD5.hexdigest(params['password']), :name => params['first_name'], :family_name => params['last_name'], :email => params['email'], :privilege_id => params['privilege'], :account_activated => false, :activation_code => s)
        		@user.valid? #ensures we see all errors on the model in the view if the captcha fails
              if @user.save #verify_recaptcha(:user => @user, :message => "Please enter the correct captcha!") && @user.save 
          			UserMailer.activate_account_email(@user).deliver
                if params[:locale]
                  redirect_to '/'+params[:locale] + '/'
                else 
                  redirect_to '/'
                end
              else 
                if params[:locale]
                  redirect_to '/'+params[:locale] + '/signups'
                else
                  redirect_to '/'
                end
              end
          end
    		else
          
        end
 	end

end
