class AccountsController < ApplicationController
  respond_to :json
  #Da se izbjegne invalid authenticity token
  protect_from_forgery :only => [:login]
  def login
    @user = User.find_by(username: params['username'])
    if !@user
      render :json => 'Pogresan username'
    else
      if params[:password] == @user.password
        render :json => 'Uspjesna prijava'
      else
        render :json => 'Pogresan password' 
      end
    end
  end

  def logout
  end

  def register
    @user = User.find_by(username: params['username'])
    if !@user
        @user = User.create(:username => params['username'], :password => params['password'], :name => params['name'], :family_name => params['family_name'], :email => params['email'], :privilege_id => params['privilege_id'], :account_activated => false, :activation_code => "generisani rendom kod")
        @user.save
        render :json => 'Uspjesna registracija'
    else
      render :json => 'Vec postoji korisnik s korisnickim imenom'  
    end
  end

  def activate_account
  end

  def reset_password
  end
end
