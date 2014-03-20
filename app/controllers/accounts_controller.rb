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
    @user = User.find_by(id: params['user_id'])
      if !@user
        render :json => 'Ne postoji account'
      else
        if(@user.account_activated)
          render :json => 'Vec ste aktivirali account'
        elsif(@user.activation_code==params['activation_code'])
          @user.update(:account_activated => true)
          render :json => 'Uspjesno ste aktivirali account'
        else
          render :json => 'Pogresan aktivacijski kod'
        end
      end
  end

  def reset_password
  end
end
