class AccountsController < ApplicationController
  respond_to :json
  #Da se izbjegne invalid authenticity token
  protect_from_forgery :only => [:login]
  def index
  end

  def new
  end

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
    @user = nil
  end

  def register
    @user = User.find_by(username: params['username'])
    if !@user
      if(params['role']=='tutor')
        @user = User.create(:username => params['username'], :password => params['password'], :name => params['name'], :familyName => params['familyName'], :email => params['email'], :privilege_id => 1)
        @tutor = Tutor.new(:user_id => @user.id, :name => params['name'], :familyName => params['familyName'])
        render :json => 'Uspjesna registracija'
      elsif(params['role']=='member')
        @user = User.create(params['username'], params['password'], params['name'], params['familyName'], params['email'], 1)
        @member = Member.new(:user_id => @user.id, :name => params['name'], :familyName => params['familyName'])
        render :json => 'Uspjesna registracija'
      else
        render  :json => 'Neuspjesna registracija'
      end
    else
      render :json => 'Vec postoji korisnik s korisnickim imenom'  
    end
  end

  def reset_password
  end
end
